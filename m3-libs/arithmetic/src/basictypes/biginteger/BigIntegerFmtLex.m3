MODULE BigIntegerFmtLex;
(*Copyright (c) 1996, m3na project
  
Abstract: Integers of arbitrary size

*)

IMPORT Rd, Thread, FloatMode, Lex AS L, Fmt AS F, Text, TextRd, Word;
IMPORT BigIntegerRep   AS BR;
IMPORT BigIntegerBasic AS BB;
FROM xUtils IMPORT Error, Err;

<*UNUSED*> CONST Module = "BigIntegerFmtLex.";
(*==========================*)

(*
<*FATAL Rd.Failure, Thread.Alerted*>
PROCEDURE Skip (txt: TEXT;  len, start: INTEGER;  blanks: BOOLEAN): INTEGER =
  (* Return the index of the first character of "txt" at or beyond "start"
     that's not in "chars". *)
  VAR
    i   : CARDINAL := NUMBER(buf);
    buf : ARRAY [0..63] OF CHAR;
  BEGIN
    LOOP
      IF (start >= len) THEN RETURN len; END;
      IF (i >= NUMBER (buf)) THEN i := 0; Text.SetChars (buf, txt, start);  END;
      IF (buf[i] IN Lex.Blanks) # blanks THEN RETURN start; END;
      INC (start);  INC (i);
    END;
  END Skip;

PROCEDURE ScanWord (txt: TEXT): Rd.T RAISES {Lex.Error} =
  (* Ensure that "txt" contains exactly one non-blank substring,
     and return its span [start..stop) *)
  VAR
    len    := Text.Length (txt);
    start  := Skip (txt, len, 0,     blanks := TRUE);
    stop   := Skip (txt, len, start, blanks := FALSE);
    finish := Skip (txt, len, stop,  blanks := TRUE);
  BEGIN
    IF finish < len THEN RAISE Lex.Error; END;
    RETURN TextRd.New (Text.Sub (txt, start, stop-start));
  END ScanWord;

PROCEDURE Lex(txt: TEXT; defaultBase: [2..16]): INTEGER
    RAISES {Lex.Error, FloatMode.Trap} =
  VAR rd := ScanWord(txt); res := Lex.Int(rd, defaultBase);
  BEGIN
    IF NOT Rd.EOF(rd) THEN RAISE Lex.Error END;
    RETURN res
  END Lex;
*)



PROCEDURE FastFmtU(READONLY x: T; base: Base; pad: [1..Word.Size]): TEXT =
  VAR
    txt : TEXT;
  BEGIN
    IF x.size=0 THEN
      RETURN "0";
    ELSE
      txt := F.Unsigned(x.data[x.size-1],base);
      FOR k:=x.size-2 TO 0 BY -1 DO
        txt := txt & F.Pad (F.Unsigned(x.data[k],base), pad, '0');
      END;
    END;
    RETURN txt;
  END FastFmtU;

(*can be optimized with a division routine that is specialised to small divisors*)
PROCEDURE SlowFmtU(x: T; base: Base): TEXT =
  VAR
    r, b  : T;
    txt   := "";
    digit : [0..LAST(Base)-1];
  BEGIN
    TRY
      b := BB.FromInteger(base);
      WHILE NOT BB.IsZero(x) DO
        x := BR.DivModU(x,b,r);
        <*ASSERT r.size<=1*>
        digit := r.data[0];
        IF digit<10 THEN
          txt := Text.FromChar(VAL(ORD('0')+digit,CHAR)) & txt;
        ELSE
          txt := Text.FromChar(VAL(ORD('a')+digit-10,CHAR)) & txt;
        END;
      END;
    EXCEPT
      | Error(err) => <*ASSERT err#Err.divide_by_zero*>
    END;
    IF Text.Empty(txt) THEN
      RETURN "0";
    ELSE
      RETURN txt;
    END;
  END SlowFmtU;

PROCEDURE Fmt(READONLY x: T; READONLY style := FmtStyle{}): TEXT =
  VAR
    txt : TEXT;
  BEGIN
    CASE style.base OF
      |  2 => txt := FastFmtU(x, 2,Word.Size);
      |  4 => txt := FastFmtU(x, 4,Word.Size DIV 2);
      | 16 => txt := FastFmtU(x,16,Word.Size DIV 4);
    ELSE
      txt := SlowFmtU(x,style.base);
    END;
    IF x.sign THEN
      RETURN "-" & txt;
    ELSE
      RETURN txt;
    END;
  END Fmt;

(*
PROCEDURE WriteLongNumber (READONLY x : LongNumber) =
VAR
  j : INTEGER;

BEGIN
  IF x.size=0 THEN
    WriteString ("0");
  ELSE
    IF x.sign THEN
      WriteString ("-");
    ELSE
      WriteString ("+");
    END;
    FOR j:=x.size-1 TO 0 BY -1 DO
      WriteCardHex (x.data[j], 4);
    END;
  END;
END WriteLongNumber;

PROCEDURE WriteLongNumberDC (READONLY x : LongNumber) =
VAR
  j, cnt : INTEGER;
  y1, y2, out : LongNumber;
  res : REF ARRAY OF LONGCARD;

BEGIN
  IF x.size=0 THEN
    WriteString (" 0000");
  ELSE
    InitLong (y1, y2, out);
    AssignLong (y1, x);

    res'RANGE := x.size;
    memPool.NewPooled (res);

    cnt := -1;
    WHILE y1.size#0 DO
      INC (cnt);
      DivModULong (y2, out, y1, billion);
      IF KEY out.size
        OF 1 THEN res[cnt] := LONGCARD (out.data[0]) END;
        OF 2 THEN res[cnt] := LONGCARD (out.data[0]) + LONGCARD (out.data[1]) SHL 16 END;
        ELSE res[cnt] := 0
      END;
      AssignLong (y1, y2);
    END;

    IF x.sign THEN
      WriteString ("-");
    ELSE
      WriteString ("+");
    END;
    WriteCard (res[cnt]);
    FOR j:=cnt-1 TO 0 BY -1 DO
      WriteCard (res[j], 9);
    END;

    DeleteLong (y1, y2, out);
  END;
END WriteLongNumberDC;
*)

(*==========================*)
BEGIN
END BigIntegerFmtLex.
