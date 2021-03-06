(* Copyright 1996-2003 John D. Polstra.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgment:
 *      This product includes software developed by John D. Polstra.
 * 4. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *)

INTERFACE MySyslog;

IMPORT Ctypes;

CONST
  (* Priorities. *)
  LOG_EMERG   = 0;
  LOG_ALERT   = 1;
  LOG_CRIT    = 2;
  LOG_ERR     = 3;
  LOG_WARNING = 4;
  LOG_NOTICE  = 5;
  LOG_INFO    = 6;
  LOG_DEBUG   = 7;

  (* Facilities. *)
  LOG_KERN     =  0 * 8;
  LOG_USER     =  1 * 8;
  LOG_MAIL     =  2 * 8;
  LOG_DAEMON   =  3 * 8;
  LOG_AUTH     =  4 * 8;
  LOG_SYSLOG   =  5 * 8;
  LOG_LPR      =  6 * 8;
  LOG_NEWS     =  7 * 8;
  LOG_UUCP     =  8 * 8;
  LOG_CRON     =  9 * 8;
  LOG_AUTHPRIV = 10 * 8;
  LOG_FTP      = 11 * 8;
  (* Facilities 12 .. 15 are reserved. *)
  LOG_LOCAL0   = 16 * 8;
  LOG_LOCAL1   = 17 * 8;
  LOG_LOCAL2   = 18 * 8;
  LOG_LOCAL3   = 19 * 8;
  LOG_LOCAL4   = 20 * 8;
  LOG_LOCAL5   = 21 * 8;
  LOG_LOCAL6   = 22 * 8;
  LOG_LOCAL7   = 23 * 8;

  (* Option flags for the "logopt" parameter of "openlog". *)
  LOG_PID    = 16_01;
  LOG_CONS   = 16_02;
  LOG_ODELAY = 16_04;
  LOG_NDELAY = 16_08;
  LOG_NOWAIT = 16_10;
  LOG_PERROR = 16_20;

<*EXTERNAL*>
PROCEDURE syslog(priority: Ctypes.int;
                 messsage: Ctypes.const_char_star);

<*EXTERNAL*>
PROCEDURE openlog(ident: Ctypes.const_char_star;
                  logopt: Ctypes.int;
		  facility: Ctypes.int);

<*EXTERNAL*>
PROCEDURE closelog();

END MySyslog.
