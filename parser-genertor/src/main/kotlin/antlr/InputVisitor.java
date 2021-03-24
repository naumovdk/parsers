// Generated from C:/Users/Mi/Desktop/git/parsers/parser-genertor/src/main/kotlin\Input.g4 by ANTLR 4.9.1

package antlr;
import graph.GToken;
import graph.GRule;
import java.util.*;

import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link InputParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface InputVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link InputParser#parse}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParse(InputParser.ParseContext ctx);
	/**
	 * Visit a parse tree produced by {@link InputParser#tokens}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTokens(InputParser.TokensContext ctx);
	/**
	 * Visit a parse tree produced by {@link InputParser#token}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitToken(InputParser.TokenContext ctx);
	/**
	 * Visit a parse tree produced by {@link InputParser#rules}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRules(InputParser.RulesContext ctx);
	/**
	 * Visit a parse tree produced by {@link InputParser#declaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclaration(InputParser.DeclarationContext ctx);
	/**
	 * Visit a parse tree produced by {@link InputParser#branch}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBranch(InputParser.BranchContext ctx);
	/**
	 * Visit a parse tree produced by {@link InputParser#application}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitApplication(InputParser.ApplicationContext ctx);
}