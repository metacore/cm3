(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtList;



TYPE T = QStringListBase;


TYPE
  QStringListBase <: QStringListBasePublic;
  QStringListBasePublic =
    BRANDED OBJECT
      cxxObj: ADDRESS;
    METHODS
      QStringListBase (): QStringListBase;
      size            (): INTEGER;
      detach          ();
      detachShared    ();
      isDetached      (): BOOLEAN;
      setSharable     (sharable: BOOLEAN; );
      isEmpty         (): BOOLEAN;
      clear           ();
      at              (i: INTEGER; ): TEXT;
      reserve         (size: INTEGER; );
      append          (t: TEXT; );
      prepend         (t: TEXT; );
      insert          (i: INTEGER; t: TEXT; );
      replace         (i: INTEGER; t: TEXT; );
      removeAt        (i: INTEGER; );
      removeAll       (t: TEXT; ): INTEGER;
      removeOne       (t: TEXT; ): BOOLEAN;
      takeAt          (i: INTEGER; ): TEXT;
      takeFirst       (): TEXT;
      takeLast        (): TEXT;
      move            (from, to: INTEGER; );
      indexOf         (t: TEXT; from: INTEGER; ): INTEGER;
      indexOf1        (t: TEXT; ): INTEGER;
      lastIndexOf     (t: TEXT; from: INTEGER; ): INTEGER;
      lastIndexOf1    (t: TEXT; ): INTEGER;
      count           (t: TEXT; ): INTEGER;
      count1          (): INTEGER;
      length          (): INTEGER;
      first           (): TEXT;
      first1          (): TEXT;
      last            (): TEXT;
      last1           (): TEXT;
      removeFirst     ();
      removeLast      ();
      startsWith      (t: TEXT; ): BOOLEAN;
      endsWith        (t: TEXT; ): BOOLEAN;
      value           (i: INTEGER; ): TEXT;
      value1          (i: INTEGER; defaultValue: TEXT; ): TEXT;
      push_back       (t: TEXT; );
      push_front      (t: TEXT; );
      front           (): TEXT;
      front1          (): TEXT;
      back            (): TEXT;
      back1           (): TEXT;
      pop_front       ();
      pop_back        ();
      empty           (): BOOLEAN;
      destroyCxx      ();
    END;


END QtList.
