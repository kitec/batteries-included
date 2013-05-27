(* open this to extend all Foo with BatFoo *)
#include "src/config_incl.ml"

module Legacy = struct
  include Pervasives

#if not BATTERIES_JS

  module Arg = Arg

#endif

  module Array = Array
  module ArrayLabels = ArrayLabels

#if not BATTERIES_JS

  module Buffer = Buffer
  module Callback = Callback

#endif

  module Char = Char

#if not BATTERIES_JS

  module Complex = Complex
  module Digest = Digest
  module Filename = Filename
  module Format = Format
  module Gc = Gc
  module Genlex = Genlex

#endif

  module Hashtbl = Hashtbl

#if not BATTERIES_JS

  module Int32 = Int32
  module Int64 = Int64
  module Lazy = Lazy
  module Lexing = Lexing

#endif

  module List = List
  module ListLabels = ListLabels
  module Map = Map

#if not BATTERIES_JS

  module Marshal = Marshal
  module MoreLabels = MoreLabels
  module Nativeint = Nativeint
  module Oo = Oo
  module Parsing = Parsing
  module Printexc = Printexc
  module Printf = Printf

#endif

  module Queue = Queue

#if not BATTERIES_JS

  module Random = Random
  module Scanf = Scanf

#endif

  module Set = Set

#if not BATTERIES_JS

  module Sort = Sort
  module Stack = Stack
  module StdLabels = StdLabels
  module Stream = Stream

#endif

  module String = String
  module StringLabels = StringLabels

#if not BATTERIES_JS

  module Sys = Sys
  module Weak = Weak
  module Unix = Unix
  module Num = Num
  module Big_int = Big_int
  module Bigarray = Bigarray
  module Str = Str

#endif

end

(* stdlib modules *)
(* Arg *)
module Array = BatArray

#if not BATTERIES_JS

(* ArrayLabels *)
module Buffer = BatBuffer
(* Callback *)

#endif

module Char = BatChar

#if not BATTERIES_JS

module Complex = BatComplex
module Digest = BatDigest
(* Filename *)
module Format = BatFormat
module Gc = BatGc
module Genlex = BatGenlex

#endif

module Hashtbl = BatHashtbl

#if not BATTERIES_JS

module Int32 = BatInt32
module Int64 = BatInt64
(* Lazy *)
module Lexing = BatLexing

#endif

module List = BatList
(* ListLabels *)
module Map = BatMap

#if not BATTERIES_JS

module Marshal = BatMarshal
(* MoreLabels *)
module Nativeint = BatNativeint
module Oo = BatOo
(* Parsing *)
module Printexc = BatPrintexc
module Printf = BatPrintf (* UNTESTED FOR BACKWARDS COMPATIBILITY *)

#endif

module Queue = BatQueue

#if not BATTERIES_JS

module Random = BatRandom
module Scanf = BatScanf

#endif

module Set = BatSet

#if not BATTERIES_JS

(* Sort - Deprecated *)
module Stack = BatStack
module Stream = BatStream

#endif

module String = BatString

#if not BATTERIES_JS

(* StringLabels *)
module Sys = BatSys
(* Weak *)

module Unix = BatUnix

(*module Str = struct include Str include BatStr end*)

module Big_int = BatBig_int
module Num = BatNum

module Bigarray = BatBigarray

(* Extlib modules not replacing stdlib *)
module Base64 = BatBase64

#endif

module BitSet = BatBitSet
module Bit_set = BatBitSet
module Dllist = BatDllist

#if not BATTERIES_JS

module DynArray = BatDynArray

#endif

module Enum = BatEnum
module File = BatFile
module Global = BatGlobal

#if not BATTERIES_JS

module IO = BatIO

#endif

module LazyList = BatLazyList

#if not BATTERIES_JS

module MultiPMap = BatMultiPMap

#endif

module Option = BatOption
(* REMOVED, Extlib only module OptParse = BatOptParse *)
module RefList = BatRefList
module Ref = BatRef
(*module Std = REMOVED - use BatPervasives *)

(* Batteries specific modules *)
module Cache = BatCache

#if not BATTERIES_JS

module CharParser = BatCharParser

#endif

module Deque = BatDeque

#if not BATTERIES_JS

module Hashcons = BatHashcons

#endif

module Heap = BatHeap

#if not BATTERIES_JS

module FingerTree = BatFingerTree
module Logger = BatLogger
module MultiMap = BatMultiMap
module ParserCo = BatParserCo

#endif

module Result = BatResult
module Return = BatReturn
module Seq = BatSeq
module Tuple = BatTuple
module Tuple2 = BatTuple.Tuple2
module Tuple3 = BatTuple.Tuple3
module Tuple4 = BatTuple.Tuple4
module Tuple5 = BatTuple.Tuple5
module Vect = BatVect
module ISet = BatISet
module IMap = BatIMap
module Splay = BatSplay
module Uref = BatUref

#if not BATTERIES_JS

module UChar = BatUChar
module UTF8 = BatUTF8
module Text = BatText
module Concurrent = BatConcurrent

(* Batteries Specific *)

#endif

module Interfaces = BatInterfaces
module Number = BatNumber

#if not BATTERIES_JS

module Float = BatFloat

#endif

module Int = BatInt
module Bool = BatBool
module Unit = BatUnit

#if not BATTERIES_JS

(*module Int63 = BatInt63*)

(* Modules in-progress, API stability not guaranteed *)
module Incubator = struct
  module Log = BatLog
  module Substring = BatSubstring
  module Bounded = BatBounded
  module PathGen = BatPathGen
end

#endif

(* Pervasives last *)
include Pervasives
include BatPervasives
