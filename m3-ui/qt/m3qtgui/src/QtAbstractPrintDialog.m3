(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtAbstractPrintDialog;


IMPORT QtAbstractPrintDialogRaw;
FROM QGuiStubs IMPORT QPrinter;


IMPORT WeakRef;

PROCEDURE Delete_QAbstractPrintDialog (self: QAbstractPrintDialog; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtAbstractPrintDialogRaw.Delete_QAbstractPrintDialog(selfAdr);
  END Delete_QAbstractPrintDialog;

PROCEDURE QAbstractPrintDialog_addEnabledOption
  (self: QAbstractPrintDialog; option: PrintDialogOption; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtAbstractPrintDialogRaw.QAbstractPrintDialog_addEnabledOption(
      selfAdr, ORD(option));
  END QAbstractPrintDialog_addEnabledOption;

PROCEDURE QAbstractPrintDialog_setEnabledOptions
  (self: QAbstractPrintDialog; options: PrintDialogOptions; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtAbstractPrintDialogRaw.QAbstractPrintDialog_setEnabledOptions(
      selfAdr, ORD(options));
  END QAbstractPrintDialog_setEnabledOptions;

PROCEDURE QAbstractPrintDialog_enabledOptions
  (self: QAbstractPrintDialog; ): PrintDialogOptions =
  VAR
    ret    : INTEGER;
    result : PrintDialogOptions;
    selfAdr: ADDRESS            := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtAbstractPrintDialogRaw.QAbstractPrintDialog_enabledOptions(
             selfAdr);
    result := VAL(ret, PrintDialogOptions);
    RETURN result;
  END QAbstractPrintDialog_enabledOptions;

PROCEDURE QAbstractPrintDialog_isOptionEnabled
  (self: QAbstractPrintDialog; option: PrintDialogOption; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtAbstractPrintDialogRaw.QAbstractPrintDialog_isOptionEnabled(
             selfAdr, ORD(option));
  END QAbstractPrintDialog_isOptionEnabled;

PROCEDURE QAbstractPrintDialog_setPrintRange
  (self: QAbstractPrintDialog; range: PrintRange; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtAbstractPrintDialogRaw.QAbstractPrintDialog_setPrintRange(
      selfAdr, ORD(range));
  END QAbstractPrintDialog_setPrintRange;

PROCEDURE QAbstractPrintDialog_printRange (self: QAbstractPrintDialog; ):
  PrintRange =
  VAR
    ret    : INTEGER;
    result : PrintRange;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret :=
      QtAbstractPrintDialogRaw.QAbstractPrintDialog_printRange(selfAdr);
    result := VAL(ret, PrintRange);
    RETURN result;
  END QAbstractPrintDialog_printRange;

PROCEDURE QAbstractPrintDialog_setMinMax
  (self: QAbstractPrintDialog; min, max: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtAbstractPrintDialogRaw.QAbstractPrintDialog_setMinMax(
      selfAdr, min, max);
  END QAbstractPrintDialog_setMinMax;

PROCEDURE QAbstractPrintDialog_minPage (self: QAbstractPrintDialog; ):
  INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtAbstractPrintDialogRaw.QAbstractPrintDialog_minPage(selfAdr);
  END QAbstractPrintDialog_minPage;

PROCEDURE QAbstractPrintDialog_maxPage (self: QAbstractPrintDialog; ):
  INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtAbstractPrintDialogRaw.QAbstractPrintDialog_maxPage(selfAdr);
  END QAbstractPrintDialog_maxPage;

PROCEDURE QAbstractPrintDialog_setFromTo
  (self: QAbstractPrintDialog; fromPage, toPage: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtAbstractPrintDialogRaw.QAbstractPrintDialog_setFromTo(
      selfAdr, fromPage, toPage);
  END QAbstractPrintDialog_setFromTo;

PROCEDURE QAbstractPrintDialog_fromPage (self: QAbstractPrintDialog; ):
  INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtAbstractPrintDialogRaw.QAbstractPrintDialog_fromPage(selfAdr);
  END QAbstractPrintDialog_fromPage;

PROCEDURE QAbstractPrintDialog_toPage (self: QAbstractPrintDialog; ):
  INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtAbstractPrintDialogRaw.QAbstractPrintDialog_toPage(selfAdr);
  END QAbstractPrintDialog_toPage;

PROCEDURE QAbstractPrintDialog_printer (self: QAbstractPrintDialog; ):
  QPrinter =
  VAR
    ret    : ADDRESS;
    result : QPrinter;
    selfAdr: ADDRESS  := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtAbstractPrintDialogRaw.QAbstractPrintDialog_printer(selfAdr);

    result := NEW(QPrinter);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QAbstractPrintDialog_printer;

PROCEDURE Cleanup_QAbstractPrintDialog
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QAbstractPrintDialog := ref;
  BEGIN
    Delete_QAbstractPrintDialog(obj);
  END Cleanup_QAbstractPrintDialog;

PROCEDURE Destroy_QAbstractPrintDialog (self: QAbstractPrintDialog) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QAbstractPrintDialog);
  END Destroy_QAbstractPrintDialog;

REVEAL
  QAbstractPrintDialog =
    QAbstractPrintDialogPublic BRANDED OBJECT
    OVERRIDES
      addEnabledOption  := QAbstractPrintDialog_addEnabledOption;
      setEnabledOptions := QAbstractPrintDialog_setEnabledOptions;
      enabledOptions    := QAbstractPrintDialog_enabledOptions;
      isOptionEnabled   := QAbstractPrintDialog_isOptionEnabled;
      setPrintRange     := QAbstractPrintDialog_setPrintRange;
      printRange        := QAbstractPrintDialog_printRange;
      setMinMax         := QAbstractPrintDialog_setMinMax;
      minPage           := QAbstractPrintDialog_minPage;
      maxPage           := QAbstractPrintDialog_maxPage;
      setFromTo         := QAbstractPrintDialog_setFromTo;
      fromPage          := QAbstractPrintDialog_fromPage;
      toPage            := QAbstractPrintDialog_toPage;
      printer           := QAbstractPrintDialog_printer;
      destroyCxx        := Destroy_QAbstractPrintDialog;
    END;


BEGIN
END QtAbstractPrintDialog.
