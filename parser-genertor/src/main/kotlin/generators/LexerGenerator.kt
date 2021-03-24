package generators

import graph.GToken
import read

fun generateLexer(tokens: MutableList<GToken>) : String {
    val path = "./src/main/resources/LexerTemplate.py"
    val template = read(path)
    val pyRules = tokens.joinToString(separator = ", ") { "'" + it.name + "' : " + it.regex }
    return template.replace("rules = {}", "rules = {$pyRules}")
}