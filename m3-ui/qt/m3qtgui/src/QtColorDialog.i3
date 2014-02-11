(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtColorDialog;

IMPORT QtRgb;
FROM QtColor IMPORT QColor;
FROM QtObject IMPORT QObject;
FROM QtWidget IMPORT QWidget;


FROM QtDialog IMPORT QDialog;

TYPE
  T = QColorDialog;
  ColorDialogOptions = INTEGER;


CONST                            (* Enum ColorDialogOption *)
  ShowAlphaChannel    = 1;
  NoButtons           = 2;
  DontUseNativeDialog = 4;

TYPE                             (* Enum ColorDialogOption *)
  ColorDialogOption = [1 .. 4];
PROCEDURE GetColor (initial: QColor;
                    parent : QWidget;
                    title  : TEXT;
                    options: ColorDialogOptions; ): QColor;

PROCEDURE GetColor1 (initial: QColor; parent: QWidget; title: TEXT; ):
  QColor;

PROCEDURE GetColor2 (initial: QColor; parent: QWidget; ): QColor;

PROCEDURE GetColor3 (initial: QColor; ): QColor;

PROCEDURE GetColor4 (): QColor;

PROCEDURE GetRgba (rgba: QtRgb.T; VAR ok: BOOLEAN; parent: QWidget; ):
  QtRgb.T;

PROCEDURE GetRgba1 (rgba: QtRgb.T; VAR ok: BOOLEAN; ): QtRgb.T;

PROCEDURE GetRgba2 (rgba: QtRgb.T; ): QtRgb.T;

PROCEDURE GetRgba3 (): QtRgb.T;

PROCEDURE CustomCount (): INTEGER;

PROCEDURE CustomColor (index: INTEGER; ): QtRgb.T;

PROCEDURE SetCustomColor (index: INTEGER; color: QtRgb.T; );

PROCEDURE SetStandardColor (index: INTEGER; color: QtRgb.T; );


TYPE
  QColorDialog <: QColorDialogPublic;
  QColorDialogPublic =
    QDialog BRANDED OBJECT
    METHODS
      init_0          (parent: QWidget; ): QColorDialog;
      init_1          (): QColorDialog;
      init_2          (initial: QColor; parent: QWidget; ): QColorDialog;
      init_3          (initial: QColor; ): QColorDialog;
      setCurrentColor (color: QColor; );
      currentColor    (): QColor;
      selectedColor   (): QColor;
      setOption       (option: ColorDialogOption; on: BOOLEAN; );
      setOption1      (option: ColorDialogOption; );
      testOption      (option: ColorDialogOption; ): BOOLEAN;
      setOptions      (options: ColorDialogOptions; );
      options         (): ColorDialogOptions;
      open0_0         ();
      open1           (receiver: QObject; member: TEXT; );
      setVisible      (visible: BOOLEAN; ); (* virtual *)
      destroyCxx      ();
    END;


END QtColorDialog.
