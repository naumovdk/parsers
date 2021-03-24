package graph

data class GToken(val name: String, val regex: String) {
    fun shouldSkip(): Boolean {
        return name == "skip"
    }

    fun isEps(): Boolean {
        return name == "eps"
    }
}