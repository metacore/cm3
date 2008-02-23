(* Copyright (C) 1993, Digital Equipment Corporation           *)
(* All rights reserved.                                        *)
(* See the file COPYRIGHT for a full description.              *)
(*                                                             *)
(* Last modified on Mon Sep 26 09:07:50 PDT 1994 by kalsow     *)
(*      modified on Mon Oct 25 10:31:06 PDT 1993 by mcjones    *)
(*      modified on Wed May 12 16:56:05 PDT 1993 by meehan     *)
(*      modified on Mon May 10 20:58:46 PDT 1993 by mjordan    *)

MODULE M3Path;

IMPORT Pathname, Text;

CONST
  Null      = '\000';
  Colon     = ':';
  Slash     = '/';
  BackSlash = '\\';

VAR
  DirSep := ARRAY OSKind OF CHAR { Slash,  Slash,  Slash };
  VolSep := ARRAY OSKind OF CHAR { Null,   Null,   Colon  };

VAR
  DirSepText := ARRAY OSKind OF TEXT { "/",  "/",  "/" };

TYPE
  SMap = ARRAY Kind OF TEXT;

CONST
  Suffix = ARRAY OSKind OF SMap {
  (* Unix *)       SMap { "", ".i3", ".ic", ".is", ".io",
                          ".m3", ".mc", ".ms", ".mo",
                          ".ig", ".mg", ".c", ".h", ".s",
                          ".o", ".a", ".a", ".m3x", "", ".mx", ".tmpl" },
  (* GrumpyUnix *) SMap { "", ".i3", ".ic", ".is", "_i.o",
                          ".m3", ".mc", ".ms", "_m.o",
                          ".ig", ".mg", ".c", ".h", ".s",
                          ".o", ".a", ".a", ".m3x", "", ".mx", ".tmpl" },
  (* Win32 *)      SMap { "", ".i3", ".ic", ".is", ".io",
                          ".m3", ".mc", ".ms", ".mo",
                          ".ig", ".mg", ".c", ".h", ".s",
                          ".obj",".lib",".lib",".m3x",".exe",".mx",".tmpl" }
  };

CONST
  Prefix = ARRAY OSKind OF SMap {
  (* Unix *)       SMap { "", "", "", "", "",
                          "", "", "", "",
                          "", "", "", "", "",
                          "", "lib", "lib", "lib", "", "","" },
  (* GrumpyUnix *) SMap { "", "", "", "", "",
                          "", "", "", "",
                          "", "", "", "", "",
                          "", "lib", "lib", "lib", "", "","" },
  (* Win32 *)      SMap { "", "", "", "", "",
                          "", "", "", "",
                          "", "", "", "", "",
                          "", "", "", "","", "","" }
  };

CONST
  Default_pgm = ARRAY OSKind OF TEXT { "a.out", "a.out", "NONAME.EXE" };

VAR
  os_map := ARRAY BOOLEAN OF OSKind { OSKind.Unix, OSKind.Unix };
  lcase  : ARRAY CHAR OF CHAR;

PROCEDURE SetOS (kind: OSKind;  host: BOOLEAN) =
  BEGIN
    os_map [host] := kind;
  END SetOS;

