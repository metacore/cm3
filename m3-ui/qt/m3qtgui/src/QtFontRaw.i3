(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtFontRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QFont0 *>
PROCEDURE New_QFont0 (): QFont;

<* EXTERNAL New_QFont1 *>
PROCEDURE New_QFont1 ( family: ADDRESS;
pointSize, weight: C.int;
italic: BOOLEAN;
): QFont;

<* EXTERNAL New_QFont2 *>
PROCEDURE New_QFont2 ( family: ADDRESS;
pointSize, weight: C.int;
): QFont;

<* EXTERNAL New_QFont3 *>
PROCEDURE New_QFont3 ( family: ADDRESS;
pointSize: C.int;
): QFont;

<* EXTERNAL New_QFont4 *>
PROCEDURE New_QFont4 ( family: ADDRESS;
): QFont;

<* EXTERNAL New_QFont5 *>
PROCEDURE New_QFont5 ( arg1, pd: ADDRESS;
): QFont;

<* EXTERNAL New_QFont6 *>
PROCEDURE New_QFont6 ( arg1: ADDRESS;
): QFont;

<* EXTERNAL Delete_QFont *>
PROCEDURE Delete_QFont ( self: QFont;
);

<* EXTERNAL QFont_family *>
PROCEDURE QFont_family ( self: QFont;
): ADDRESS;

<* EXTERNAL QFont_setFamily *>
PROCEDURE QFont_setFamily ( self: QFont;
 arg2: ADDRESS;
);

<* EXTERNAL QFont_pointSize *>
PROCEDURE QFont_pointSize ( self: QFont;
): C.int;

<* EXTERNAL QFont_setPointSize *>
PROCEDURE QFont_setPointSize ( self: QFont;
arg2: C.int;
);

<* EXTERNAL QFont_pointSizeF *>
PROCEDURE QFont_pointSizeF ( self: QFont;
): C.double;

<* EXTERNAL QFont_setPointSizeF *>
PROCEDURE QFont_setPointSizeF ( self: QFont;
arg2: C.double;
);

<* EXTERNAL QFont_pixelSize *>
PROCEDURE QFont_pixelSize ( self: QFont;
): C.int;

<* EXTERNAL QFont_setPixelSize *>
PROCEDURE QFont_setPixelSize ( self: QFont;
arg2: C.int;
);

<* EXTERNAL QFont_weight *>
PROCEDURE QFont_weight ( self: QFont;
): C.int;

<* EXTERNAL QFont_setWeight *>
PROCEDURE QFont_setWeight ( self: QFont;
arg2: C.int;
);

<* EXTERNAL QFont_bold *>
PROCEDURE QFont_bold ( self: QFont;
): BOOLEAN;

<* EXTERNAL QFont_setBold *>
PROCEDURE QFont_setBold ( self: QFont;
arg2: BOOLEAN;
);

<* EXTERNAL QFont_setStyle *>
PROCEDURE QFont_setStyle ( self: QFont;
style: C.int;
);

<* EXTERNAL QFont_style *>
PROCEDURE QFont_style ( self: QFont;
): C.int;

<* EXTERNAL QFont_italic *>
PROCEDURE QFont_italic ( self: QFont;
): BOOLEAN;

<* EXTERNAL QFont_setItalic *>
PROCEDURE QFont_setItalic ( self: QFont;
b: BOOLEAN;
);

<* EXTERNAL QFont_underline *>
PROCEDURE QFont_underline ( self: QFont;
): BOOLEAN;

<* EXTERNAL QFont_setUnderline *>
PROCEDURE QFont_setUnderline ( self: QFont;
arg2: BOOLEAN;
);

<* EXTERNAL QFont_overline *>
PROCEDURE QFont_overline ( self: QFont;
): BOOLEAN;

<* EXTERNAL QFont_setOverline *>
PROCEDURE QFont_setOverline ( self: QFont;
arg2: BOOLEAN;
);

<* EXTERNAL QFont_strikeOut *>
PROCEDURE QFont_strikeOut ( self: QFont;
): BOOLEAN;

<* EXTERNAL QFont_setStrikeOut *>
PROCEDURE QFont_setStrikeOut ( self: QFont;
arg2: BOOLEAN;
);

<* EXTERNAL QFont_fixedPitch *>
PROCEDURE QFont_fixedPitch ( self: QFont;
): BOOLEAN;

<* EXTERNAL QFont_setFixedPitch *>
PROCEDURE QFont_setFixedPitch ( self: QFont;
arg2: BOOLEAN;
);

<* EXTERNAL QFont_kerning *>
PROCEDURE QFont_kerning ( self: QFont;
): BOOLEAN;

<* EXTERNAL QFont_setKerning *>
PROCEDURE QFont_setKerning ( self: QFont;
arg2: BOOLEAN;
);

<* EXTERNAL QFont_styleHint *>
PROCEDURE QFont_styleHint ( self: QFont;
): C.int;

<* EXTERNAL QFont_styleStrategy *>
PROCEDURE QFont_styleStrategy ( self: QFont;
): C.int;

<* EXTERNAL QFont_setStyleHint *>
PROCEDURE QFont_setStyleHint ( self: QFont;
arg2, arg3: C.int;
);

<* EXTERNAL QFont_setStyleHint1 *>
PROCEDURE QFont_setStyleHint1 ( self: QFont;
arg2: C.int;
);

<* EXTERNAL QFont_setStyleStrategy *>
PROCEDURE QFont_setStyleStrategy ( self: QFont;
s: C.int;
);

<* EXTERNAL QFont_stretch *>
PROCEDURE QFont_stretch ( self: QFont;
): C.int;

<* EXTERNAL QFont_setStretch *>
PROCEDURE QFont_setStretch ( self: QFont;
arg2: C.int;
);

<* EXTERNAL QFont_letterSpacing *>
PROCEDURE QFont_letterSpacing ( self: QFont;
): C.double;

<* EXTERNAL QFont_letterSpacingType *>
PROCEDURE QFont_letterSpacingType ( self: QFont;
): C.int;

<* EXTERNAL QFont_setLetterSpacing *>
PROCEDURE QFont_setLetterSpacing ( self: QFont;
type: C.int;
spacing: C.double;
);

<* EXTERNAL QFont_wordSpacing *>
PROCEDURE QFont_wordSpacing ( self: QFont;
): C.double;

<* EXTERNAL QFont_setWordSpacing *>
PROCEDURE QFont_setWordSpacing ( self: QFont;
spacing: C.double;
);

<* EXTERNAL QFont_setCapitalization *>
PROCEDURE QFont_setCapitalization ( self: QFont;
arg2: C.int;
);

<* EXTERNAL QFont_capitalization *>
PROCEDURE QFont_capitalization ( self: QFont;
): C.int;

<* EXTERNAL QFont_rawMode *>
PROCEDURE QFont_rawMode ( self: QFont;
): BOOLEAN;

<* EXTERNAL QFont_setRawMode *>
PROCEDURE QFont_setRawMode ( self: QFont;
arg2: BOOLEAN;
);

<* EXTERNAL QFont_exactMatch *>
PROCEDURE QFont_exactMatch ( self: QFont;
): BOOLEAN;

<* EXTERNAL QFont_Op_Assign *>
PROCEDURE QFont_Op_Assign ( self: QFont;
 arg2: ADDRESS;
): ADDRESS;

<* EXTERNAL QFont_Op_Equals *>
PROCEDURE QFont_Op_Equals ( self: QFont;
 arg2: ADDRESS;
): BOOLEAN;

<* EXTERNAL QFont_Op_NotEquals *>
PROCEDURE QFont_Op_NotEquals ( self: QFont;
 arg2: ADDRESS;
): BOOLEAN;

<* EXTERNAL QFont_Op_LessThan *>
PROCEDURE QFont_Op_LessThan ( self: QFont;
 arg2: ADDRESS;
): BOOLEAN;

<* EXTERNAL QFont_isCopyOf *>
PROCEDURE QFont_isCopyOf ( self: QFont;
 arg2: ADDRESS;
): BOOLEAN;

<* EXTERNAL QFont_setRawName *>
PROCEDURE QFont_setRawName ( self: QFont;
 arg2: ADDRESS;
);

<* EXTERNAL QFont_rawName *>
PROCEDURE QFont_rawName ( self: QFont;
): ADDRESS;

<* EXTERNAL QFont_key *>
PROCEDURE QFont_key ( self: QFont;
): ADDRESS;

<* EXTERNAL QFont_toString *>
PROCEDURE QFont_toString ( self: QFont;
): ADDRESS;

<* EXTERNAL QFont_fromString *>
PROCEDURE QFont_fromString ( self: QFont;
 arg2: ADDRESS;
): BOOLEAN;

<* EXTERNAL Substitute *>
PROCEDURE Substitute ( arg1: ADDRESS;
): ADDRESS;

<* EXTERNAL InsertSubstitution *>
PROCEDURE InsertSubstitution ( arg1, arg2: ADDRESS;
);

<* EXTERNAL InsertSubstitutions *>
PROCEDURE InsertSubstitutions ( arg1, arg2: ADDRESS;
);

<* EXTERNAL RemoveSubstitution *>
PROCEDURE RemoveSubstitution ( arg1: ADDRESS;
);

<* EXTERNAL Initialize *>
PROCEDURE Initialize ();

<* EXTERNAL Cleanup *>
PROCEDURE Cleanup ();

<* EXTERNAL CacheStatistics *>
PROCEDURE CacheStatistics ();

<* EXTERNAL QFont_defaultFamily *>
PROCEDURE QFont_defaultFamily ( self: QFont;
): ADDRESS;

<* EXTERNAL QFont_lastResortFamily *>
PROCEDURE QFont_lastResortFamily ( self: QFont;
): ADDRESS;

<* EXTERNAL QFont_lastResortFont *>
PROCEDURE QFont_lastResortFont ( self: QFont;
): ADDRESS;

<* EXTERNAL QFont_resolve *>
PROCEDURE QFont_resolve ( self: QFont;
 arg2: ADDRESS;
): ADDRESS;

<* EXTERNAL QFont_resolve1 *>
PROCEDURE QFont_resolve1 ( self: QFont;
): C.unsigned_int;

<* EXTERNAL QFont_resolve2 *>
PROCEDURE QFont_resolve2 ( self: QFont;
mask: CARDINAL;
);

TYPE
QFont <: ADDRESS;

END QtFontRaw.
