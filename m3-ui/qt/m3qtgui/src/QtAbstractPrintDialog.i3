(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtAbstractPrintDialog;

FROM QGuiStubs IMPORT QPrinter;


FROM QtDialog IMPORT QDialog;

TYPE
  T = QAbstractPrintDialog;
  PrintDialogOptions = INTEGER;



TYPE (* Enum PrintRange *)
  PrintRange = {
 AllPages,
 Selection,
 PageRange};

CONST (* Enum PrintDialogOption *)
  None = 0;
  PrintToFile = 1;
  PrintSelection = 2;
  PrintPageRange = 4;
  PrintShowPageSize = 8;
  PrintCollateCopies = 16;
  DontUseSheet = 32;

TYPE (* Enum PrintDialogOption *)
  PrintDialogOption = [0..32];

TYPE
QAbstractPrintDialog <: QAbstractPrintDialogPublic;
QAbstractPrintDialogPublic =
QDialog BRANDED OBJECT
METHODS
addEnabledOption(option: PrintDialogOption;
);
setEnabledOptions(options: PrintDialogOptions;
);
enabledOptions(): PrintDialogOptions;
isOptionEnabled(option: PrintDialogOption;
): BOOLEAN;
setPrintRange(range: PrintRange;
);
printRange(): PrintRange;
setMinMax(min, max: INTEGER;
);
minPage(): INTEGER;
maxPage(): INTEGER;
setFromTo(fromPage, toPage: INTEGER;
);
fromPage(): INTEGER;
toPage(): INTEGER;
printer(): QPrinter;
destroyCxx();
END;


END QtAbstractPrintDialog.
