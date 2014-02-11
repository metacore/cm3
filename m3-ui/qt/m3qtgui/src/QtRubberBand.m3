(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtRubberBand;


FROM QtSize IMPORT QSize;
IMPORT QtRubberBandRaw;
FROM QtWidget IMPORT QWidget;
FROM QtPoint IMPORT QPoint;
FROM QtRect IMPORT QRect;


IMPORT WeakRef;

PROCEDURE New_QRubberBand0
  (self: QRubberBand; arg1: Shape; arg2: QWidget; ): QRubberBand =
  VAR
    result : ADDRESS;
    arg2tmp          := LOOPHOLE(arg2.cxxObj, ADDRESS);
  BEGIN
    result := QtRubberBandRaw.New_QRubberBand0(ORD(arg1), arg2tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QRubberBand);

    RETURN self;
  END New_QRubberBand0;

PROCEDURE New_QRubberBand1 (self: QRubberBand; arg1: Shape; ):
  QRubberBand =
  VAR result: ADDRESS;
  BEGIN
    result := QtRubberBandRaw.New_QRubberBand1(ORD(arg1));

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QRubberBand);

    RETURN self;
  END New_QRubberBand1;

PROCEDURE Delete_QRubberBand (self: QRubberBand; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtRubberBandRaw.Delete_QRubberBand(selfAdr);
  END Delete_QRubberBand;

PROCEDURE QRubberBand_shape (self: QRubberBand; ): Shape =
  VAR
    ret    : INTEGER;
    result : Shape;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtRubberBandRaw.QRubberBand_shape(selfAdr);
    result := VAL(ret, Shape);
    RETURN result;
  END QRubberBand_shape;

PROCEDURE QRubberBand_setGeometry (self: QRubberBand; r: QRect; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(r.cxxObj, ADDRESS);
  BEGIN
    QtRubberBandRaw.QRubberBand_setGeometry(selfAdr, arg2tmp);
  END QRubberBand_setGeometry;

PROCEDURE QRubberBand_setGeometry1
  (self: QRubberBand; x, y, w, h: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtRubberBandRaw.QRubberBand_setGeometry1(selfAdr, x, y, w, h);
  END QRubberBand_setGeometry1;

PROCEDURE QRubberBand_move (self: QRubberBand; x, y: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtRubberBandRaw.QRubberBand_move(selfAdr, x, y);
  END QRubberBand_move;

PROCEDURE QRubberBand_move1 (self: QRubberBand; p: QPoint; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(p.cxxObj, ADDRESS);
  BEGIN
    QtRubberBandRaw.QRubberBand_move1(selfAdr, arg2tmp);
  END QRubberBand_move1;

PROCEDURE QRubberBand_resize (self: QRubberBand; w, h: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtRubberBandRaw.QRubberBand_resize(selfAdr, w, h);
  END QRubberBand_resize;

PROCEDURE QRubberBand_resize1 (self: QRubberBand; s: QSize; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(s.cxxObj, ADDRESS);
  BEGIN
    QtRubberBandRaw.QRubberBand_resize1(selfAdr, arg2tmp);
  END QRubberBand_resize1;

PROCEDURE Cleanup_QRubberBand
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QRubberBand := ref;
  BEGIN
    Delete_QRubberBand(obj);
  END Cleanup_QRubberBand;

PROCEDURE Destroy_QRubberBand (self: QRubberBand) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QRubberBand);
  END Destroy_QRubberBand;

REVEAL
  QRubberBand = QRubberBandPublic BRANDED OBJECT
                OVERRIDES
                  init_0       := New_QRubberBand0;
                  init_1       := New_QRubberBand1;
                  shape        := QRubberBand_shape;
                  setGeometry  := QRubberBand_setGeometry;
                  setGeometry1 := QRubberBand_setGeometry1;
                  move         := QRubberBand_move;
                  move1        := QRubberBand_move1;
                  resize       := QRubberBand_resize;
                  resize1      := QRubberBand_resize1;
                  destroyCxx   := Destroy_QRubberBand;
                END;


BEGIN
END QtRubberBand.
