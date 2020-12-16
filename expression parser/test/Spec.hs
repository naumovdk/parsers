import ExpressionParser
import Lexer
import Test.Hspec
import Test.QuickCheck

a = Var 'a'
b = Var 'b'
c = Var 'c'
z = Var 'z'

main :: IO ()
main = hspec $ do
  describe "Parser tests" $ do
    it "empty input" $
      runParse [] `shouldBe` Nothing
    it "non letter name" $
      parse "aa" `shouldBe` Nothing
    it "a in b in c" $ do
      runParse [VarT 'a', InT, VarT 'b', InT, VarT 'c'] `shouldBe` Just (And (In a b) (In b c))
    it "not in" $ do
      runParse [VarT 'a', NotT, InT, VarT 'b'] `shouldBe` Just (Not (In (Var 'a') (Var 'b')))
    it "not not not" $ do
      runParse [NotT, NotT, NotT, VarT 'a', NotT, InT, VarT 'b'] `shouldBe` Just (Not $ Not $ Not $ Not $ In a b)
    it "complex test with parantheses" $ do
      runParse [OpeningT, VarT 'a', InT, VarT 'b', OrT, VarT 'b', InT, VarT 'a', ClosingT, AndT, OpeningT, VarT 'z', ClosingT] `shouldBe` Just (And (Or (In a b) (In b a)) z)
