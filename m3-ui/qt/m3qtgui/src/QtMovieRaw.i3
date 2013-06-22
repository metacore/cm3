(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtMovieRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QMovie0 *>
PROCEDURE New_QMovie0 ( parent: ADDRESS;
): QMovie;

<* EXTERNAL New_QMovie1 *>
PROCEDURE New_QMovie1 (): QMovie;

<* EXTERNAL New_QMovie2 *>
PROCEDURE New_QMovie2 ( device, format, parent: ADDRESS;
): QMovie;

<* EXTERNAL New_QMovie3 *>
PROCEDURE New_QMovie3 ( device, format: ADDRESS;
): QMovie;

<* EXTERNAL New_QMovie4 *>
PROCEDURE New_QMovie4 ( device: ADDRESS;
): QMovie;

<* EXTERNAL New_QMovie5 *>
PROCEDURE New_QMovie5 ( fileName, format, parent: ADDRESS;
): QMovie;

<* EXTERNAL New_QMovie6 *>
PROCEDURE New_QMovie6 ( fileName, format: ADDRESS;
): QMovie;

<* EXTERNAL New_QMovie7 *>
PROCEDURE New_QMovie7 ( fileName: ADDRESS;
): QMovie;

<* EXTERNAL Delete_QMovie *>
PROCEDURE Delete_QMovie ( self: QMovie;
);

<* EXTERNAL QMovie_setDevice *>
PROCEDURE QMovie_setDevice ( self: QMovie;
 device: ADDRESS;
);

<* EXTERNAL QMovie_device *>
PROCEDURE QMovie_device ( self: QMovie;
): ADDRESS;

<* EXTERNAL QMovie_setFileName *>
PROCEDURE QMovie_setFileName ( self: QMovie;
 fileName: ADDRESS;
);

<* EXTERNAL QMovie_fileName *>
PROCEDURE QMovie_fileName ( self: QMovie;
): ADDRESS;

<* EXTERNAL QMovie_setFormat *>
PROCEDURE QMovie_setFormat ( self: QMovie;
 format: ADDRESS;
);

<* EXTERNAL QMovie_format *>
PROCEDURE QMovie_format ( self: QMovie;
): ADDRESS;

<* EXTERNAL QMovie_setBackgroundColor *>
PROCEDURE QMovie_setBackgroundColor ( self: QMovie;
 color: ADDRESS;
);

<* EXTERNAL QMovie_state *>
PROCEDURE QMovie_state ( self: QMovie;
): C.int;

<* EXTERNAL QMovie_frameRect *>
PROCEDURE QMovie_frameRect ( self: QMovie;
): ADDRESS;

<* EXTERNAL QMovie_currentImage *>
PROCEDURE QMovie_currentImage ( self: QMovie;
): ADDRESS;

<* EXTERNAL QMovie_isValid *>
PROCEDURE QMovie_isValid ( self: QMovie;
): BOOLEAN;

<* EXTERNAL QMovie_jumpToFrame *>
PROCEDURE QMovie_jumpToFrame ( self: QMovie;
frameNumber: C.int;
): BOOLEAN;

<* EXTERNAL QMovie_loopCount *>
PROCEDURE QMovie_loopCount ( self: QMovie;
): C.int;

<* EXTERNAL QMovie_frameCount *>
PROCEDURE QMovie_frameCount ( self: QMovie;
): C.int;

<* EXTERNAL QMovie_nextFrameDelay *>
PROCEDURE QMovie_nextFrameDelay ( self: QMovie;
): C.int;

<* EXTERNAL QMovie_currentFrameNumber *>
PROCEDURE QMovie_currentFrameNumber ( self: QMovie;
): C.int;

<* EXTERNAL QMovie_speed *>
PROCEDURE QMovie_speed ( self: QMovie;
): C.int;

<* EXTERNAL QMovie_scaledSize *>
PROCEDURE QMovie_scaledSize ( self: QMovie;
): ADDRESS;

<* EXTERNAL QMovie_setScaledSize *>
PROCEDURE QMovie_setScaledSize ( self: QMovie;
 size: ADDRESS;
);

<* EXTERNAL QMovie_cacheMode *>
PROCEDURE QMovie_cacheMode ( self: QMovie;
): C.int;

<* EXTERNAL QMovie_setCacheMode *>
PROCEDURE QMovie_setCacheMode ( self: QMovie;
mode: C.int;
);

<* EXTERNAL QMovie_cacheMode1 *>
PROCEDURE QMovie_cacheMode1 ( self: QMovie;
): C.int;

<* EXTERNAL QMovie_start *>
PROCEDURE QMovie_start ( self: QMovie;
);

<* EXTERNAL QMovie_jumpToNextFrame *>
PROCEDURE QMovie_jumpToNextFrame ( self: QMovie;
): BOOLEAN;

<* EXTERNAL QMovie_setPaused *>
PROCEDURE QMovie_setPaused ( self: QMovie;
paused: BOOLEAN;
);

<* EXTERNAL QMovie_stop *>
PROCEDURE QMovie_stop ( self: QMovie;
);

<* EXTERNAL QMovie_setSpeed *>
PROCEDURE QMovie_setSpeed ( self: QMovie;
percentSpeed: C.int;
);

TYPE
QMovie = ADDRESS;

END QtMovieRaw.
