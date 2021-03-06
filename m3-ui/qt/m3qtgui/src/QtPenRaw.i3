(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.10
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtPenRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QPen0 *>
PROCEDURE New_QPen0 (): QPen;

<* EXTERNAL New_QPen1 *>
PROCEDURE New_QPen1 (arg1: C.int; ): QPen;

<* EXTERNAL New_QPen2 *>
PROCEDURE New_QPen2 (color: ADDRESS; ): QPen;

<* EXTERNAL New_QPen3 *>
PROCEDURE New_QPen3 (brush: ADDRESS; width: C.double; s, c, j: C.int; ):
  QPen;

<* EXTERNAL New_QPen4 *>
PROCEDURE New_QPen4 (brush: ADDRESS; width: C.double; s, c: C.int; ): QPen;

<* EXTERNAL New_QPen5 *>
PROCEDURE New_QPen5 (brush: ADDRESS; width: C.double; s: C.int; ): QPen;

<* EXTERNAL New_QPen6 *>
PROCEDURE New_QPen6 (brush: ADDRESS; width: C.double; ): QPen;

<* EXTERNAL New_QPen7 *>
PROCEDURE New_QPen7 (pen: ADDRESS; ): QPen;

<* EXTERNAL Delete_QPen *>
PROCEDURE Delete_QPen (self: QPen; );

<* EXTERNAL QPen_swap *>
PROCEDURE QPen_swap (self: QPen; other: ADDRESS; );

<* EXTERNAL QPen_style *>
PROCEDURE QPen_style (self: QPen; ): C.int;

<* EXTERNAL QPen_setStyle *>
PROCEDURE QPen_setStyle (self: QPen; arg2: C.int; );

<* EXTERNAL QPen_dashOffset *>
PROCEDURE QPen_dashOffset (self: QPen; ): C.double;

<* EXTERNAL QPen_setDashOffset *>
PROCEDURE QPen_setDashOffset (self: QPen; doffset: C.double; );

<* EXTERNAL QPen_miterLimit *>
PROCEDURE QPen_miterLimit (self: QPen; ): C.double;

<* EXTERNAL QPen_setMiterLimit *>
PROCEDURE QPen_setMiterLimit (self: QPen; limit: C.double; );

<* EXTERNAL QPen_widthF *>
PROCEDURE QPen_widthF (self: QPen; ): C.double;

<* EXTERNAL QPen_setWidthF *>
PROCEDURE QPen_setWidthF (self: QPen; width: C.double; );

<* EXTERNAL QPen_width *>
PROCEDURE QPen_width (self: QPen; ): C.int;

<* EXTERNAL QPen_setWidth *>
PROCEDURE QPen_setWidth (self: QPen; width: C.int; );

<* EXTERNAL QPen_color *>
PROCEDURE QPen_color (self: QPen; ): ADDRESS;

<* EXTERNAL QPen_setColor *>
PROCEDURE QPen_setColor (self: QPen; color: ADDRESS; );

<* EXTERNAL QPen_brush *>
PROCEDURE QPen_brush (self: QPen; ): ADDRESS;

<* EXTERNAL QPen_setBrush *>
PROCEDURE QPen_setBrush (self: QPen; brush: ADDRESS; );

<* EXTERNAL QPen_isSolid *>
PROCEDURE QPen_isSolid (self: QPen; ): BOOLEAN;

<* EXTERNAL QPen_capStyle *>
PROCEDURE QPen_capStyle (self: QPen; ): C.int;

<* EXTERNAL QPen_setCapStyle *>
PROCEDURE QPen_setCapStyle (self: QPen; pcs: C.int; );

<* EXTERNAL QPen_joinStyle *>
PROCEDURE QPen_joinStyle (self: QPen; ): C.int;

<* EXTERNAL QPen_setJoinStyle *>
PROCEDURE QPen_setJoinStyle (self: QPen; pcs: C.int; );

<* EXTERNAL QPen_isCosmetic *>
PROCEDURE QPen_isCosmetic (self: QPen; ): BOOLEAN;

<* EXTERNAL QPen_setCosmetic *>
PROCEDURE QPen_setCosmetic (self: QPen; cosmetic: BOOLEAN; );

<* EXTERNAL QPen_isDetached *>
PROCEDURE QPen_isDetached (self: QPen; ): BOOLEAN;

TYPE QPen <: ADDRESS;

END QtPenRaw.
