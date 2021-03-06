(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.10
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtCoreApplication;


FROM QtStringList IMPORT QStringList;
FROM QtEventLoop IMPORT ProcessEventsFlags;
FROM QtEvent IMPORT QEvent;
IMPORT M3toC;
IMPORT Ctypes AS C;
IMPORT QtCoreApplicationRaw;
FROM QtNamespace IMPORT ApplicationAttribute;


IMPORT WeakRef;
FROM QtString IMPORT QString;
FROM QtByteArray IMPORT QByteArray;
FROM QtObject IMPORT QObject;

VAR
  m3argc: C.int;
  m3argv: UNTRACED REF ARRAY OF C.char_star;

PROCEDURE New_QCoreApplication0 (         self: QCoreApplication;
                                          argc: INTEGER;
                                 READONLY argv: ARRAY OF TEXT;
                                          arg3: INTEGER;          ):
  QCoreApplication =
  VAR result: ADDRESS;

  BEGIN
    m3argc := ORD(argc);
    m3argv := NEW(UNTRACED REF ARRAY OF C.char_star, m3argc + 1);
    FOR i := 0 TO m3argc - 1 DO m3argv[i] := M3toC.CopyTtoS(argv[i]); END;
    m3argv[m3argc] := NIL;
    result := QtCoreApplicationRaw.New_QCoreApplication0(
                m3argc, ADR(m3argv[0]), arg3);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QCoreApplication);

    RETURN self;
  END New_QCoreApplication0;

PROCEDURE New_QCoreApplication1
  (self: QCoreApplication; argc: INTEGER; READONLY argv: ARRAY OF TEXT; ):
  QCoreApplication =
  VAR result: ADDRESS;

  BEGIN
    m3argc := ORD(argc);
    m3argv := NEW(UNTRACED REF ARRAY OF C.char_star, m3argc + 1);
    FOR i := 0 TO m3argc - 1 DO m3argv[i] := M3toC.CopyTtoS(argv[i]); END;
    m3argv[m3argc] := NIL;
    result :=
      QtCoreApplicationRaw.New_QCoreApplication1(m3argc, ADR(m3argv[0]));

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QCoreApplication);

    RETURN self;
  END New_QCoreApplication1;

