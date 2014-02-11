(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtMenuBar;


FROM QtIcon IMPORT QIcon;
FROM QtSize IMPORT QSize;
IMPORT QtMenuBarRaw;
FROM QtObject IMPORT QObject;
IMPORT M3toC;
FROM QtWidget IMPORT QWidget;
FROM QtAction IMPORT QAction;
FROM QtString IMPORT QString;
IMPORT Ctypes AS C;
FROM QtMenu IMPORT QMenu;
FROM QtPoint IMPORT QPoint;
FROM QtRect IMPORT QRect;
FROM QtNamespace IMPORT Corner;


IMPORT WeakRef;

PROCEDURE New_QMenuBar0 (self: QMenuBar; parent: QWidget; ): QMenuBar =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtMenuBarRaw.New_QMenuBar0(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QMenuBar);

    RETURN self;
  END New_QMenuBar0;

PROCEDURE New_QMenuBar1 (self: QMenuBar; ): QMenuBar =
  VAR result: ADDRESS;
  BEGIN
    result := QtMenuBarRaw.New_QMenuBar1();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QMenuBar);

    RETURN self;
  END New_QMenuBar1;

PROCEDURE Delete_QMenuBar (self: QMenuBar; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtMenuBarRaw.Delete_QMenuBar(selfAdr);
  END Delete_QMenuBar;

PROCEDURE QMenuBar_addAction0_0 (self: QMenuBar; action: QAction; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(action.cxxObj, ADDRESS);
  BEGIN
    QtMenuBarRaw.QMenuBar_addAction0_0(selfAdr, arg2tmp);
  END QMenuBar_addAction0_0;

PROCEDURE QMenuBar_addAction1 (self: QMenuBar; text: TEXT; ): QAction =
  VAR
    ret      : ADDRESS;
    result   : QAction;
    selfAdr  : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_text          := NEW(QString).initQString(text);
    arg2tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
  BEGIN
    ret := QtMenuBarRaw.QMenuBar_addAction1(selfAdr, arg2tmp);

    result := NEW(QAction);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QMenuBar_addAction1;

PROCEDURE QMenuBar_addAction2
  (self: QMenuBar; text: TEXT; receiver: QObject; member: TEXT; ):
  QAction =
  VAR
    ret      : ADDRESS;
    result   : QAction;
    selfAdr  : ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_text              := NEW(QString).initQString(text);
    arg2tmp                := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
    arg3tmp                := LOOPHOLE(receiver.cxxObj, ADDRESS);
    arg4tmp  : C.char_star;
  BEGIN
    arg4tmp := M3toC.CopyTtoS(member);
    ret :=
      QtMenuBarRaw.QMenuBar_addAction2(selfAdr, arg2tmp, arg3tmp, arg4tmp);

    result := NEW(QAction);
    result.cxxObj := ret;
    result.destroyCxx();



    RETURN result;
  END QMenuBar_addAction2;

PROCEDURE QMenuBar_addMenu (self: QMenuBar; menu: QMenu; ): QAction =
  VAR
    ret    : ADDRESS;
    result : QAction;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(menu.cxxObj, ADDRESS);
  BEGIN
    ret := QtMenuBarRaw.QMenuBar_addMenu(selfAdr, arg2tmp);

    result := NEW(QAction);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QMenuBar_addMenu;

PROCEDURE QMenuBar_addMenu1 (self: QMenuBar; title: TEXT; ): QMenu =
  VAR
    ret       : ADDRESS;
    result    : QMenu;
    selfAdr   : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_title          := NEW(QString).initQString(title);
    arg2tmp             := LOOPHOLE(qstr_title.cxxObj, ADDRESS);
  BEGIN
    ret := QtMenuBarRaw.QMenuBar_addMenu1(selfAdr, arg2tmp);

    result := NEW(QMenu);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QMenuBar_addMenu1;

PROCEDURE QMenuBar_addMenu2 (self: QMenuBar; icon: QIcon; title: TEXT; ):
  QMenu =
  VAR
    ret       : ADDRESS;
    result    : QMenu;
    selfAdr   : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp             := LOOPHOLE(icon.cxxObj, ADDRESS);
    qstr_title          := NEW(QString).initQString(title);
    arg3tmp             := LOOPHOLE(qstr_title.cxxObj, ADDRESS);
  BEGIN
    ret := QtMenuBarRaw.QMenuBar_addMenu2(selfAdr, arg2tmp, arg3tmp);

    result := NEW(QMenu);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QMenuBar_addMenu2;

PROCEDURE QMenuBar_addSeparator (self: QMenuBar; ): QAction =
  VAR
    ret    : ADDRESS;
    result : QAction;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtMenuBarRaw.QMenuBar_addSeparator(selfAdr);

    result := NEW(QAction);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QMenuBar_addSeparator;

PROCEDURE QMenuBar_insertSeparator (self: QMenuBar; before: QAction; ):
  QAction =
  VAR
    ret    : ADDRESS;
    result : QAction;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(before.cxxObj, ADDRESS);
  BEGIN
    ret := QtMenuBarRaw.QMenuBar_insertSeparator(selfAdr, arg2tmp);

    result := NEW(QAction);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QMenuBar_insertSeparator;

PROCEDURE QMenuBar_insertMenu
  (self: QMenuBar; before: QAction; menu: QMenu; ): QAction =
  VAR
    ret    : ADDRESS;
    result : QAction;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(before.cxxObj, ADDRESS);
    arg3tmp          := LOOPHOLE(menu.cxxObj, ADDRESS);
  BEGIN
    ret := QtMenuBarRaw.QMenuBar_insertMenu(selfAdr, arg2tmp, arg3tmp);

    result := NEW(QAction);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QMenuBar_insertMenu;

PROCEDURE QMenuBar_clear (self: QMenuBar; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtMenuBarRaw.QMenuBar_clear(selfAdr);
  END QMenuBar_clear;

PROCEDURE QMenuBar_activeAction (self: QMenuBar; ): QAction =
  VAR
    ret    : ADDRESS;
    result : QAction;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtMenuBarRaw.QMenuBar_activeAction(selfAdr);

    result := NEW(QAction);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QMenuBar_activeAction;

PROCEDURE QMenuBar_setActiveAction (self: QMenuBar; action: QAction; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(action.cxxObj, ADDRESS);
  BEGIN
    QtMenuBarRaw.QMenuBar_setActiveAction(selfAdr, arg2tmp);
  END QMenuBar_setActiveAction;

PROCEDURE QMenuBar_setDefaultUp (self: QMenuBar; arg2: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtMenuBarRaw.QMenuBar_setDefaultUp(selfAdr, arg2);
  END QMenuBar_setDefaultUp;

PROCEDURE QMenuBar_isDefaultUp (self: QMenuBar; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtMenuBarRaw.QMenuBar_isDefaultUp(selfAdr);
  END QMenuBar_isDefaultUp;

PROCEDURE QMenuBar_sizeHint (self: QMenuBar; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtMenuBarRaw.QMenuBar_sizeHint(selfAdr);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QMenuBar_sizeHint;

PROCEDURE QMenuBar_minimumSizeHint (self: QMenuBar; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtMenuBarRaw.QMenuBar_minimumSizeHint(selfAdr);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QMenuBar_minimumSizeHint;

PROCEDURE QMenuBar_heightForWidth (self: QMenuBar; arg2: INTEGER; ):
  INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtMenuBarRaw.QMenuBar_heightForWidth(selfAdr, arg2);
  END QMenuBar_heightForWidth;

PROCEDURE QMenuBar_actionGeometry (self: QMenuBar; arg2: QAction; ):
  QRect =
  VAR
    ret    : ADDRESS;
    result : QRect;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(arg2.cxxObj, ADDRESS);
  BEGIN
    ret := QtMenuBarRaw.QMenuBar_actionGeometry(selfAdr, arg2tmp);

    result := NEW(QRect);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QMenuBar_actionGeometry;

PROCEDURE QMenuBar_actionAt (self: QMenuBar; arg2: QPoint; ): QAction =
  VAR
    ret    : ADDRESS;
    result : QAction;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(arg2.cxxObj, ADDRESS);
  BEGIN
    ret := QtMenuBarRaw.QMenuBar_actionAt(selfAdr, arg2tmp);

    result := NEW(QAction);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QMenuBar_actionAt;

PROCEDURE QMenuBar_setCornerWidget
  (self: QMenuBar; w: QWidget; corner: Corner; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(w.cxxObj, ADDRESS);
  BEGIN
    QtMenuBarRaw.QMenuBar_setCornerWidget(selfAdr, arg2tmp, ORD(corner));
  END QMenuBar_setCornerWidget;

PROCEDURE QMenuBar_setCornerWidget1 (self: QMenuBar; w: QWidget; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(w.cxxObj, ADDRESS);
  BEGIN
    QtMenuBarRaw.QMenuBar_setCornerWidget1(selfAdr, arg2tmp);
  END QMenuBar_setCornerWidget1;

PROCEDURE QMenuBar_cornerWidget (self: QMenuBar; corner: Corner; ):
  QWidget =
  VAR
    ret    : ADDRESS;
    result : QWidget;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtMenuBarRaw.QMenuBar_cornerWidget(selfAdr, ORD(corner));

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QMenuBar_cornerWidget;

PROCEDURE QMenuBar_cornerWidget1 (self: QMenuBar; ): QWidget =
  VAR
    ret    : ADDRESS;
    result : QWidget;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtMenuBarRaw.QMenuBar_cornerWidget1(selfAdr);

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QMenuBar_cornerWidget1;

PROCEDURE QMenuBar_isNativeMenuBar (self: QMenuBar; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtMenuBarRaw.QMenuBar_isNativeMenuBar(selfAdr);
  END QMenuBar_isNativeMenuBar;

PROCEDURE QMenuBar_setNativeMenuBar
  (self: QMenuBar; nativeMenuBar: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtMenuBarRaw.QMenuBar_setNativeMenuBar(selfAdr, nativeMenuBar);
  END QMenuBar_setNativeMenuBar;

PROCEDURE QMenuBar_setVisible (self: QMenuBar; visible: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtMenuBarRaw.QMenuBar_setVisible(selfAdr, visible);
  END QMenuBar_setVisible;

PROCEDURE Cleanup_QMenuBar
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QMenuBar := ref;
  BEGIN
    Delete_QMenuBar(obj);
  END Cleanup_QMenuBar;

PROCEDURE Destroy_QMenuBar (self: QMenuBar) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QMenuBar);
  END Destroy_QMenuBar;

REVEAL
  QMenuBar = QMenuBarPublic BRANDED OBJECT
             OVERRIDES
               init_0           := New_QMenuBar0;
               init_1           := New_QMenuBar1;
               addAction0_0     := QMenuBar_addAction0_0;
               addAction1       := QMenuBar_addAction1;
               addAction2       := QMenuBar_addAction2;
               addMenu          := QMenuBar_addMenu;
               addMenu1         := QMenuBar_addMenu1;
               addMenu2         := QMenuBar_addMenu2;
               addSeparator     := QMenuBar_addSeparator;
               insertSeparator  := QMenuBar_insertSeparator;
               insertMenu       := QMenuBar_insertMenu;
               clear            := QMenuBar_clear;
               activeAction     := QMenuBar_activeAction;
               setActiveAction  := QMenuBar_setActiveAction;
               setDefaultUp     := QMenuBar_setDefaultUp;
               isDefaultUp      := QMenuBar_isDefaultUp;
               sizeHint         := QMenuBar_sizeHint;
               minimumSizeHint  := QMenuBar_minimumSizeHint;
               heightForWidth   := QMenuBar_heightForWidth;
               actionGeometry   := QMenuBar_actionGeometry;
               actionAt         := QMenuBar_actionAt;
               setCornerWidget  := QMenuBar_setCornerWidget;
               setCornerWidget1 := QMenuBar_setCornerWidget1;
               cornerWidget     := QMenuBar_cornerWidget;
               cornerWidget1    := QMenuBar_cornerWidget1;
               isNativeMenuBar  := QMenuBar_isNativeMenuBar;
               setNativeMenuBar := QMenuBar_setNativeMenuBar;
               setVisible       := QMenuBar_setVisible;
               destroyCxx       := Destroy_QMenuBar;
             END;


BEGIN
END QtMenuBar.
