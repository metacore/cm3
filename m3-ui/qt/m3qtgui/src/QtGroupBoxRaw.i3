(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtGroupBoxRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QGroupBox0 *>
PROCEDURE New_QGroupBox0 (parent: ADDRESS; ): QGroupBox;

<* EXTERNAL New_QGroupBox1 *>
PROCEDURE New_QGroupBox1 (): QGroupBox;

<* EXTERNAL New_QGroupBox2 *>
PROCEDURE New_QGroupBox2 (title, parent: ADDRESS; ): QGroupBox;

<* EXTERNAL New_QGroupBox3 *>
PROCEDURE New_QGroupBox3 (title: ADDRESS; ): QGroupBox;

<* EXTERNAL Delete_QGroupBox *>
PROCEDURE Delete_QGroupBox (self: QGroupBox; );

<* EXTERNAL QGroupBox_title *>
PROCEDURE QGroupBox_title (self: QGroupBox; ): ADDRESS;

<* EXTERNAL QGroupBox_setTitle *>
PROCEDURE QGroupBox_setTitle (self: QGroupBox; title: ADDRESS; );

<* EXTERNAL QGroupBox_alignment *>
PROCEDURE QGroupBox_alignment (self: QGroupBox; ): C.int;

<* EXTERNAL QGroupBox_setAlignment *>
PROCEDURE QGroupBox_setAlignment (self: QGroupBox; alignment: C.int; );

<* EXTERNAL QGroupBox_minimumSizeHint *>
PROCEDURE QGroupBox_minimumSizeHint (self: QGroupBox; ): ADDRESS;

<* EXTERNAL QGroupBox_isFlat *>
PROCEDURE QGroupBox_isFlat (self: QGroupBox; ): BOOLEAN;

<* EXTERNAL QGroupBox_setFlat *>
PROCEDURE QGroupBox_setFlat (self: QGroupBox; flat: BOOLEAN; );

<* EXTERNAL QGroupBox_isCheckable *>
PROCEDURE QGroupBox_isCheckable (self: QGroupBox; ): BOOLEAN;

<* EXTERNAL QGroupBox_setCheckable *>
PROCEDURE QGroupBox_setCheckable (self: QGroupBox; checkable: BOOLEAN; );

<* EXTERNAL QGroupBox_isChecked *>
PROCEDURE QGroupBox_isChecked (self: QGroupBox; ): BOOLEAN;

<* EXTERNAL QGroupBox_setChecked *>
PROCEDURE QGroupBox_setChecked (self: QGroupBox; checked: BOOLEAN; );

TYPE QGroupBox = ADDRESS;

END QtGroupBoxRaw.