PROCEDURE Delete_QCoreApplication (self: QCoreApplication; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtCoreApplicationRaw.Delete_QCoreApplication(selfAdr);
  END Delete_QCoreApplication;

PROCEDURE Arguments (): QStringList =
  VAR
    ret   : ADDRESS;
    result: QStringList;
  BEGIN
    ret := QtCoreApplicationRaw.Arguments();

    result := NEW(QStringList);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END Arguments;

PROCEDURE SetAttribute (attribute: ApplicationAttribute; on: BOOLEAN; ) =
  BEGIN
    QtCoreApplicationRaw.SetAttribute(ORD(attribute), on);
  END SetAttribute;

PROCEDURE SetAttribute1 (attribute: ApplicationAttribute; ) =
  BEGIN
    QtCoreApplicationRaw.SetAttribute1(ORD(attribute));
  END SetAttribute1;

PROCEDURE TestAttribute (attribute: ApplicationAttribute; ): BOOLEAN =
  BEGIN
    RETURN QtCoreApplicationRaw.TestAttribute(ORD(attribute));
  END TestAttribute;

PROCEDURE SetOrganizationDomain (orgDomain: TEXT; ) =
  VAR
    qstr_orgDomain := NEW(QString).initQString(orgDomain);
    arg1tmp        := LOOPHOLE(qstr_orgDomain.cxxObj, ADDRESS);
  BEGIN
    QtCoreApplicationRaw.SetOrganizationDomain(arg1tmp);
  END SetOrganizationDomain;

PROCEDURE OrganizationDomain (): TEXT =
  VAR
    ret   : ADDRESS;
    qstr               := NEW(QString);
    ba    : QByteArray;
    result: TEXT;
  BEGIN
    ret := QtCoreApplicationRaw.OrganizationDomain();

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END OrganizationDomain;

PROCEDURE SetOrganizationName (orgName: TEXT; ) =
  VAR
    qstr_orgName := NEW(QString).initQString(orgName);
    arg1tmp      := LOOPHOLE(qstr_orgName.cxxObj, ADDRESS);
  BEGIN
    QtCoreApplicationRaw.SetOrganizationName(arg1tmp);
  END SetOrganizationName;

PROCEDURE OrganizationName (): TEXT =
  VAR
    ret   : ADDRESS;
    qstr               := NEW(QString);
    ba    : QByteArray;
    result: TEXT;
  BEGIN
    ret := QtCoreApplicationRaw.OrganizationName();

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END OrganizationName;

PROCEDURE SetApplicationName (application: TEXT; ) =
  VAR
    qstr_application := NEW(QString).initQString(application);
    arg1tmp          := LOOPHOLE(qstr_application.cxxObj, ADDRESS);
  BEGIN
    QtCoreApplicationRaw.SetApplicationName(arg1tmp);
  END SetApplicationName;

PROCEDURE ApplicationName (): TEXT =
  VAR
    ret   : ADDRESS;
    qstr               := NEW(QString);
    ba    : QByteArray;
    result: TEXT;
  BEGIN
    ret := QtCoreApplicationRaw.ApplicationName();

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END ApplicationName;

PROCEDURE SetApplicationVersion (version: TEXT; ) =
  VAR
    qstr_version := NEW(QString).initQString(version);
    arg1tmp      := LOOPHOLE(qstr_version.cxxObj, ADDRESS);
  BEGIN
    QtCoreApplicationRaw.SetApplicationVersion(arg1tmp);
  END SetApplicationVersion;

PROCEDURE ApplicationVersion (): TEXT =
  VAR
    ret   : ADDRESS;
    qstr               := NEW(QString);
    ba    : QByteArray;
    result: TEXT;
  BEGIN
    ret := QtCoreApplicationRaw.ApplicationVersion();

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END ApplicationVersion;

PROCEDURE Exec (): INTEGER =
  BEGIN
    RETURN QtCoreApplicationRaw.Exec();
  END Exec;

PROCEDURE ProcessEvents (flags: ProcessEventsFlags; ) =
  BEGIN
    QtCoreApplicationRaw.ProcessEvents(ORD(flags));
  END ProcessEvents;

PROCEDURE ProcessEvents1 () =
  BEGIN
    QtCoreApplicationRaw.ProcessEvents1();
  END ProcessEvents1;

PROCEDURE ProcessEvents2 (flags: ProcessEventsFlags; maxtime: INTEGER; ) =
  BEGIN
    QtCoreApplicationRaw.ProcessEvents2(ORD(flags), maxtime);
  END ProcessEvents2;

PROCEDURE Exit (retcode: INTEGER; ) =
  BEGIN
    QtCoreApplicationRaw.Exit(retcode);
  END Exit;

PROCEDURE Exit1 () =
  BEGIN
    QtCoreApplicationRaw.Exit1();
  END Exit1;

PROCEDURE SendEvent (receiver: QObject; event: QEvent; ): BOOLEAN =
  VAR
    arg1tmp := LOOPHOLE(receiver.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(event.cxxObj, ADDRESS);
  BEGIN
    RETURN QtCoreApplicationRaw.SendEvent(arg1tmp, arg2tmp);
  END SendEvent;

PROCEDURE PostEvent (receiver: QObject; event: QEvent; ) =
  VAR
    arg1tmp := LOOPHOLE(receiver.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(event.cxxObj, ADDRESS);
  BEGIN
    QtCoreApplicationRaw.PostEvent(arg1tmp, arg2tmp);
  END PostEvent;

PROCEDURE PostEvent1
  (receiver: QObject; event: QEvent; priority: INTEGER; ) =
  VAR
    arg1tmp := LOOPHOLE(receiver.cxxObj, ADDRESS);
    arg2tmp := LOOPHOLE(event.cxxObj, ADDRESS);
  BEGIN
    QtCoreApplicationRaw.PostEvent1(arg1tmp, arg2tmp, priority);
  END PostEvent1;

PROCEDURE SendPostedEvents (receiver: QObject; event_type: INTEGER; ) =
  VAR arg1tmp := LOOPHOLE(receiver.cxxObj, ADDRESS);
  BEGIN
    QtCoreApplicationRaw.SendPostedEvents(arg1tmp, event_type);
  END SendPostedEvents;

PROCEDURE SendPostedEvents1 () =
  BEGIN
    QtCoreApplicationRaw.SendPostedEvents1();
  END SendPostedEvents1;

PROCEDURE RemovePostedEvents (receiver: QObject; ) =
  VAR arg1tmp := LOOPHOLE(receiver.cxxObj, ADDRESS);
  BEGIN
    QtCoreApplicationRaw.RemovePostedEvents(arg1tmp);
  END RemovePostedEvents;

PROCEDURE RemovePostedEvents1 (receiver: QObject; eventType: INTEGER; ) =
  VAR arg1tmp := LOOPHOLE(receiver.cxxObj, ADDRESS);
  BEGIN
    QtCoreApplicationRaw.RemovePostedEvents1(arg1tmp, eventType);
  END RemovePostedEvents1;

PROCEDURE HasPendingEvents (): BOOLEAN =
  BEGIN
    RETURN QtCoreApplicationRaw.HasPendingEvents();
  END HasPendingEvents;

PROCEDURE QCoreApplication_notify
  (self: QCoreApplication; arg2: QObject; arg3: QEvent; ): BOOLEAN =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(arg2.cxxObj, ADDRESS);
    arg3tmp          := LOOPHOLE(arg3.cxxObj, ADDRESS);
  BEGIN
    RETURN QtCoreApplicationRaw.QCoreApplication_notify(
             selfAdr, arg2tmp, arg3tmp);
  END QCoreApplication_notify;

PROCEDURE StartingUp (): BOOLEAN =
  BEGIN
    RETURN QtCoreApplicationRaw.StartingUp();
  END StartingUp;

PROCEDURE ClosingDown (): BOOLEAN =
  BEGIN
    RETURN QtCoreApplicationRaw.ClosingDown();
  END ClosingDown;

PROCEDURE ApplicationDirPath (): TEXT =
  VAR
    ret   : ADDRESS;
    qstr               := NEW(QString);
    ba    : QByteArray;
    result: TEXT;
  BEGIN
    ret := QtCoreApplicationRaw.ApplicationDirPath();

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END ApplicationDirPath;

PROCEDURE ApplicationFilePath (): TEXT =
  VAR
    ret   : ADDRESS;
    qstr               := NEW(QString);
    ba    : QByteArray;
    result: TEXT;
  BEGIN
    ret := QtCoreApplicationRaw.ApplicationFilePath();

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END ApplicationFilePath;

PROCEDURE ApplicationPid (): CARDINAL =
  BEGIN
    RETURN QtCoreApplicationRaw.ApplicationPid();
  END ApplicationPid;

PROCEDURE SetLibraryPaths (arg1: QStringList; ) =
  VAR arg1tmp := LOOPHOLE(arg1.cxxObj, ADDRESS);
  BEGIN
    QtCoreApplicationRaw.SetLibraryPaths(arg1tmp);
  END SetLibraryPaths;

PROCEDURE LibraryPaths (): QStringList =
  VAR
    ret   : ADDRESS;
    result: QStringList;
  BEGIN
    ret := QtCoreApplicationRaw.LibraryPaths();

    result := NEW(QStringList);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END LibraryPaths;

PROCEDURE AddLibraryPath (arg1: TEXT; ) =
  VAR
    qstr_arg1 := NEW(QString).initQString(arg1);
    arg1tmp   := LOOPHOLE(qstr_arg1.cxxObj, ADDRESS);
  BEGIN
    QtCoreApplicationRaw.AddLibraryPath(arg1tmp);
  END AddLibraryPath;

PROCEDURE RemoveLibraryPath (arg1: TEXT; ) =
  VAR
    qstr_arg1 := NEW(QString).initQString(arg1);
    arg1tmp   := LOOPHOLE(qstr_arg1.cxxObj, ADDRESS);
  BEGIN
    QtCoreApplicationRaw.RemoveLibraryPath(arg1tmp);
  END RemoveLibraryPath;

PROCEDURE Translate
  (context, key, disambiguation: TEXT; encoding: Encoding; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                 := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    arg1tmp: C.char_star;
    arg2tmp: C.char_star;
    arg3tmp: C.char_star;
  BEGIN
    arg1tmp := M3toC.CopyTtoS(context);
    arg2tmp := M3toC.CopyTtoS(key);
    arg3tmp := M3toC.CopyTtoS(disambiguation);
    ret := QtCoreApplicationRaw.Translate(
             arg1tmp, arg2tmp, arg3tmp, ORD(encoding));

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();







    RETURN result;
  END Translate;

PROCEDURE Translate1 (context, key, disambiguation: TEXT; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                 := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    arg1tmp: C.char_star;
    arg2tmp: C.char_star;
    arg3tmp: C.char_star;
  BEGIN
    arg1tmp := M3toC.CopyTtoS(context);
    arg2tmp := M3toC.CopyTtoS(key);
    arg3tmp := M3toC.CopyTtoS(disambiguation);
    ret := QtCoreApplicationRaw.Translate1(arg1tmp, arg2tmp, arg3tmp);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();







    RETURN result;
  END Translate1;

PROCEDURE Translate2 (context, key: TEXT; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                 := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    arg1tmp: C.char_star;
    arg2tmp: C.char_star;
  BEGIN
    arg1tmp := M3toC.CopyTtoS(context);
    arg2tmp := M3toC.CopyTtoS(key);
    ret := QtCoreApplicationRaw.Translate2(arg1tmp, arg2tmp);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();





    RETURN result;
  END Translate2;

PROCEDURE Translate3
  (context, key, disambiguation: TEXT; encoding: Encoding; n: INTEGER; ):
  TEXT =
  VAR
    ret    : ADDRESS;
    qstr                 := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    arg1tmp: C.char_star;
    arg2tmp: C.char_star;
    arg3tmp: C.char_star;
  BEGIN
    arg1tmp := M3toC.CopyTtoS(context);
    arg2tmp := M3toC.CopyTtoS(key);
    arg3tmp := M3toC.CopyTtoS(disambiguation);
    ret := QtCoreApplicationRaw.Translate3(
             arg1tmp, arg2tmp, arg3tmp, ORD(encoding), n);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();







    RETURN result;
  END Translate3;

PROCEDURE Flush () =
  BEGIN
    QtCoreApplicationRaw.Flush();
  END Flush;

PROCEDURE QCoreApplication_filterEvent (self     : QCoreApplication;
                                        message  : ADDRESS;
                                        outResult: UNTRACED REF LONGINT; ):
  BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtCoreApplicationRaw.QCoreApplication_filterEvent(
             selfAdr, message, outResult);
  END QCoreApplication_filterEvent;

PROCEDURE Quit () =
  BEGIN
    QtCoreApplicationRaw.Quit();
  END Quit;

PROCEDURE Cleanup_QCoreApplication
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QCoreApplication := ref;
  BEGIN
    Delete_QCoreApplication(obj);
  END Cleanup_QCoreApplication;

PROCEDURE Destroy_QCoreApplication (self: QCoreApplication) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QCoreApplication);
  END Destroy_QCoreApplication;

REVEAL
  QCoreApplication = QCoreApplicationPublic BRANDED OBJECT
                     OVERRIDES
                       init_0      := New_QCoreApplication0;
                       init_1      := New_QCoreApplication1;
                       notify      := QCoreApplication_notify;
                       filterEvent := QCoreApplication_filterEvent;
                       destroyCxx  := Destroy_QCoreApplication;
                     END;


BEGIN
END QtCoreApplication.
