package graph


class Graph(tokens: MutableList<GToken>, rules: MutableMap<GRule, MutableList<MutableList<GRule>>>) {
    private val eps = GToken("eps", "")
    private val end = GToken("end", "")
    private val main = GRule("main", "", "")
    val terminals = HashSet(tokens)
    val rules: Map<GRule, HashSet<Branch>> = rules.mapValues { it.value.map { list -> list as Branch }.toCollection(HashSet()) }
    var first: Map<GRule, HashSet<GToken>> = buildFirst()
    var follow: Map<GRule, HashSet<GToken>> = buildFollow()

    fun buildCompleteFirst(branch: Branch): HashSet<GToken> {
        val res = firstOfSome(branch)
        if (eps in res) {
            res.addAll(follow[branch.last()]!!)
        }
        return res
    }

    private fun asTerminal(rule: GRule): GToken? {
        return terminals.find { rule.name == it.name }
    }

    fun isTerminal(rule: GRule): Boolean {
        return asTerminal(rule) != null
    }

    private fun buildFirst(): Map<GRule, HashSet<GToken>> {
        val first = HashMap<GRule, HashSet<GToken>>()
        rules.keys.forEach {
            first[it] = HashSet()
        }
        rules.values.forEach { branch ->
            branch.forEach { list ->
                list.forEach {
                    val x = asTerminal(it)
                    if (x != null) {
                        first[it] = hashSetOf(x)
                    } else {
                        first[it] = HashSet()
                    }
                }
            }
        }
        terminals.add(eps)
        do {
            var changes = false
            rules.forEach { (key, value) ->
                value.forEach { branch ->
                    for (node in branch) {
                        val cur = first[key]!!
                        val oldSize = cur.size
                        terminals.find { node.name == it.name }?.let {
                            cur.add(it)
                        }
                        cur.addAll(first[node]!!)
                        val newSize = cur.size
                        if (oldSize != newSize) {
                            changes = true
                        }
                        if (eps !in first[node]!!) {
                            break
                        }
                    }
                }
            }
        } while (changes)
        return first
    }

    private fun buildFollow(): Map<GRule, HashSet<GToken>> {
        terminals.add(end)
        val follow = rules.mapValues { HashSet<GToken>() }.toMutableMap()
        follow[main]!!.add(end)
        do {
            var changes = false
            rules.forEach { (A, value) ->
                value.forEach { branch ->
                    for (i in 0 until branch.size) {
                        val B = branch[i]
                        val gamma = branch.subList(i + 1, branch.size)
                        val cur = follow.getOrDefault(B, HashSet())
                        val oldSize = cur.size
                        cur.addAll(firstOfSome(gamma) subtract setOf(eps))
                        if (eps in firstOfSome(gamma)) {
                            cur.addAll(follow[A]!!)
                        }
                        val newSize = cur.size
                        if (oldSize != newSize) {
                            changes = true
                        }
                        follow[B] = cur
                    }
                }
            }
        } while (changes)
        return follow
    }

    private fun firstOfSome(list: List<GRule>): HashSet<GToken> { // епсилон будет только если был во всех
        val res = HashSet<GToken>()
        for (l in list) {
            var cur = first.getOrDefault(l, HashSet())
            val asTerminal = terminals.find { l.name == it.name }
            if (asTerminal != null) {
                cur = hashSetOf(asTerminal)
            }
            res.addAll(cur)
            if (eps !in cur) {
                res.remove(eps) // вот
                break
            }
        }
        return if (list.isNotEmpty()) res else hashSetOf(eps) // это демид сказал я не верю
    }

    fun containsEps(set: HashSet<GToken>): Boolean {
        return eps in set
    }


    fun isLL1(): Boolean {
        val nonTerminals = rules.keys.filter { !isTerminal(it) }
        nonTerminals.forEach { rule ->
            rules[rule]!!.forEach { branch1 ->
                rules[rule]!!.forEach { branch2 ->
                    if (branch1 != branch2) {
                        if ((firstOfSome(branch1) intersect firstOfSome(branch2)).isNotEmpty()) {
                            return false
                        }
                        if (eps in firstOfSome(branch1)) {
                            if ((follow[rule]!! intersect firstOfSome(branch2)).isNotEmpty()) {
                                return false
                            }
                        }
                    }
                }
            }
        }
        return true
    }

    private fun followOfSome(branch: ArrayList<GRule>): HashSet<GToken> {
        return follow[branch.last()]!!
    }
}

typealias Branch = ArrayList<GRule>