PROCEDURE New (a, b, c, d: TEXT := NIL): TEXT =
  VAR len: INTEGER;  buf: ARRAY [0..255] OF CHAR;  ref: REF ARRAY OF CHAR;
  BEGIN
    IF (b # NIL) THEN
      IF Pathname.Absolute (b) THEN
        a := b;
      ELSE
        a := Pathname.Join (a, b, NIL);
      END;
    END;
    IF (c # NIL) THEN
      IF Pathname.Absolute (c) THEN
        a := c;
      ELSE
        a := Pathname.Join (a, c, NIL);
      END;
    END;
    IF (d # NIL) THEN
      IF Pathname.Absolute (d) THEN
        a := d;
      ELSE
        a := Pathname.Join (a, d, NIL);
      END;
    END;
    len := Text.Length (a);
    IF (len <= NUMBER (buf)) THEN
      Text.SetChars (buf, a);
      RETURN FixPath (SUBARRAY (buf, 0, len), host := TRUE);
    ELSE
      ref := NEW (REF ARRAY OF CHAR, len);
      Text.SetChars (ref^, a);
      RETURN FixPath (ref^, host := TRUE);
    END;
  END New;

PROCEDURE Join (dir, base: TEXT;  k: Kind;  host: BOOLEAN): TEXT =
  VAR
    len      := 0;
    os       := os_map [host];
    pre      := Prefix [os][k];
    pre_len  := Text.Length (pre);
    ext      := Suffix [os][k];
    ext_len  := Text.Length (ext);
    d_sep    := DirSep [os];
    v_sep    := VolSep [os];
    ch       : CHAR;
    buf      : ARRAY [0..255] OF CHAR;
    base_len := Text.Length (base);
    dir_len  : INTEGER;

    PROCEDURE DoJoin (VAR buf: ARRAY OF CHAR): TEXT =
      VAR
        len := 0;

      PROCEDURE Append (VAR a: ARRAY OF CHAR;  start: INTEGER;  b: TEXT; b_len: INTEGER): INTEGER =
      BEGIN
          Text.SetChars (SUBARRAY (a, start, b_len), b);
          RETURN start + b_len;
      END Append;

    BEGIN (* DoJoin *)
      IF (dir # NIL) THEN
        len := Append (buf, 0, dir, dir_len);
        IF (buf[len-1] # d_sep) AND (buf[len-1] # v_sep) THEN
          buf[len] := d_sep; INC (len);
        END;
      END;
      len := Append (buf, len, pre, pre_len);
      len := Append (buf, len, base, base_len);
      len := Append (buf, len, ext, ext_len);
      RETURN FixPath (SUBARRAY (buf, 0, len), host);
    END DoJoin;

  BEGIN (* Join *)
    (* find out how much space we need *)
    IF (dir # NIL) THEN
      dir_len := Text.Length (dir);
      len := dir_len;
      ch := Text.GetChar (dir, len-1);
      IF (ch # d_sep) AND (ch # v_sep) THEN INC (len); END;
    END;
    INC (len, pre_len);
    INC (len, base_len);
    INC (len, ext_len);

    (* allocate it and fill it in *)
    IF (len <= NUMBER (buf))
      THEN RETURN DoJoin (SUBARRAY (buf, 0, len));
      ELSE RETURN DoJoin (NEW (REF ARRAY OF CHAR, len)^);
    END;
  END Join;

PROCEDURE Parse (nm: TEXT;  host: BOOLEAN): T =
  VAR len := Text.Length (nm);   buf: ARRAY [0..255] OF CHAR;
  BEGIN
    IF (len <= NUMBER (buf))
      THEN RETURN DoParse (nm, SUBARRAY (buf, 0, len), host);
      ELSE RETURN DoParse (nm, NEW (REF ARRAY OF CHAR, len)^, host);
    END;
  END Parse;

PROCEDURE DoParse (nm_txt: TEXT;  VAR nm: ARRAY OF CHAR;  host: BOOLEAN): T =
  VAR
    t       : T;
    len     := NUMBER (nm);
    base_len:= 0;
    d_index := -1;
    v_index := -1;
    start   := 0;
    os      := os_map [host];
    d_sep   := DirSep [os];
    v_sep   := VolSep [os];
    ext     : TEXT;
    ext_len : INTEGER;
    pre     : TEXT;
  BEGIN
    Text.SetChars (nm, nm_txt);

    (* find the last instance of each separator *)
    FOR i := 0 TO len-1 DO IF (nm[i] = v_sep) THEN v_index := i; END; END;
    FOR i := 0 TO len-1 DO IF (nm[i] = d_sep) THEN d_index := i; END; END;

    (* extract the prefix *)
    IF (v_index = -1) AND (d_index = -1) THEN
      (* no separators *)
      t.dir := NIL;
      start := 0;
    ELSIF (d_index = -1) THEN
      (* no directory separator, only a volume separator *)
      t.dir := Text.FromChars (SUBARRAY (nm, 0, v_index+1));
      start := v_index + 1;
    ELSIF (d_index = 0) THEN
      t.dir := DirSepText [os];
      start := 1;
    ELSE
      t.dir := Text.FromChars (SUBARRAY (nm, 0, d_index));
      start := d_index+1;
    END;
    base_len := len - start;

    (* search for a matching suffix *)
    t.kind := Kind.Unknown;
    ext_len := 0;
    FOR k := FIRST (Kind) TO LAST (Kind) DO
      ext := Suffix [os][k];
      IF ExtMatch (nm_txt, ext, os) THEN
        ext_len := Text.Length (ext);
        t.kind := k;
        EXIT;
      END;
    END;

    (* extract the base component *)
    t.base := Text.FromChars (SUBARRAY (nm, start, base_len - ext_len));

    pre := Prefix[os][t.kind];
    IF (Text.Length (pre) > 0) AND PrefixMatch (t.base, pre, os) THEN
      t.base := Text.Sub (t.base, Text.Length (pre));
    END;

    RETURN t;
  END DoParse;

PROCEDURE IsEqual (a, b: TEXT): BOOLEAN =
  VAR len := Text.Length (a);
  BEGIN
    IF len # Text.Length (b) THEN
      RETURN FALSE;
    END;
    RETURN RegionMatch (a, 0, b, 0, len,
                        ignore_case := (os_map [TRUE(*HOST*)] = OSKind.Win32));
  END IsEqual;

PROCEDURE ExtMatch (nm, ext: TEXT;  os: OSKind): BOOLEAN =
  VAR nm_len := Text.Length (nm);  ext_len := Text.Length (ext);
  BEGIN
    RETURN (ext_len > 0)
       AND RegionMatch (nm, nm_len - ext_len, ext, 0, ext_len,
                        ignore_case := (os = OSKind.Win32));
  END ExtMatch;

PROCEDURE PrefixMatch (nm, pre: TEXT;  os: OSKind): BOOLEAN =
  BEGIN
    RETURN RegionMatch (nm, 0, pre, 0, Text.Length (pre),
                        ignore_case := (os = OSKind.Win32));
  END PrefixMatch;

PROCEDURE RegionMatch (a: TEXT;  start_a: INTEGER;
                       b: TEXT;  start_b: INTEGER;
                       len: INTEGER;  ignore_case: BOOLEAN): BOOLEAN =
  CONST N = 128;
  VAR
    len_a := Text.Length (a);
    len_b := Text.Length (b);
    buf_a, buf_b : ARRAY [0..N-1] OF CHAR;
    cha, chb: CHAR;
  BEGIN
    IF (start_a < 0) OR (start_b < 0) THEN RETURN FALSE; END;
    IF (start_a + len > len_a) THEN RETURN FALSE; END;
    IF (start_b + len > len_b) THEN RETURN FALSE; END;
    WHILE (len > 0) DO
      Text.SetChars (buf_a, a, start_a);
      Text.SetChars (buf_b, b, start_b);
      IF ignore_case THEN
        FOR i := 0 TO MIN (N, len) - 1 DO
          cha := buf_a[i];
          chb := buf_b[i];
          IF cha # chb THEN
            IF lcase[cha] # lcase[chb] THEN
              RETURN FALSE;
            END;
          END;
        END;
      ELSE
        FOR i := 0 TO MIN (N, len) - 1 DO
          IF buf_a[i] # buf_b[i] THEN RETURN FALSE; END;
        END;
      END;
      DEC (len, N);  INC (start_a, N);  INC (start_a, N);
    END;
    RETURN TRUE;
  END RegionMatch;

PROCEDURE EndOfArc (path: TEXT;  xx: CARDINAL;  os: OSKind): BOOLEAN =
  VAR len := Text.Length (path);
  BEGIN
    RETURN (len = xx) OR ((len > xx) AND (Text.GetChar (path, xx) = DirSep[os]));
  END EndOfArc;

PROCEDURE DefaultProgram (host: BOOLEAN): TEXT =
  BEGIN
    RETURN Default_pgm [os_map [host]];
  END DefaultProgram;

PROCEDURE ProgramName (base: TEXT;  host: BOOLEAN): TEXT =
  VAR os := os_map [host];
  BEGIN
    RETURN base & Suffix[os][Kind.PGM];
  END ProgramName;

PROCEDURE LibraryName (base: TEXT;  host: BOOLEAN): TEXT =
  VAR os := os_map [host];
  BEGIN
    RETURN Prefix[os][Kind.LIB] & base & Suffix[os][Kind.LIB];
  END LibraryName;

PROCEDURE Convert (nm: TEXT;  host: BOOLEAN): TEXT =
  VAR
    len  : INTEGER;
    buf: ARRAY [0..255] OF CHAR;
    good := DirSep [os_map [host]];
    bad  := DirSep [os_map [NOT host]];
  BEGIN
    IF good = bad THEN
      RETURN nm;
    END;
    len := Text.Length (nm);
    IF len = 0 THEN
      RETURN nm;
    END;
    IF (len <= NUMBER (buf))
      THEN RETURN DoConvert (nm, len, host, buf);
      ELSE RETURN DoConvert (nm, len, host, NEW (REF ARRAY OF CHAR, len)^);
    END;
  END Convert;

PROCEDURE DoConvert (nm: TEXT;  len: INTEGER;  host: BOOLEAN;
                     VAR buf: ARRAY OF CHAR): TEXT =
  VAR
    good := DirSep [os_map [host]];
    bad  := DirSep [os_map [NOT host]];
    any  := FALSE;
  BEGIN
    Text.SetChars (buf, nm);
    FOR i := 0 TO len-1 DO
      IF (buf[i] = bad) THEN
        buf[i] := good;
        any := TRUE;
      END;
    END;
    IF NOT any THEN
      RETURN nm;
    END;
    RETURN Text.FromChars (SUBARRAY (buf, 0, len));
  END DoConvert;

PROCEDURE Escape (nm: TEXT): TEXT =
  VAR len: INTEGER;   buf: ARRAY [0..255] OF CHAR;
  BEGIN
    IF (nm = NIL) THEN RETURN NIL; END;
    len := Text.Length (nm);
    IF (len + len <= NUMBER (buf))
      THEN RETURN DoEscape (nm, len, buf);
      ELSE RETURN DoEscape (nm, len, NEW (REF ARRAY OF CHAR, len + len)^);
    END;
  END Escape;

PROCEDURE DoEscape (nm: TEXT;  len: INTEGER;  VAR buf: ARRAY OF CHAR): TEXT =
  VAR n_escapes := 0;  src, dest: INTEGER;  c: CHAR;
  BEGIN
    Text.SetChars (buf, nm);
    FOR i := 0 TO len-1 DO
      IF (buf[i] = BackSlash) THEN INC (n_escapes); END;
    END;
    IF (n_escapes = 0) THEN RETURN nm; END;
    src  := len - 1;
    dest := src + n_escapes;
    WHILE (src > 0) DO
      c := buf[src];  DEC (src);
      buf[dest] := c;  DEC (dest);
      IF (c = BackSlash) THEN  buf[dest] := BackSlash;  DEC (dest);  END;
    END;
    RETURN Text.FromChars (SUBARRAY (buf, 0, len + n_escapes));
  END DoEscape;

PROCEDURE MakeRelative (VAR path: TEXT;  full, rel: TEXT): BOOLEAN =
  BEGIN
    IF PrefixMatch (path, full, os_map[TRUE])
      AND EndOfArc (path, Text.Length (full), os_map[TRUE]) THEN
      VAR
        p := Text.Length(full);
        n := Text.Length(path);
      BEGIN
        WHILE p < n AND Text.GetChar(path, p) = DirSep[os_map[TRUE]] DO
          INC(p) 
        END;
        path := New (rel, Text.Sub (path, p)); 
      END;
      RETURN TRUE;
    ELSE
      RETURN FALSE;
    END;
  END MakeRelative;

TYPE
  SepInfo = RECORD
    d_sep : CHAR;
    v_sep : CHAR;
    dots  : BOOLEAN;
    cnt   : INTEGER;
    loc   : ARRAY [0..31] OF INTEGER;
  END;

PROCEDURE FixPath (VAR p: ARRAY OF CHAR;  host: BOOLEAN): TEXT =
  (* remove redundant "/arc/../" and "/./" segments *)
  VAR os := os_map [host];  len, x, s0, s1, s2: INTEGER;  info: SepInfo;
  BEGIN
    info.d_sep := DirSep [os];
    info.v_sep := VolSep [os];

    len := NUMBER (p);
    FindSeps (p, len, info);  x := 1;
    WHILE (info.dots) AND (x < info.cnt-1) DO
      s0 := info.loc[x-1];
      s1 := info.loc[x];
      s2 := info.loc[x+1];
      IF (s1 - s0 = 2) AND (p[s0+1] = '.') AND (p[s1] = info.d_sep) THEN
        (* found a /./ arc  => remove it *)
        CutSection (p, s0+1, s1, len);
        FindSeps (p, len, info);  x := 1;  (* restart the scan *)
      ELSIF (s2 - s1 = 3)
        AND (p[s1+1] = '.') AND (p[s1+2] = '.')
        AND (p[s1] = info.d_sep)
        AND ((p[s1-1] # '.') OR (p[s1-2] # '.')) THEN
        (* found a /<foo>/../ segment => remove it *)
        CutSection (p, s0+1, s2, len);
        FindSeps (p, len, info);  x := 1;  (* restart the scan *)
      ELSE
        (* found nothing... *)
        INC (x);
      END;
    END;

    (* remove trailing slashs *)
    WHILE (len > 0) AND (p[len-1] = info.d_sep) DO DEC (len); END;
    IF len <= 0 THEN RETURN "."; END;
    RETURN Text.FromChars (SUBARRAY (p, 0, len));
  END FixPath;

PROCEDURE FindSeps (READONLY buf: ARRAY OF CHAR;  len: INTEGER;
                    VAR(*OUT*) info: SepInfo) =
  VAR c: CHAR;
  BEGIN
    info.dots := FALSE;
    info.loc[0] := -1;  info.cnt := 1;  (* initial marker *)
    FOR i := 0 TO len-1 DO
      c := buf[i];
      IF (c = info.d_sep) OR (c = info.v_sep) THEN
        IF (info.cnt >= LAST (info.loc)) THEN EXIT; (*give up*) END;
        info.loc[info.cnt] := i;  INC (info.cnt);
      ELSIF (c = '.') THEN
        info.dots := TRUE;
      END;
    END;
    info.loc[info.cnt] := len;  INC (info.cnt);  (* final marker *)
  END FindSeps;

PROCEDURE CutSection (VAR buf: ARRAY OF CHAR;  start, stop: INTEGER;
                      VAR(*IN/OUT*) len: INTEGER) =
  VAR chop, tail: INTEGER;
  BEGIN
    start := MAX (0, MIN (start, len));
    stop  := MAX (0, MIN (stop+1, len));
    chop  := stop - start;
    tail  := len - stop;
    IF (tail > 0) THEN
      SUBARRAY (buf, start, tail) := SUBARRAY (buf, stop, tail);
    END;
    DEC (len, chop);
  END CutSection;

BEGIN
  FOR i := FIRST (lcase) TO LAST (lcase) DO lcase[i] := i; END;
  FOR i := 'A' TO 'Z' DO
    lcase[i] := VAL (ORD (i) - ORD ('A') + ORD ('a'), CHAR);
  END;

 (* OSKind is determined from "naming conventions"
    which are mostly about foo.lib vs. libfoo.a, foo.dll vs. libfoo.so, foo vs. foo.exe.
    "Naming conventions" also determines the slash, however NT386GNU uses
    Win32 "naming conventions" (currently) but forward slashes. In reality,
    forward slashes work almost anywhere, but at this time we are not pushing
    through the change to use forward slashes more on regular NT386.
    What we do here is probe our runtime for its slash as was already being
    done to set the Quake SL variable, but applying the result to more code.

    In general this run-time/compile-time determinations probably need better abstraction.
    At least in other places, where the way time works is used to determine if the runtime is Unix.
    In this case, the slash could be fed in at build time, or set in Quake, however
    how to get his data from Quake efficiently (and early enough?), is to be determined.
  *)
  WITH DynamicSlashChar = Text.GetChar (Pathname.Join ("a", "b"), 1) DO
    IF DynamicSlashChar = BackSlash THEN
      SlashChar := BackSlash;
      SlashText := "\\";
      DirSep[OSKind.Win32] := BackSlash;
      DirSepText[OSKind.Win32] := "\\";
    END;

    (* guess some reasonable defaults for this platform *)
    CONST XX = ARRAY BOOLEAN OF OSKind { OSKind.Win32, OSKind.Unix };
    VAR   k := XX [DynamicSlashChar = Slash];
    BEGIN
      os_map [TRUE]  := k;
      os_map [FALSE] := k;
    END;
  END;
END M3Path.
