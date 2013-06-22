(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtToolBarRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QToolBar0 *>
PROCEDURE New_QToolBar0 ( title, parent: ADDRESS;
): QToolBar;

<* EXTERNAL New_QToolBar1 *>
PROCEDURE New_QToolBar1 ( title: ADDRESS;
): QToolBar;

<* EXTERNAL New_QToolBar2 *>
PROCEDURE New_QToolBar2 ( parent: ADDRESS;
): QToolBar;

<* EXTERNAL New_QToolBar3 *>
PROCEDURE New_QToolBar3 (): QToolBar;

<* EXTERNAL Delete_QToolBar *>
PROCEDURE Delete_QToolBar ( self: QToolBar;
);

<* EXTERNAL QToolBar_setMovable *>
PROCEDURE QToolBar_setMovable ( self: QToolBar;
movable: BOOLEAN;
);

<* EXTERNAL QToolBar_isMovable *>
PROCEDURE QToolBar_isMovable ( self: QToolBar;
): BOOLEAN;

<* EXTERNAL QToolBar_setAllowedAreas *>
PROCEDURE QToolBar_setAllowedAreas ( self: QToolBar;
areas: C.int;
);

<* EXTERNAL QToolBar_allowedAreas *>
PROCEDURE QToolBar_allowedAreas ( self: QToolBar;
): C.int;

<* EXTERNAL QToolBar_isAreaAllowed *>
PROCEDURE QToolBar_isAreaAllowed ( self: QToolBar;
area: C.int;
): BOOLEAN;

<* EXTERNAL QToolBar_setOrientation *>
PROCEDURE QToolBar_setOrientation ( self: QToolBar;
orientation: C.int;
);

<* EXTERNAL QToolBar_orientation *>
PROCEDURE QToolBar_orientation ( self: QToolBar;
): C.int;

<* EXTERNAL QToolBar_clear *>
PROCEDURE QToolBar_clear ( self: QToolBar;
);

<* EXTERNAL QToolBar_addAction0_0 *>
PROCEDURE QToolBar_addAction0_0 ( self: QToolBar;
 action: ADDRESS;
);

<* EXTERNAL QToolBar_addAction1 *>
PROCEDURE QToolBar_addAction1 ( self: QToolBar;
 text: ADDRESS;
): ADDRESS;

<* EXTERNAL QToolBar_addAction2 *>
PROCEDURE QToolBar_addAction2 ( self: QToolBar;
 icon, text: ADDRESS;
): ADDRESS;

<* EXTERNAL QToolBar_addAction3 *>
PROCEDURE QToolBar_addAction3 ( self: QToolBar;
 text, receiver: ADDRESS;
 member: C.char_star;
): ADDRESS;

<* EXTERNAL QToolBar_addAction4 *>
PROCEDURE QToolBar_addAction4 ( self: QToolBar;
 icon, text, receiver: ADDRESS;
 member: C.char_star;
): ADDRESS;

<* EXTERNAL QToolBar_addSeparator *>
PROCEDURE QToolBar_addSeparator ( self: QToolBar;
): ADDRESS;

<* EXTERNAL QToolBar_insertSeparator *>
PROCEDURE QToolBar_insertSeparator ( self: QToolBar;
 before: ADDRESS;
): ADDRESS;

<* EXTERNAL QToolBar_addWidget *>
PROCEDURE QToolBar_addWidget ( self: QToolBar;
 widget: ADDRESS;
): ADDRESS;

<* EXTERNAL QToolBar_insertWidget *>
PROCEDURE QToolBar_insertWidget ( self: QToolBar;
 before, widget: ADDRESS;
): ADDRESS;

<* EXTERNAL QToolBar_actionGeometry *>
PROCEDURE QToolBar_actionGeometry ( self: QToolBar;
 action: ADDRESS;
): ADDRESS;

<* EXTERNAL QToolBar_actionAt *>
PROCEDURE QToolBar_actionAt ( self: QToolBar;
 p: ADDRESS;
): ADDRESS;

<* EXTERNAL QToolBar_actionAt1 *>
PROCEDURE QToolBar_actionAt1 ( self: QToolBar;
x, y: C.int;
): ADDRESS;

<* EXTERNAL QToolBar_toggleViewAction *>
PROCEDURE QToolBar_toggleViewAction ( self: QToolBar;
): ADDRESS;

<* EXTERNAL QToolBar_iconSize *>
PROCEDURE QToolBar_iconSize ( self: QToolBar;
): ADDRESS;

<* EXTERNAL QToolBar_toolButtonStyle *>
PROCEDURE QToolBar_toolButtonStyle ( self: QToolBar;
): C.int;

<* EXTERNAL QToolBar_widgetForAction *>
PROCEDURE QToolBar_widgetForAction ( self: QToolBar;
 action: ADDRESS;
): ADDRESS;

<* EXTERNAL QToolBar_isFloatable *>
PROCEDURE QToolBar_isFloatable ( self: QToolBar;
): BOOLEAN;

<* EXTERNAL QToolBar_setFloatable *>
PROCEDURE QToolBar_setFloatable ( self: QToolBar;
floatable: BOOLEAN;
);

<* EXTERNAL QToolBar_isFloating *>
PROCEDURE QToolBar_isFloating ( self: QToolBar;
): BOOLEAN;

<* EXTERNAL QToolBar_setIconSize *>
PROCEDURE QToolBar_setIconSize ( self: QToolBar;
 iconSize: ADDRESS;
);

<* EXTERNAL QToolBar_setToolButtonStyle *>
PROCEDURE QToolBar_setToolButtonStyle ( self: QToolBar;
toolButtonStyle: C.int;
);

TYPE
QToolBar = ADDRESS;

END QtToolBarRaw.
