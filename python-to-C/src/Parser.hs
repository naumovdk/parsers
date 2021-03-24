{-# OPTIONS_GHC -w #-}
module Parser where

import Grammar
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,144) ([0,5688,0,45504,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,2,0,0,0,0,0,12736,0,0,0,0,16,32768,355,0,32768,0,0,0,0,8,0,0,49152,57,0,398,0,3184,0,0,0,32768,0,0,4,0,0,0,2048,0,12736,0,0,0,0,0,0,2048,0,0,0,0,0,0,68,14336,22,0,64,0,2048,0,0,4,0,4,7168,3,0,256,0,256,0,0,0,0,2,0,32,0,0,0,128,0,16384,0,8192,0,0,16,0,0,0,1024,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseExpr","File","Expr","Assignment","Rvalue","Var","String","Number","Call","Input","Int","IfElse","Elifs","Elif","Block","Bool","Eq","VAR","INT","INPUT","ASSIGN","OPENING","CLOSING","RAW","NUM","NL","IF","ELSE","COLON","TAB","EQ","ELIF","%eof"]
        bit_start = st * 35
        bit_end = (st + 1) * 35
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..34]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (20) = happyShift action_12
action_0 (21) = happyShift action_13
action_0 (22) = happyShift action_14
action_0 (26) = happyShift action_15
action_0 (27) = happyShift action_16
action_0 (29) = happyShift action_17
action_0 (4) = happyGoto action_18
action_0 (5) = happyGoto action_19
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (9) = happyGoto action_6
action_0 (10) = happyGoto action_7
action_0 (11) = happyGoto action_8
action_0 (12) = happyGoto action_9
action_0 (13) = happyGoto action_10
action_0 (14) = happyGoto action_11
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (20) = happyShift action_12
action_1 (21) = happyShift action_13
action_1 (22) = happyShift action_14
action_1 (26) = happyShift action_15
action_1 (27) = happyShift action_16
action_1 (29) = happyShift action_17
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 (9) = happyGoto action_6
action_1 (10) = happyGoto action_7
action_1 (11) = happyGoto action_8
action_1 (12) = happyGoto action_9
action_1 (13) = happyGoto action_10
action_1 (14) = happyGoto action_11
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_3

action_4 _ = happyReduce_5

action_5 (23) = happyShift action_27
action_5 _ = happyReduce_7

action_6 _ = happyReduce_8

action_7 _ = happyReduce_9

action_8 _ = happyReduce_10

action_9 _ = happyReduce_14

action_10 _ = happyReduce_15

action_11 _ = happyReduce_4

action_12 _ = happyReduce_11

action_13 (24) = happyShift action_26
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (24) = happyShift action_25
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_12

action_16 _ = happyReduce_13

action_17 (20) = happyShift action_12
action_17 (21) = happyShift action_13
action_17 (22) = happyShift action_14
action_17 (26) = happyShift action_15
action_17 (27) = happyShift action_16
action_17 (7) = happyGoto action_21
action_17 (8) = happyGoto action_22
action_17 (9) = happyGoto action_6
action_17 (10) = happyGoto action_7
action_17 (11) = happyGoto action_8
action_17 (12) = happyGoto action_9
action_17 (13) = happyGoto action_10
action_17 (18) = happyGoto action_23
action_17 (19) = happyGoto action_24
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (35) = happyAccept
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (28) = happyShift action_20
action_19 _ = happyReduce_1

action_20 (20) = happyShift action_12
action_20 (21) = happyShift action_13
action_20 (22) = happyShift action_14
action_20 (26) = happyShift action_15
action_20 (27) = happyShift action_16
action_20 (29) = happyShift action_17
action_20 (4) = happyGoto action_34
action_20 (5) = happyGoto action_19
action_20 (6) = happyGoto action_3
action_20 (7) = happyGoto action_4
action_20 (8) = happyGoto action_5
action_20 (9) = happyGoto action_6
action_20 (10) = happyGoto action_7
action_20 (11) = happyGoto action_8
action_20 (12) = happyGoto action_9
action_20 (13) = happyGoto action_10
action_20 (14) = happyGoto action_11
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (33) = happyShift action_33
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_7

action_23 (31) = happyShift action_32
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_28

action_25 (20) = happyShift action_12
action_25 (21) = happyShift action_13
action_25 (22) = happyShift action_14
action_25 (25) = happyShift action_31
action_25 (26) = happyShift action_15
action_25 (27) = happyShift action_16
action_25 (7) = happyGoto action_30
action_25 (8) = happyGoto action_22
action_25 (9) = happyGoto action_6
action_25 (10) = happyGoto action_7
action_25 (11) = happyGoto action_8
action_25 (12) = happyGoto action_9
action_25 (13) = happyGoto action_10
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (20) = happyShift action_12
action_26 (21) = happyShift action_13
action_26 (22) = happyShift action_14
action_26 (26) = happyShift action_15
action_26 (27) = happyShift action_16
action_26 (7) = happyGoto action_29
action_26 (8) = happyGoto action_22
action_26 (9) = happyGoto action_6
action_26 (10) = happyGoto action_7
action_26 (11) = happyGoto action_8
action_26 (12) = happyGoto action_9
action_26 (13) = happyGoto action_10
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (20) = happyShift action_12
action_27 (21) = happyShift action_13
action_27 (22) = happyShift action_14
action_27 (26) = happyShift action_15
action_27 (27) = happyShift action_16
action_27 (7) = happyGoto action_28
action_27 (8) = happyGoto action_22
action_27 (9) = happyGoto action_6
action_27 (10) = happyGoto action_7
action_27 (11) = happyGoto action_8
action_27 (12) = happyGoto action_9
action_27 (13) = happyGoto action_10
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_6

action_29 (25) = happyShift action_38
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (25) = happyShift action_37
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_17

action_32 (28) = happyShift action_36
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (20) = happyShift action_12
action_33 (21) = happyShift action_13
action_33 (22) = happyShift action_14
action_33 (26) = happyShift action_15
action_33 (27) = happyShift action_16
action_33 (7) = happyGoto action_35
action_33 (8) = happyGoto action_22
action_33 (9) = happyGoto action_6
action_33 (10) = happyGoto action_7
action_33 (11) = happyGoto action_8
action_33 (12) = happyGoto action_9
action_33 (13) = happyGoto action_10
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_2

action_35 _ = happyReduce_29

action_36 (32) = happyShift action_40
action_36 (17) = happyGoto action_39
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_16

action_38 _ = happyReduce_18

action_39 (30) = happyShift action_44
action_39 (34) = happyShift action_45
action_39 (15) = happyGoto action_42
action_39 (16) = happyGoto action_43
action_39 _ = happyReduce_19

action_40 (20) = happyShift action_12
action_40 (21) = happyShift action_13
action_40 (22) = happyShift action_14
action_40 (26) = happyShift action_15
action_40 (27) = happyShift action_16
action_40 (29) = happyShift action_17
action_40 (5) = happyGoto action_41
action_40 (6) = happyGoto action_3
action_40 (7) = happyGoto action_4
action_40 (8) = happyGoto action_5
action_40 (9) = happyGoto action_6
action_40 (10) = happyGoto action_7
action_40 (11) = happyGoto action_8
action_40 (12) = happyGoto action_9
action_40 (13) = happyGoto action_10
action_40 (14) = happyGoto action_11
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (28) = happyShift action_50
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (30) = happyShift action_49
action_42 _ = happyReduce_21

action_43 (34) = happyShift action_45
action_43 (15) = happyGoto action_48
action_43 (16) = happyGoto action_43
action_43 _ = happyReduce_23

action_44 (31) = happyShift action_47
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (20) = happyShift action_12
action_45 (21) = happyShift action_13
action_45 (22) = happyShift action_14
action_45 (26) = happyShift action_15
action_45 (27) = happyShift action_16
action_45 (7) = happyGoto action_21
action_45 (8) = happyGoto action_22
action_45 (9) = happyGoto action_6
action_45 (10) = happyGoto action_7
action_45 (11) = happyGoto action_8
action_45 (12) = happyGoto action_9
action_45 (13) = happyGoto action_10
action_45 (18) = happyGoto action_46
action_45 (19) = happyGoto action_24
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (31) = happyShift action_54
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (28) = happyShift action_53
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_24

action_49 (31) = happyShift action_52
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (32) = happyShift action_40
action_50 (17) = happyGoto action_51
action_50 _ = happyReduce_26

action_51 _ = happyReduce_27

action_52 (28) = happyShift action_57
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (32) = happyShift action_40
action_53 (17) = happyGoto action_56
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (28) = happyShift action_55
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (32) = happyShift action_40
action_55 (17) = happyGoto action_59
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_20

action_57 (32) = happyShift action_40
action_57 (17) = happyGoto action_58
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_22

action_59 _ = happyReduce_25

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 : happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  6 happyReduction_6
happyReduction_6 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (Assignment happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  7 happyReduction_7
happyReduction_7 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  7 happyReduction_10
happyReduction_10 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 (HappyTerminal (VarT happy_var_1))
	 =  HappyAbsSyn8
		 (Variable happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  9 happyReduction_12
happyReduction_12 (HappyTerminal (RawStrT happy_var_1))
	 =  HappyAbsSyn9
		 (PyString happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  10 happyReduction_13
happyReduction_13 (HappyTerminal (NumberT happy_var_1))
	 =  HappyAbsSyn10
		 (PyInt happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  11 happyReduction_14
happyReduction_14 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  11 happyReduction_15
happyReduction_15 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happyReduce 4 12 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (Input happy_var_3
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_3  12 happyReduction_17
happyReduction_17 _
	_
	_
	 =  HappyAbsSyn12
		 (Input $ PyString ""
	)

happyReduce_18 = happyReduce 4 13 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (IntFunc happy_var_3
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 5 14 happyReduction_19
happyReduction_19 ((HappyAbsSyn17  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (IfElse happy_var_2 happy_var_5 [] Nothing
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 9 14 happyReduction_20
happyReduction_20 ((HappyAbsSyn17  happy_var_9) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (IfElse happy_var_2 happy_var_5 [] (Just happy_var_9)
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 6 14 happyReduction_21
happyReduction_21 ((HappyAbsSyn15  happy_var_6) `HappyStk`
	(HappyAbsSyn17  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (IfElse happy_var_2 happy_var_5 happy_var_6 Nothing
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 10 14 happyReduction_22
happyReduction_22 ((HappyAbsSyn17  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_6) `HappyStk`
	(HappyAbsSyn17  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (IfElse happy_var_2 happy_var_5 happy_var_6 (Just happy_var_10)
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_1  15 happyReduction_23
happyReduction_23 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 ([happy_var_1]
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  15 happyReduction_24
happyReduction_24 (HappyAbsSyn15  happy_var_2)
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1 : happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happyReduce 5 16 happyReduction_25
happyReduction_25 ((HappyAbsSyn17  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (Elif happy_var_2 happy_var_5
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_3  17 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn17
		 ([happy_var_2]
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happyReduce 4 17 happyReduction_27
happyReduction_27 ((HappyAbsSyn17  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (happy_var_2 : happy_var_4
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_1  18 happyReduction_28
happyReduction_28 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  19 happyReduction_29
happyReduction_29 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn19
		 (EqCheck happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	VarT happy_dollar_dollar -> cont 20;
	IntT -> cont 21;
	InputT -> cont 22;
	AssignT -> cont 23;
	OpeningT -> cont 24;
	ClosingT -> cont 25;
	RawStrT happy_dollar_dollar -> cont 26;
	NumberT happy_dollar_dollar -> cont 27;
	NewLineT -> cont 28;
	IfT -> cont 29;
	ElseT -> cont 30;
	ColonT -> cont 31;
	TabT -> cont 32;
	EqT -> cont 33;
	ElifT -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => Either String a -> (a -> Either String b) -> Either String b
happyThen = (>>=)
happyReturn :: () => a -> Either String a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Either String a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> Either String a
happyError' = (\(tokens, _) -> parseError tokens)
parseExpr tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError x = Left "Parse error"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
