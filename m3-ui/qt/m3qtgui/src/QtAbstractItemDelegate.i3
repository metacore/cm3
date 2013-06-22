(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtAbstractItemDelegate;

FROM QtAbstractItemModel IMPORT QModelIndex,QAbstractItemModel;
FROM QtEvent IMPORT QEvent;
FROM QGuiStubs IMPORT QFontMetrics,QStyleOptionViewItem,QHelpEvent;
FROM QtWidget IMPORT QWidget;
FROM QtNamespace IMPORT TextElideMode;
FROM QtAbstractItemView IMPORT QAbstractItemView;


FROM QtObject IMPORT QObject;
TYPE
  T = QAbstractItemDelegate;


TYPE (* Enum EndEditHint *)
  EndEditHint = {
 NoHint,
 EditNextItem,
 EditPreviousItem,
 SubmitModelCache,
 RevertModelCache};
PROCEDURE ElidedText ( fontMetrics: QFontMetrics;
width: INTEGER;
mode: TextElideMode;
 text: TEXT;
): TEXT;


TYPE
QAbstractItemDelegate <: QAbstractItemDelegatePublic;
QAbstractItemDelegatePublic =
QObject BRANDED OBJECT
METHODS
createEditor( parent: QWidget;
 option: QStyleOptionViewItem;
 index: QModelIndex;
): QWidget;  (*  virtual *)
setEditorData( editor: QWidget;
 index: QModelIndex;
);  (*  virtual *)
setModelData( editor: QWidget;
 model: QAbstractItemModel;
 index: QModelIndex;
);  (*  virtual *)
updateEditorGeometry( editor: QWidget;
 option: QStyleOptionViewItem;
 index: QModelIndex;
);  (*  virtual *)
editorEvent( event: QEvent;
 model: QAbstractItemModel;
 option: QStyleOptionViewItem;
 index: QModelIndex;
): BOOLEAN;  (*  virtual *)
helpEvent( event: QHelpEvent;
 view: QAbstractItemView;
 option: QStyleOptionViewItem;
 index: QModelIndex;
): BOOLEAN;
destroyCxx();
END;


END QtAbstractItemDelegate.
