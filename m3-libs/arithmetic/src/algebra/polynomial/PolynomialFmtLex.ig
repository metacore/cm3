GENERIC INTERFACE PolynomialFmtLex(RF, P);
(*Arithmetic for Modula-3, see doc for details*)

IMPORT Rd, Wr, Thread;
IMPORT Lex AS L;
IMPORT FloatMode;
FROM FmtLexSupport IMPORT Precedence;


TYPE T = P.T;

TYPE FmtStyle = RECORD elemStyle := RF.FmtStyle{};  END;

PROCEDURE Fmt (x: T; READONLY style := FmtStyle{}): TEXT
  RAISES {Thread.Alerted, Wr.Failure};

TYPE
  TexFlag = {powerSum            (*present as coefficient vector or as sum
                                    of powers of a given variable?*)
             , simplePower       (*for powerSum: z and 1 instead of z^1 and
                                    z^0*)
             , omitZero          (*for powerSum: omit zero terms*)
             , reverse           (*high powers first*)
            };
  TexFlagSet = SET OF TexFlag;
  TexStyle = RECORD
               flags           := TexFlagSet{};
               var      : TEXT := "x";
               elemStyle       := RF.TexStyle{};
             END;

PROCEDURE Tex (x: T; READONLY style := TexStyle{}; within := Precedence.sum):
  TEXT RAISES {Thread.Alerted, Wr.Failure};

TYPE
  LexStyle = RECORD
               sep       := ' ';
               elemStyle := RF.LexStyle{};
             END;

PROCEDURE Lex (rd: Rd.T; READONLY style := LexStyle{}; ): T
  RAISES {L.Error, FloatMode.Trap, Rd.Failure, Thread.Alerted};

END PolynomialFmtLex.
