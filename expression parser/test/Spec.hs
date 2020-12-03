import Test.Hspec
import Test.QuickCheck
import ExpressionParser

a = Var 'a'
b = Var 'b'
z = Var 'z'

main :: IO ()
main =
  hspec $
  describe "Parser tests" $ do
    it "Empty input" $
      parse "" `shouldBe` Just ""
    it "Non letter variable name" $
      parse "aa" `shouldBe` Nothing
    it "a in b in c" $
      parse "a in b in c" `shouldBe` Just $ And (In a b ) (In b c)
    it "not in" $
      parse "a not in b" `shouldBe` Just $ Not (In (Var 'a') (Var 'b'))
    it "not not not" $
      parse "not not not a not in b" `shouldBe` Just $ Not $ Not $ Not $ Not $ In a b
    it "Brackets" $
      parse "(a in b or b in a) and a in (z)" `shouldBe` Just $ And (Or (In a b) (In b a)) (In a z)