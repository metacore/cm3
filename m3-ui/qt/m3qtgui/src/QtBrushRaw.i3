(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.10
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtBrushRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QBrush0 *>
PROCEDURE New_QBrush0 (): QBrush;

<* EXTERNAL New_QBrush1 *>
PROCEDURE New_QBrush1 (bs: C.int; ): QBrush;

<* EXTERNAL New_QBrush2 *>
PROCEDURE New_QBrush2 (color: ADDRESS; bs: C.int; ): QBrush;

<* EXTERNAL New_QBrush3 *>
PROCEDURE New_QBrush3 (color: ADDRESS; ): QBrush;

<* EXTERNAL New_QBrush4 *>
PROCEDURE New_QBrush4 (color, bs: C.int; ): QBrush;

<* EXTERNAL New_QBrush5 *>
PROCEDURE New_QBrush5 (color: C.int; ): QBrush;

<* EXTERNAL New_QBrush6 *>
PROCEDURE New_QBrush6 (color, pixmap: ADDRESS; ): QBrush;

<* EXTERNAL New_QBrush7 *>
PROCEDURE New_QBrush7 (color: C.int; pixmap: ADDRESS; ): QBrush;

<* EXTERNAL New_QBrush8 *>
PROCEDURE New_QBrush8 (pixmap: ADDRESS; ): QBrush;

<* EXTERNAL New_QBrush9 *>
PROCEDURE New_QBrush9 (image: ADDRESS; ): QBrush;

<* EXTERNAL New_QBrush10 *>
PROCEDURE New_QBrush10 (brush: ADDRESS; ): QBrush;

<* EXTERNAL New_QBrush11 *>
PROCEDURE New_QBrush11 (gradient: ADDRESS; ): QBrush;

<* EXTERNAL Delete_QBrush *>
PROCEDURE Delete_QBrush (self: QBrush; );

<* EXTERNAL QBrush_Op_Brush_Assign *>
PROCEDURE QBrush_Op_Brush_Assign (self: QBrush; brush: ADDRESS; ): ADDRESS;

<* EXTERNAL QBrush_swap *>
PROCEDURE QBrush_swap (self: QBrush; other: ADDRESS; );

<* EXTERNAL QBrush_style *>
PROCEDURE QBrush_style (self: QBrush; ): C.int;

<* EXTERNAL QBrush_setStyle *>
PROCEDURE QBrush_setStyle (self: QBrush; arg2: C.int; );

<* EXTERNAL QBrush_matrix *>
PROCEDURE QBrush_matrix (self: QBrush; ): ADDRESS;

<* EXTERNAL QBrush_setMatrix *>
PROCEDURE QBrush_setMatrix (self: QBrush; mat: ADDRESS; );

<* EXTERNAL QBrush_transform *>
PROCEDURE QBrush_transform (self: QBrush; ): ADDRESS;

<* EXTERNAL QBrush_setTransform *>
PROCEDURE QBrush_setTransform (self: QBrush; arg2: ADDRESS; );

<* EXTERNAL QBrush_texture *>
PROCEDURE QBrush_texture (self: QBrush; ): ADDRESS;

<* EXTERNAL QBrush_setTexture *>
PROCEDURE QBrush_setTexture (self: QBrush; pixmap: ADDRESS; );

<* EXTERNAL QBrush_textureImage *>
PROCEDURE QBrush_textureImage (self: QBrush; ): ADDRESS;

<* EXTERNAL QBrush_setTextureImage *>
PROCEDURE QBrush_setTextureImage (self: QBrush; image: ADDRESS; );

<* EXTERNAL QBrush_color *>
PROCEDURE QBrush_color (self: QBrush; ): ADDRESS;

<* EXTERNAL QBrush_setColor *>
PROCEDURE QBrush_setColor (self: QBrush; color: ADDRESS; );

<* EXTERNAL QBrush_setColor1 *>
PROCEDURE QBrush_setColor1 (self: QBrush; color: C.int; );

<* EXTERNAL QBrush_gradient *>
PROCEDURE QBrush_gradient (self: QBrush; ): ADDRESS;

<* EXTERNAL QBrush_isOpaque *>
PROCEDURE QBrush_isOpaque (self: QBrush; ): BOOLEAN;

<* EXTERNAL QBrush_Op_Brush_Equals *>
PROCEDURE QBrush_Op_Brush_Equals (self: QBrush; b: ADDRESS; ): BOOLEAN;

<* EXTERNAL QBrush_Op_Brush_NotEquals *>
PROCEDURE QBrush_Op_Brush_NotEquals (self: QBrush; b: ADDRESS; ): BOOLEAN;

<* EXTERNAL QBrush_isDetached *>
PROCEDURE QBrush_isDetached (self: QBrush; ): BOOLEAN;

TYPE QBrush <: ADDRESS;

<* EXTERNAL New_QGradient0 *>
PROCEDURE New_QGradient0 (): QGradient;

<* EXTERNAL QGradient_type *>
PROCEDURE QGradient_type (self: QGradient; ): C.int;

<* EXTERNAL QGradient_setSpread *>
PROCEDURE QGradient_setSpread (self: QGradient; spread: C.int; );

<* EXTERNAL QGradient_spread *>
PROCEDURE QGradient_spread (self: QGradient; ): C.int;

<* EXTERNAL QGradient_setColorAt *>
PROCEDURE QGradient_setColorAt
  (self: QGradient; pos: C.double; color: ADDRESS; );

<* EXTERNAL QGradient_setStops *>
PROCEDURE QGradient_setStops (self: QGradient; stops: ADDRESS; );

<* EXTERNAL QGradient_stops *>
PROCEDURE QGradient_stops (self: QGradient; ): ADDRESS;

<* EXTERNAL QGradient_coordinateMode *>
PROCEDURE QGradient_coordinateMode (self: QGradient; ): C.int;

<* EXTERNAL QGradient_setCoordinateMode *>
PROCEDURE QGradient_setCoordinateMode (self: QGradient; mode: C.int; );

<* EXTERNAL QGradient_interpolationMode *>
PROCEDURE QGradient_interpolationMode (self: QGradient; ): C.int;

<* EXTERNAL QGradient_setInterpolationMode *>
PROCEDURE QGradient_setInterpolationMode (self: QGradient; mode: C.int; );

<* EXTERNAL QGradient_Op_Grad_Equals *>
PROCEDURE QGradient_Op_Grad_Equals (self: QGradient; gradient: ADDRESS; ):
  BOOLEAN;

<* EXTERNAL QGradient_OpGrad_NotEquals *>
PROCEDURE QGradient_OpGrad_NotEquals (self: QGradient; other: ADDRESS; ):
  BOOLEAN;

<* EXTERNAL QGradient_Op_Grad_Equals1 *>
PROCEDURE QGradient_Op_Grad_Equals1 (self: QGradient; gradient: ADDRESS; ):
  BOOLEAN;

<* EXTERNAL Delete_QGradient *>
PROCEDURE Delete_QGradient (self: QGradient; );

TYPE QGradient <: ADDRESS;

<* EXTERNAL New_QLinearGradient0 *>
PROCEDURE New_QLinearGradient0 (): QLinearGradient;

<* EXTERNAL New_QLinearGradient1 *>
PROCEDURE New_QLinearGradient1 (start, finalStop: ADDRESS; ):
  QLinearGradient;

<* EXTERNAL New_QLinearGradient2 *>
PROCEDURE New_QLinearGradient2
  (xStart, yStart, xFinalStop, yFinalStop: C.double; ): QLinearGradient;

<* EXTERNAL QLinearGradient_start *>
PROCEDURE QLinearGradient_start (self: QLinearGradient; ): ADDRESS;

<* EXTERNAL QLinearGradient_setStart *>
PROCEDURE QLinearGradient_setStart
  (self: QLinearGradient; start: ADDRESS; );

<* EXTERNAL QLinearGradient_setStart1 *>
PROCEDURE QLinearGradient_setStart1
  (self: QLinearGradient; x, y: C.double; );

<* EXTERNAL QLinearGradient_finalStop *>
PROCEDURE QLinearGradient_finalStop (self: QLinearGradient; ): ADDRESS;

<* EXTERNAL QLinearGradient_setFinalStop *>
PROCEDURE QLinearGradient_setFinalStop
  (self: QLinearGradient; stop: ADDRESS; );

<* EXTERNAL QLinearGradient_setFinalStop1 *>
PROCEDURE QLinearGradient_setFinalStop1
  (self: QLinearGradient; x, y: C.double; );

<* EXTERNAL Delete_QLinearGradient *>
PROCEDURE Delete_QLinearGradient (self: QLinearGradient; );

TYPE QLinearGradient = ADDRESS;

<* EXTERNAL New_QRadialGradient0 *>
PROCEDURE New_QRadialGradient0 (): QRadialGradient;

<* EXTERNAL New_QRadialGradient1 *>
PROCEDURE New_QRadialGradient1
  (center: ADDRESS; radius: C.double; focalPoint: ADDRESS; ):
  QRadialGradient;

<* EXTERNAL New_QRadialGradient2 *>
PROCEDURE New_QRadialGradient2 (cx, cy, radius, fx, fy: C.double; ):
  QRadialGradient;

<* EXTERNAL New_QRadialGradient3 *>
PROCEDURE New_QRadialGradient3 (center: ADDRESS; radius: C.double; ):
  QRadialGradient;

<* EXTERNAL New_QRadialGradient4 *>
PROCEDURE New_QRadialGradient4 (cx, cy, radius: C.double; ):
  QRadialGradient;

<* EXTERNAL New_QRadialGradient5 *>
PROCEDURE New_QRadialGradient5 (center      : ADDRESS;
                                centerRadius: C.double;
                                focalPoint  : ADDRESS;
                                focalRadius : C.double; ): QRadialGradient;

<* EXTERNAL New_QRadialGradient6 *>
PROCEDURE New_QRadialGradient6
  (cx, cy, centerRadius, fx, fy, focalRadius: C.double; ): QRadialGradient;

<* EXTERNAL QRadialGradient_center *>
PROCEDURE QRadialGradient_center (self: QRadialGradient; ): ADDRESS;

<* EXTERNAL QRadialGradient_setCenter *>
PROCEDURE QRadialGradient_setCenter
  (self: QRadialGradient; center: ADDRESS; );

<* EXTERNAL QRadialGradient_setCenter1 *>
PROCEDURE QRadialGradient_setCenter1
  (self: QRadialGradient; x, y: C.double; );

<* EXTERNAL QRadialGradient_focalPoint *>
PROCEDURE QRadialGradient_focalPoint (self: QRadialGradient; ): ADDRESS;

<* EXTERNAL QRadialGradient_setFocalPoint *>
PROCEDURE QRadialGradient_setFocalPoint
  (self: QRadialGradient; focalPoint: ADDRESS; );

<* EXTERNAL QRadialGradient_setFocalPoint1 *>
PROCEDURE QRadialGradient_setFocalPoint1
  (self: QRadialGradient; x, y: C.double; );

<* EXTERNAL QRadialGradient_radius *>
PROCEDURE QRadialGradient_radius (self: QRadialGradient; ): C.double;

<* EXTERNAL QRadialGradient_setRadius *>
PROCEDURE QRadialGradient_setRadius
  (self: QRadialGradient; radius: C.double; );

<* EXTERNAL QRadialGradient_centerRadius *>
PROCEDURE QRadialGradient_centerRadius (self: QRadialGradient; ): C.double;

<* EXTERNAL QRadialGradient_setCenterRadius *>
PROCEDURE QRadialGradient_setCenterRadius
  (self: QRadialGradient; radius: C.double; );

<* EXTERNAL QRadialGradient_focalRadius *>
PROCEDURE QRadialGradient_focalRadius (self: QRadialGradient; ): C.double;

<* EXTERNAL QRadialGradient_setFocalRadius *>
PROCEDURE QRadialGradient_setFocalRadius
  (self: QRadialGradient; radius: C.double; );

<* EXTERNAL Delete_QRadialGradient *>
PROCEDURE Delete_QRadialGradient (self: QRadialGradient; );

TYPE QRadialGradient = ADDRESS;

<* EXTERNAL New_QConicalGradient0 *>
PROCEDURE New_QConicalGradient0 (): QConicalGradient;

<* EXTERNAL New_QConicalGradient1 *>
PROCEDURE New_QConicalGradient1 (center: ADDRESS; startAngle: C.double; ):
  QConicalGradient;

<* EXTERNAL New_QConicalGradient2 *>
PROCEDURE New_QConicalGradient2 (cx, cy, startAngle: C.double; ):
  QConicalGradient;

<* EXTERNAL QConicalGradient_center *>
PROCEDURE QConicalGradient_center (self: QConicalGradient; ): ADDRESS;

<* EXTERNAL QConicalGradient_setCenter *>
PROCEDURE QConicalGradient_setCenter
  (self: QConicalGradient; center: ADDRESS; );

<* EXTERNAL QConicalGradient_setCenter1 *>
PROCEDURE QConicalGradient_setCenter1
  (self: QConicalGradient; x, y: C.double; );

<* EXTERNAL QConicalGradient_angle *>
PROCEDURE QConicalGradient_angle (self: QConicalGradient; ): C.double;

<* EXTERNAL QConicalGradient_setAngle *>
PROCEDURE QConicalGradient_setAngle
  (self: QConicalGradient; angle: C.double; );

<* EXTERNAL Delete_QConicalGradient *>
PROCEDURE Delete_QConicalGradient (self: QConicalGradient; );

TYPE QConicalGradient = ADDRESS;

END QtBrushRaw.
