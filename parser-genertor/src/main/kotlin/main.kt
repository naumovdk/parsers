import antlr.InputLexer
import antlr.InputParser
import generators.generateLexer
import generators.generateParser
import graph.GRule
import graph.Graph
import org.antlr.v4.runtime.CharStreams
import org.antlr.v4.runtime.CommonTokenStream

fun main(args: Array<String>) {
    val calculator = "./src/test/calculator.in"
    val python = "./src/test/python.in"
    val leftRecursion = "./src/test/left-recursion"
    val rightBranching = "./src/test/right-branching.in"

    val input = read(python)
    val stream = CharStreams.fromString(input)
    val lexer = InputLexer(stream)
    val tokens = CommonTokenStream(lexer)
    val parser = InputParser(tokens)
    parser.parse()

    println(parser.tokens)
    parser.rules.forEach {
        println(it)
    }

    write("./generated/Lexer.py", generateLexer(parser.tokens))

    val graph = Graph(parser.tokens, parser.rules)
    println("FIRST")
    graph.first.forEach {
        println(it.key.name + " -> " + it.value.joinToString(separator = ", ") { token -> token.name })
    }
    println("FOLLOW")
    graph.follow.forEach {
        println(it.key.name + " -> " + it.value.joinToString(separator = ", ") { token -> token.name })
    }


    write("./generated/Parser.py", generateParser(graph))


    print(graph.isLL1())
}
