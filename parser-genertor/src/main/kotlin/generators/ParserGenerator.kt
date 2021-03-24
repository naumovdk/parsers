package generators

import graph.Branch
import graph.GRule
import graph.Graph
import read

const val nl = "\n"
const val t = "    "

fun generateParser(graph: Graph): String {
    val path = "./src/main/resources/ParserTemplate.py"
    val template = read(path)

    return template + addTabsEverywhere(pyFunctions(graph))
}

fun addTabsEverywhere(s: String): String {
    return t + s.replace(nl, nl + t)
}

fun pyFunctions(graph: Graph): String {
    val rules = graph.rules.keys.filter { it.name !in graph.terminals.map { t -> t.name } }
    return rules.joinToString(separator = nl + nl) { pyFunction(graph, it) }
}

fun pyFunction(graph: Graph, rule: GRule): String {
    return """
def ${rule.name}${rule.arg ?: "(self)"}:
    res = {"name": "${rule.name}", "children": []}
    ${rule.code ?: ""}
    ${pyIfs(graph, rule)}
    raise Exception(str(self.token))
"""
}

fun pyFirst(graph: Graph, branch: Branch): String {
    return graph.buildCompleteFirst(branch).joinToString(
        prefix = "[",
        postfix = "]",
        separator = ", "
    ) { '"' + it.name + '"' }
}

fun pyIfs(graph: Graph, rule: GRule): String {
    return graph.rules[rule]!!.sortedBy { if ("eps" in it.map { r -> r.name }) 1 else 0 }.joinToString(separator = nl + t) { pyIf(graph, branch = it) }
}

fun pyIf(graph: Graph, branch: Branch): String {
    return "if self.token.type in ${pyFirst(graph, branch)}:" + branch.filter { it.name != "eps" }.joinToString(
        prefix = nl + t + t,
        separator = nl + t + t,
        postfix = nl + t + t + "return res"
    ) {
        (if (!graph.isTerminal(it)) "res['children'].append(self.${it.name}${it.arg ?: "()"})" else "assert self.token.type == '${it.name}'") +
                nl + t + t +
                (it.code ?: "") +
                nl + t + t +
                (if (!graph.isTerminal(it)) "" else "self.nextToken()")
    }
}