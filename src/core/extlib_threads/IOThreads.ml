(*
 * IOThread - Abstract input/output, threaded version
 * Copyright (C) 1996 Xavier Leroy
 *               2003 Nicolas Cannasse
 *               2007 Zheng Li
 *               2008 David Teller
 * 
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version,
 * with the special exception on linking described in file LICENSE.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *)

include IO

open ExtMutex

let io_mutex          = Mutex.create ()
let io_lock           = fun () -> Mutex.lock io_mutex
let io_unlock         = fun () -> Mutex.unlock io_mutex
let _ = 
  InnerIO.lock := io_lock;
  InnerIO.unlock:=io_unlock

(*let synchronize_in ?(lock=Mutex.create ()) inp =
  wrap_in 
    ~read: (fun () -> read inp)
    ~input:(input inp)
    ~close:(Std.identity)
    ~underlying:inp
*)

let synchronize_in ?lock inp =
  wrap_in
    ~read:(Mutex.synchronize ?lock (fun () -> read inp))
    ~input:(Mutex.synchronize ?lock (fun s p l -> input inp s p l))
    ~close:(Std.identity)
    ~underlying:[inp]

let synchronize_out ?lock out =
  wrap_out
    ~write: (Mutex.synchronize ?lock (fun c -> write out c))
    ~output:(Mutex.synchronize ?lock (fun s p l -> output out s p l))
    ~flush: (Mutex.synchronize ?lock (fun () -> flush out))
    ~close: (Std.identity)
    ~underlying:[out]