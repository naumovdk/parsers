// Generated from C:/Users/Mi/Desktop/git/parsers/parser-genertor/src/main/kotlin\Input.g4 by ANTLR 4.9.1

package antlr;
import graph.GToken;
import graph.GRule;
import java.util.*;

import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link InputParser}.
 */
public interface InputListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link InputParser#parse}.
	 * @param ctx the parse tree
	 */
	void enterParse(InputParser.ParseContext ctx);
	/**
	 * Exit a parse tree produced by {@link InputParser#parse}.
	 * @param ctx the parse tree
	 */
	void exitParse(InputParser.ParseContext ctx);
	/**
	 * Enter a parse tree produced by {@link InputParser#tokens}.
	 * @param ctx the parse tree
	 */
	void enterTokens(InputParser.TokensContext ctx);
	/**
	 * Exit a parse tree produced by {@link InputParser#tokens}.
	 * @param ctx the parse tree
	 */
	void exitTokens(InputParser.TokensContext ctx);
	/**
	 * Enter a parse tree produced by {@link InputParser#token}.
	 * @param ctx the parse tree
	 */
	void enterToken(InputParser.TokenContext ctx);
	/**
	 * Exit a parse tree produced by {@link InputParser#token}.
	 * @param ctx the parse tree
	 */
	void exitToken(InputParser.TokenContext ctx);
	/**
	 * Enter a parse tree produced by {@link InputParser#rules}.
	 * @param ctx the parse tree
	 */
	void enterRules(InputParser.RulesContext ctx);
	/**
	 * Exit a parse tree produced by {@link InputParser#rules}.
	 * @param ctx the parse tree
	 */
	void exitRules(InputParser.RulesContext ctx);
	/**
	 * Enter a parse tree produced by {@link InputParser#declaration}.
	 * @param ctx the parse tree
	 */
	void enterDeclaration(InputParser.DeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link InputParser#declaration}.
	 * @param ctx the parse tree
	 */
	void exitDeclaration(InputParser.DeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link InputParser#branch}.
	 * @param ctx the parse tree
	 */
	void enterBranch(InputParser.BranchContext ctx);
	/**
	 * Exit a parse tree produced by {@link InputParser#branch}.
	 * @param ctx the parse tree
	 */
	void exitBranch(InputParser.BranchContext ctx);
	/**
	 * Enter a parse tree produced by {@link InputParser#application}.
	 * @param ctx the parse tree
	 */
	void enterApplication(InputParser.ApplicationContext ctx);
	/**
	 * Exit a parse tree produced by {@link InputParser#application}.
	 * @param ctx the parse tree
	 */
	void exitApplication(InputParser.ApplicationContext ctx);
}