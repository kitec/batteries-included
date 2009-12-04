(* open this to extend all Foo with BatFoo *)

module Legacy = struct
  include Pervasives
  module Arg = Arg
  module Array = Array
  module ArrayLabels = ArrayLabels
  module Buffer = Buffer
  module Callback = Callback
  module Char = Char
  module Complex = Complex
  module Digest = Digest
  module Filename = Filename
  module Format = Format
  module Gc = Gc
  module Genlex = Genlex
  module Hashtbl = Hashtbl
  module Int32 = Int32
  module Int64 = Int64
  module Lazy = Lazy
  module Lexing = Lexing
  module List = List
  module ListLabels = ListLabels
  module Map = Map
  module Marshal = Marshal
  module MoreLabels = MoreLabels
  module Nativeint = Nativeint
  module Oo = Oo
  module Parsing = Parsing
  module Printexc = Printexc
  module Printf = Printf
  module Queue = Queue
  module Random = Random
  module Scanf = Scanf
  module Set = Set
  module Sort = Sort
  module Stack = Stack
  module StdLabels = StdLabels
  module Stream = Stream
  module String = String
  module StringLabels = StringLabels
  module Sys = Sys
  module Weak = Weak
end

module Extlib = struct
  module ExtArray = struct 
    module Array = struct include Array include BatArray end 
  end
  module ExtHashtbl = struct 
    module Hashtbl = BatHashtbl 
  end
  module ExtList = struct
    module List = struct include List include BatList end
  end
  module ExtString = struct
    module String = struct include String include BatString end
  end
end

(* stdlib modules *)
module Arg = struct include Arg include BatArg end
module Array = struct include Array include BatArray end
(* ArrayLabels *)
module Buffer = struct include Buffer include BatBuffer end
(* Callback *)
module Char = struct include Char include BatChar end
module Complex = struct include Complex include BatComplex end
module Digest = struct include Digest include BatDigest end
module Format = struct include Format include BatFormat end
module Gc = struct include Gc include BatGc end
module Genlex = struct include Gc include BatGc end
module Hashtbl = BatHashtbl
module Int32 = BatInt32
module Int64 = BatInt64
module Lexing = struct include Lexing include BatLexing end
module List = struct include List include BatList end
module Map = BatMap
module Marshal = struct include Marshal include BatMarshal end
module Nativeint = BatNativeint
module Oo = struct include Oo include BatOo end
module Printexc = struct include Printexc include BatPrintexc end
module Printf = struct include Printf include BatPrintf end
module Queue = struct include Queue include BatQueue end
module Random = BatRandom
module Scanf = struct include Scanf include BatScanf end
module Set = BatSet
module Stack = struct include Stack include BatStack end
module Stream = struct include Stream include BatStream end
module String = struct include String include BatString end
module Sys = struct include Sys include BatSys end

(* Extlib modules not replacing stdlib *)
module Base64 = BatBase64
module BitSet = BatBitSet
module Bit_set = BatBitSet
module Dllist = BatDllist
module DynArray = BatDynArray
module File = BatFile
module Global = BatGlobal
module Interfaces = BatInterfaces
module LazyList = BatLazyList
module Logger = BatLogger
module Monad = BatMonad
module MultiPMap = BatMultiPMap
module Number = BatNumber
module Option = BatOption
module OptParse = BatOptParse
module Pair = BatPair

(* Batteries specific modules *)
module CharParser = BatCharParser
module Concurrent = BatConcurrent

(* Unix *)
module Unix = struct include Unix include BatUnix end

(* Str *)
module Str = struct include Str include BatStr end

(* Threads *)
module Mutex = BatMutex



(* Batteries Specific *)
module Float = BatFloat
module Int = BatInt
module Bool = BatBool
module Unit = BatUnit

(* Chamomile *)
module UChar = struct include CamomileLibrary.UChar include BatUChar end
module UTF8 = BatUTF8 (* replaces, doesn't extend UTF8 *)


(* Num *)
module Big_int = struct include Big_int include BatBig_int end

(* Bigarray *)
module Bigarray = BatBigarray


(* Pervasives *)
include Pervasives
include BatPervasives
