(* Copyright (C) 1990, Digital Equipment Corporation.         *)
(* All rights reserved.                                       *)
(* See the file COPYRIGHT for a full description.             *)

INTERFACE Usysdep;

FROM Cstdint IMPORT uint32_t;
FROM Ctypes IMPORT char_star, void_star, int;
IMPORT Upthreadtypes;

(* INTERFACE Unix; *)

CONST
  MaxPathLen = 1024;
  MSETUID = 8_4000;
  MSETGID = 8_2000;
  MSTICKY = 8_1000;

  O_RDONLY = 0;
  O_RDWR = 2;
  O_CREAT = 16_0040;
  O_EXCL = 16_0080;
  O_TRUNC = 16_0200;
  O_NONBLOCK = 16_0800;

  MAX_FDSET = 1024;

TYPE
  mode_t = uint32_t;

(* INTERFACE Upthread; *)

TYPE
  pthread_t = void_star;
  pthread_attr_t = Upthreadtypes.pthread_attr_t;
  pthread_mutex_t = Upthreadtypes.pthread_mutex_t;
  pthread_cond_t = RECORD data: ARRAY[1..6] OF LONGINT; END;
  pthread_key_t = uint32_t;

  destructor_t = PROCEDURE(arg: ADDRESS);
  start_routine_t = PROCEDURE(arg: ADDRESS): ADDRESS;

CONST
  PTHREAD_MUTEX_INITIALIZER = pthread_mutex_t {0, .. };
  PTHREAD_COND_INITIALIZER = pthread_cond_t { ARRAY[1..6] OF LONGINT { 0L, .. } };

(* INTERFACE Usignal; *)

CONST
  SIGINT = 2;
  SIGKILL = 9;

(* INTERFACE Usocket; *)

CONST
  SOCK_STREAM = 1;
  SOCK_DGRAM = 2;
  SO_REUSEADDR = 2;
  SO_KEEPALIVE = 9;
  SO_LINGER = 13;
  SOL_SOCKET = 1;
  AF_INET = 2;
  MSG_PEEK = 2;

TYPE
  struct_linger = RECORD
    l_onoff: int;
    l_linger: int;
  END;

(* INTERFACE Utime; *)

TYPE
  struct_timeval = RECORD
    tv_sec: INTEGER;
    tv_usec: INTEGER;
  END;

  struct_tm = RECORD
    tm_sec:   int;
    tm_min:   int;
    tm_hour:  int;
    tm_mday:  int;
    tm_mon:   int;
    tm_year:  int;
    tm_wday:  int;
    tm_yday:  int;
    tm_isdst: int;
    tm_gmtoff:INTEGER;
    tm_zone:  char_star;
  END;

(* INTERFACE Utypes; *)

  clock_t = INTEGER; (* ideally always 64 bits *)
  gid_t = uint32_t;
  pid_t = int;
  time_t = INTEGER; (* ideally always 64 bits *)
  uid_t = uint32_t;

  socklen_t = uint32_t;
  hostent_addrtype_t = int;
  hostent_length_t = int;

(* RTMachine.i3 *)
CONST SIG_SUSPEND = 64;  (* NSIG - 1 signals are 1-64, this is the last one *) (* 128 on MIPS *)

END Usysdep.
