(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtFocusFrame;


IMPORT QtFocusFrameRaw;
FROM QtWidget IMPORT QWidget;


IMPORT WeakRef;

PROCEDURE New_QFocusFrame0 (self: QFocusFrame; parent: QWidget; ):
  QFocusFrame =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtFocusFrameRaw.New_QFocusFrame0(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QFocusFrame);

    RETURN self;
  END New_QFocusFrame0;

PROCEDURE New_QFocusFrame1 (self: QFocusFrame; ): QFocusFrame =
  VAR result: ADDRESS;
  BEGIN
    result := QtFocusFrameRaw.New_QFocusFrame1();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QFocusFrame);

    RETURN self;
  END New_QFocusFrame1;

PROCEDURE Delete_QFocusFrame (self: QFocusFrame; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtFocusFrameRaw.Delete_QFocusFrame(selfAdr);
  END Delete_QFocusFrame;

PROCEDURE QFocusFrame_setWidget (self: QFocusFrame; widget: QWidget; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(widget.cxxObj, ADDRESS);
  BEGIN
    QtFocusFrameRaw.QFocusFrame_setWidget(selfAdr, arg2tmp);
  END QFocusFrame_setWidget;

PROCEDURE QFocusFrame_widget (self: QFocusFrame; ): QWidget =
  VAR
    ret    : ADDRESS;
    result : QWidget;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtFocusFrameRaw.QFocusFrame_widget(selfAdr);

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QFocusFrame_widget;

PROCEDURE Cleanup_QFocusFrame
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QFocusFrame := ref;
  BEGIN
    Delete_QFocusFrame(obj);
  END Cleanup_QFocusFrame;

PROCEDURE Destroy_QFocusFrame (self: QFocusFrame) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QFocusFrame);
  END Destroy_QFocusFrame;

REVEAL
  QFocusFrame = QFocusFramePublic BRANDED OBJECT
                OVERRIDES
                  init_0     := New_QFocusFrame0;
                  init_1     := New_QFocusFrame1;
                  setWidget  := QFocusFrame_setWidget;
                  widget     := QFocusFrame_widget;
                  destroyCxx := Destroy_QFocusFrame;
                END;


BEGIN
END QtFocusFrame.
