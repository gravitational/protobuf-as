(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/Status.Draft i32 (i32.const 0))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/Status.Active i32 (i32.const 1))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/Status.Deleted i32 (i32.const 2))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_Service.None i32 (i32.const 0))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_Service.Facebook i32 (i32.const 1))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_Service.Google i32 (i32.const 2))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/ASC_RUNTIME i32 (i32.const 2))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties i32 (i32.const 3))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties i32 (i32.const 10))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp i32 (i32.const 11))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/Labels i32 (i32.const 12))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/Message i32 (i32.const 14))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message i32 (i32.const 16))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message i32 (i32.const 22))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular i32 (i32.const 18))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA i32 (i32.const 19))
 (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB i32 (i32.const 20))
 (global $~lib/rt/__rtti_base i32 (i32.const 3440))
 (global $~lib/memory/__data_end i32 (i32.const 3628))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 20012))
 (global $~lib/memory/__heap_base i32 (i32.const 20012))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 60) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 124) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 192) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 220) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 284) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 332) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 400) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 432) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 460) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 524) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 556) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\"\00\00\00D\00e\00c\00o\00d\00e\00r\00 \00p\00o\00s\00i\00t\00i\00o\00n\00 \00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 620) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\"\00\00\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00!\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 684) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\0c\00\00\00@\02\00\00\00\00\00\00\80\02\00\00")
 (data (i32.const 716) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data (i32.const 844) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 908) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 940) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 1340) "\1c\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2396) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data (i32.const 2492) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00j\00\00\00_\00_\00t\00e\00s\00t\00s\00_\00_\00/\00_\00_\00f\00i\00x\00t\00u\00r\00e\00s\00_\00_\00/\00_\00_\00a\00s\00s\00e\00m\00b\00l\00y\00_\00_\00/\00c\00o\00m\00p\00l\00e\00x\00_\00s\00t\00r\00u\00c\00t\00.\00t\00s\00\00\00")
 (data (i32.const 2620) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\0c\00\00\00@\02\00\00\00\00\00\00\80\02\00\00")
 (data (i32.const 2652) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 2700) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\0c\00\00\00@\02\00\00\00\00\00\00\80\02\00\00")
 (data (i32.const 2732) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00w\00i\00r\00e\00 \00t\00y\00p\00e\00 \00\00\00\00\00\00\00\00\00")
 (data (i32.const 2796) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00 \00a\00t\00 \00o\00f\00f\00s\00e\00t\00 \00\00\00\00\00\00\00")
 (data (i32.const 2844) ",\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\14\00\00\00\c0\n\00\00\00\00\00\00\00\0b\00\00\00\00\00\00 \02\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2892) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data (i32.const 2940) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3004) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3132) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 3196) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3260) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 3308) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d\00\00\00")
 (data (i32.const 3372) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d\00\00\00\00\00")
 (data (i32.const 3440) "\17\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04A\00\00\00\00\00\00B\00\00\00\00\00\00\00d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10A\82\00\00\00\00\00\00\00\00\00\00\00\00\00\10A\82\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "external.Properties" (global $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties))
 (export "external.external.Properties" (global $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties))
 (export "google.protobuf.Timestamp" (global $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp))
 (export "Status.Draft" (global $__tests__/__fixtures__/__assembly__/complex_struct/Status.Draft))
 (export "Status.Active" (global $__tests__/__fixtures__/__assembly__/complex_struct/Status.Active))
 (export "Status.Deleted" (global $__tests__/__fixtures__/__assembly__/complex_struct/Status.Deleted))
 (export "Labels" (global $__tests__/__fixtures__/__assembly__/complex_struct/Labels))
 (export "Message" (global $__tests__/__fixtures__/__assembly__/complex_struct/Message))
 (export "Message_Service.None" (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_Service.None))
 (export "Message_Service.Facebook" (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_Service.Facebook))
 (export "Message_Service.Google" (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_Service.Google))
 (export "Message_Message" (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message))
 (export "Message_Message_Message" (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message))
 (export "Message_Circular" (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular))
 (export "Message_CircularA" (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA))
 (export "Message_CircularB" (global $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "external.Properties#get:Properties" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#get:Properties))
 (export "external.Properties#set:Properties" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#set:Properties))
 (export "external.Properties#size" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#size))
 (export "external.Properties#encode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#encode))
 (export "external.Properties#encodeU8Array" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#encodeU8Array@varargs))
 (export "external.Properties#constructor" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#constructor))
 (export "external.Properties.decode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties.decode))
 (export "external.Properties.decodeDataView" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties.decodeDataView))
 (export "external.external.Properties#get:Properties" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#get:Properties))
 (export "external.external.Properties#set:Properties" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#set:Properties))
 (export "external.external.Properties#size" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#size))
 (export "external.external.Properties#encode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#encode))
 (export "external.external.Properties#encodeU8Array" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#encodeU8Array@varargs))
 (export "external.external.Properties#constructor" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#constructor))
 (export "external.external.Properties.decode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties.decode))
 (export "external.external.Properties.decodeDataView" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties.decodeDataView))
 (export "google.protobuf.Timestamp#get:seconds" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#get:seconds))
 (export "google.protobuf.Timestamp#set:seconds" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#set:seconds))
 (export "google.protobuf.Timestamp#get:nanos" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#get:nanos))
 (export "google.protobuf.Timestamp#set:nanos" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#set:nanos))
 (export "google.protobuf.Timestamp#size" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#size))
 (export "google.protobuf.Timestamp#encode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#encode))
 (export "google.protobuf.Timestamp#encodeU8Array" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#encodeU8Array@varargs))
 (export "google.protobuf.Timestamp#constructor" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#constructor))
 (export "google.protobuf.Timestamp.decode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp.decode))
 (export "google.protobuf.Timestamp.decodeDataView" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp.decodeDataView))
 (export "Labels#get:Labels" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels#get:Labels))
 (export "Labels#set:Labels" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels#set:Labels))
 (export "Labels#size" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels#size))
 (export "Labels#encode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels#encode))
 (export "Labels#encodeU8Array" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels#encodeU8Array@varargs))
 (export "Labels#constructor" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels#constructor))
 (export "Labels.decode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels.decode))
 (export "Labels.decodeDataView" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels.decodeDataView))
 (export "Message#get:String" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:String))
 (export "Message#set:String" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:String))
 (export "Message#get:Labels" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Labels))
 (export "Message#set:Labels" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Labels))
 (export "Message#get:Status1" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Status1))
 (export "Message#set:Status1" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Status1))
 (export "Message#get:Status2" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Status2))
 (export "Message#set:Status2" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Status2))
 (export "Message#get:Network" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Network))
 (export "Message#set:Network" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Network))
 (export "Message#get:Strings" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Strings))
 (export "Message#set:Strings" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Strings))
 (export "Message#get:MapString" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:MapString))
 (export "Message#set:MapString" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:MapString))
 (export "Message#get:MapMessages" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:MapMessages))
 (export "Message#set:MapMessages" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:MapMessages))
 (export "Message#get:CircularInstance" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:CircularInstance))
 (export "Message#set:CircularInstance" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:CircularInstance))
 (export "Message#get:CircularAInstance" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:CircularAInstance))
 (export "Message#set:CircularAInstance" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:CircularAInstance))
 (export "Message#get:Properties1" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Properties1))
 (export "Message#set:Properties1" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Properties1))
 (export "Message#get:Properties2" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Properties2))
 (export "Message#set:Properties2" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Properties2))
 (export "Message#get:Services" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Services))
 (export "Message#set:Services" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Services))
 (export "Message#size" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#size))
 (export "Message#encode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#encode))
 (export "Message#encodeU8Array" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#encodeU8Array@varargs))
 (export "Message#constructor" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#constructor))
 (export "Message.decode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message.decode))
 (export "Message.decodeDataView" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message.decodeDataView))
 (export "Message_Message#get:String" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#get:String))
 (export "Message_Message#set:String" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#set:String))
 (export "Message_Message#get:Messages" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#get:Messages))
 (export "Message_Message#set:Messages" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#set:Messages))
 (export "Message_Message#size" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#size))
 (export "Message_Message#encode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#encode))
 (export "Message_Message#encodeU8Array" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#encodeU8Array@varargs))
 (export "Message_Message#constructor" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#constructor))
 (export "Message_Message.decode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message.decode))
 (export "Message_Message.decodeDataView" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message.decodeDataView))
 (export "Message_Message_Message#get:Strings" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#get:Strings))
 (export "Message_Message_Message#set:Strings" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#set:Strings))
 (export "Message_Message_Message#get:Timestamp" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#get:Timestamp))
 (export "Message_Message_Message#set:Timestamp" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#set:Timestamp))
 (export "Message_Message_Message#size" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#size))
 (export "Message_Message_Message#encode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#encode))
 (export "Message_Message_Message#encodeU8Array" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#encodeU8Array@varargs))
 (export "Message_Message_Message#constructor" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#constructor))
 (export "Message_Message_Message.decode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message.decode))
 (export "Message_Message_Message.decodeDataView" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message.decodeDataView))
 (export "Message_Circular#get:String" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#get:String))
 (export "Message_Circular#set:String" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#set:String))
 (export "Message_Circular#get:Circular" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#get:Circular))
 (export "Message_Circular#set:Circular" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#set:Circular))
 (export "Message_Circular#size" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#size))
 (export "Message_Circular#encode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#encode))
 (export "Message_Circular#encodeU8Array" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#encodeU8Array@varargs))
 (export "Message_Circular#constructor" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#constructor))
 (export "Message_Circular.decode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular.decode))
 (export "Message_Circular.decodeDataView" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular.decodeDataView))
 (export "Message_CircularA#get:String" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#get:String))
 (export "Message_CircularA#set:String" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#set:String))
 (export "Message_CircularA#get:CircularB" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#get:CircularB))
 (export "Message_CircularA#set:CircularB" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#set:CircularB))
 (export "Message_CircularA#size" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#size))
 (export "Message_CircularA#encode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#encode))
 (export "Message_CircularA#encodeU8Array" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#encodeU8Array@varargs))
 (export "Message_CircularA#constructor" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#constructor))
 (export "Message_CircularA.decode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA.decode))
 (export "Message_CircularA.decodeDataView" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA.decodeDataView))
 (export "Message_CircularB#get:String" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#get:String))
 (export "Message_CircularB#set:String" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#set:String))
 (export "Message_CircularB#get:CircularA" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#get:CircularA))
 (export "Message_CircularB#set:CircularA" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#set:CircularA))
 (export "Message_CircularB#size" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#size))
 (export "Message_CircularB#encode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#encode))
 (export "Message_CircularB#encodeU8Array" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#encodeU8Array@varargs))
 (export "Message_CircularB#constructor" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#constructor))
 (export "Message_CircularB.decode" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB.decode))
 (export "Message_CircularB.decodeDataView" (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB.decodeDataView))
 (start $~start)
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
 )
 (func $~lib/rt/itcms/Object#get:color (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:next (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/itcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/itcms/Object#get:next
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $0
   i32.load offset=8
   i32.const 0
   i32.eq
   if (result i32)
    local.get $0
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 127
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 131
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  call $~lib/rt/itcms/Object#set:prev
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
 )
 (func $~lib/rt/__typeinfo (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 240
   i32.const 304
   i32.const 22
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
 )
 (func $~lib/rt/itcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 144
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  local.get $0
  global.get $~lib/rt/itcms/toSpace
  local.get $0
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 20
  i32.sub
  local.set $3
  local.get $3
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.set $4
   local.get $4
   call $~lib/rt/itcms/Object#get:color
   local.set $5
   local.get $5
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $2
    if
     local.get $4
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $5
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/dataview/DataView#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/dataview/DataView#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/dataview/DataView#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/itcms/visitRoots (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $1
  local.get $1
  call $~lib/rt/itcms/Object#get:next
  local.set $2
  loop $while-continue|0
   local.get $2
   local.get $1
   i32.ne
   local.set $3
   local.get $3
   if
    i32.const 1
    drop
    local.get $2
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 144
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 20
    i32.add
    local.get $0
    call $~lib/rt/__visit_members
    local.get $2
    call $~lib/rt/itcms/Object#get:next
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  i32.const 0
  drop
  local.get $2
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $2
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  local.set $1
  loop $while-continue|0
   local.get $1
   global.get $~lib/memory/__heap_base
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $1
    i32.load
    local.get $0
    call $~lib/rt/itcms/__visit
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#get:size (param $0 i32) (result i32)
  i32.const 4
  local.get $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  i32.const 1
  drop
  local.get $3
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else
   local.get $3
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $6
   i32.const 31
   local.get $6
   i32.clz
   i32.sub
   local.set $4
   local.get $6
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  i32.const 1
  drop
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=4
  local.set $8
  local.get $1
  i32.load offset=8
  local.set $9
  local.get $8
  if
   local.get $8
   local.get $9
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $9
  if
   local.get $9
   local.get $8
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $6
  local.get $5
  local.set $7
  local.get $10
  local.get $6
  i32.const 4
  i32.shl
  local.get $7
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $6
   local.get $9
   local.set $7
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $6
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $7
   i32.store offset=96
   local.get $9
   i32.eqz
   if
    local.get $0
    local.set $6
    local.get $4
    local.set $7
    local.get $6
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    local.get $0
    local.set $7
    local.get $4
    local.set $11
    local.get $6
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $6
    local.set $10
    local.get $7
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $6
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  i32.const 1
  drop
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 4
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $2
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $3
   local.get $3
   i32.const 4
   i32.add
   local.get $3
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $4
   local.get $4
   i32.load
   local.set $5
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $3
   local.get $3
   i32.const 4
   i32.sub
   i32.load
   local.set $3
   local.get $3
   i32.load
   local.set $6
   i32.const 1
   drop
   local.get $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/removeBlock
   local.get $3
   local.set $1
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $2
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $7
  i32.const 1
  drop
  local.get $7
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $7
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $8
   local.get $7
   i32.const 4
   i32.shr_u
   local.set $9
  else
   local.get $7
   local.tee $3
   i32.const 1073741820
   local.tee $6
   local.get $3
   local.get $6
   i32.lt_u
   select
   local.set $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $8
   local.get $3
   local.get $8
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $9
   local.get $8
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $8
  end
  i32.const 1
  drop
  local.get $8
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $9
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $10
  local.get $8
  local.set $3
  local.get $9
  local.set $6
  local.get $10
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $1
  local.get $11
  call $~lib/rt/tlsf/Block#set:next
  local.get $11
  if
   local.get $11
   local.get $1
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $0
  local.set $12
  local.get $8
  local.set $10
  local.get $9
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $10
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $8
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $0
  local.set $13
  local.get $8
  local.set $12
  local.get $0
  local.set $3
  local.get $8
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  local.set $10
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $10
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 1
  drop
  local.get $1
  local.get $2
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   i32.const 1
   drop
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   i32.const 23
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $3
    local.set $8
    local.get $5
    local.set $7
    i32.const 0
    local.set $6
    local.get $8
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.get $6
    i32.store offset=4
    i32.const 0
    local.set $8
    loop $for-loop|1
     local.get $8
     i32.const 16
     i32.lt_u
     local.set $7
     local.get $7
     if
      local.get $3
      local.set $11
      local.get $5
      local.set $10
      local.get $8
      local.set $9
      i32.const 0
      local.set $6
      local.get $11
      local.get $10
      i32.const 4
      i32.shl
      local.get $9
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $6
      i32.store offset=96
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      br $for-loop|1
     end
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 1572
  i32.add
  local.set $12
  i32.const 0
  drop
  local.get $3
  local.get $12
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $0
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $0
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     local.set $2
     local.get $2
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      call $~lib/rt/itcms/Object#get:color
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $0
      call $~lib/rt/itcms/Object#get:next
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    local.get $0
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      local.set $2
      local.get $2
      if
       local.get $0
       call $~lib/rt/itcms/Object#get:color
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        local.get $0
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $0
       call $~lib/rt/itcms/Object#get:next
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $2
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $2
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $2
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $0
   local.get $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 144
     i32.const 228
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
 )
 (func $~lib/rt/itcms/interrupt
  (local $0 i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $0
  loop $do-loop|0
   local.get $0
   call $~lib/rt/itcms/step
   i32.sub
   local.set $0
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $0
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $0
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 352
   i32.const 480
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/computeSize
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  i32.const 1
  drop
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    i32.const 1
    drop
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 480
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  drop
  local.get $1
  i32.const 536870910
  i32.lt_u
  if
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 4
  local.get $2
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  i32.const 1
  drop
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   i32.const 4
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.set $3
   i32.const 1
   drop
   local.get $3
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   i32.const 0
   i32.const 1
   i32.gt_s
   drop
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $3
   i32.add
   local.set $6
   local.get $5
   local.get $4
   i32.store8
   local.get $6
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=1
   local.get $5
   local.get $4
   i32.store8 offset=2
   local.get $6
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $6
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=3
   local.get $6
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $8
   local.get $5
   local.get $3
   i32.add
   local.set $6
   local.get $5
   local.get $8
   i32.store
   local.get $6
   i32.const 4
   i32.sub
   local.get $8
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=4
   local.get $5
   local.get $8
   i32.store offset=8
   local.get $6
   i32.const 12
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 8
   i32.sub
   local.get $8
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=12
   local.get $5
   local.get $8
   i32.store offset=16
   local.get $5
   local.get $8
   i32.store offset=20
   local.get $5
   local.get $8
   i32.store offset=24
   local.get $6
   i32.const 28
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 24
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 20
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 16
   i32.sub
   local.get $8
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $8
   i64.extend_i32_u
   local.get $8
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $9
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    local.set $10
    local.get $10
    if
     local.get $5
     local.get $9
     i64.store
     local.get $5
     local.get $9
     i64.store offset=8
     local.get $5
     local.get $9
     i64.store offset=16
     local.get $5
     local.get $9
     i64.store offset=24
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 352
   i32.const 144
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $0
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $2
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.set $3
  local.get $3
  i32.const 0
  local.get $0
  call $~lib/memory/memory.fill
  local.get $3
 )
 (func $~lib/dataview/DataView#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $2
   end
   local.get $1
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/dataview/DataView#constructor
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:view (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#set:Properties (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/dataview/DataView#getUint8 (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 240
   i32.const 80
   i32.const 72
   i32.const 50
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $0
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $0
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $0
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $0
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 100
    i32.div_u
    local.set $6
    local.get $5
    i32.const 100
    i32.rem_u
    local.set $7
    i32.const 940
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    i32.const 940
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $8
    local.get $9
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $3
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $10
   local.get $3
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 940
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 940
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store16
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $2
   i32.const 2
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 1360
    local.get $1
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $1
    i64.const 8
    i64.shr_u
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   i32.const 1360
   local.get $1
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u
   i32.store16
  end
 )
 (func $~lib/util/number/ulog_base (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  local.get $1
  local.set $2
  local.get $2
  i32.popcnt
  i32.const 1
  i32.eq
  if
   i32.const 63
   local.get $0
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $1
  i64.extend_i32_s
  local.set $3
  local.get $3
  local.set $4
  i32.const 1
  local.set $5
  loop $while-continue|0
   local.get $0
   local.get $4
   i64.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $4
    i64.div_u
    local.set $0
    local.get $4
    local.get $4
    i64.mul
    local.set $4
    local.get $5
    i32.const 1
    i32.shl
    local.set $5
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $0
   i64.const 1
   i64.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $3
    i64.div_u
    local.set $0
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $while-continue|1
   end
  end
  local.get $5
  i32.const 1
  i32.sub
 )
 (func $~lib/util/number/utoa64_any_core (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  local.get $3
  i64.extend_i32_s
  local.set $4
  local.get $3
  local.get $3
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $3
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $5
   local.get $4
   i64.const 1
   i64.sub
   local.set $6
   loop $do-loop|0
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 2416
    local.get $1
    local.get $6
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $1
    local.get $5
    i64.shr_u
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $1
    local.get $4
    i64.div_u
    local.set $6
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 2416
    local.get $1
    local.get $6
    local.get $4
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $6
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/number/I32#toString (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/util/number/itoa32
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  i32.const 1
  drop
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  loop $while-continue|0
   local.get $2
   if (result i32)
    local.get $1
    i32.const 3
    i32.and
   else
    i32.const 0
   end
   local.set $5
   local.get $5
   if
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    local.set $5
    local.get $5
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       local.set $5
       local.get $5
       if
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      local.set $5
      local.get $5
      if
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     local.set $5
     local.get $5
     if
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $4
   local.get $5
   i32.sub
   local.get $3
   i32.sub
   i32.const 0
   local.get $3
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $5
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $7
       i32.const 1
       i32.add
       local.set $5
       local.get $7
       local.get $4
       local.tee $7
       i32.const 1
       i32.add
       local.set $4
       local.get $7
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.tee $7
      i32.const 1
      i32.add
      local.set $5
      local.get $7
      local.get $4
      local.tee $7
      i32.const 1
      i32.add
      local.set $4
      local.get $7
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|2
     end
    end
   else
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $5
      local.get $3
      i32.add
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  i32.const 1
  drop
  local.get $0
  local.get $0
  call $~lib/staticarray/StaticArray<~lib/string/String>#get:length
  local.get $1
  call $~lib/util/string/joinStringArray
  return
 )
 (func $~lib/dataview/DataView#get:byteOffset (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $0
   return
  end
  local.get $1
  local.get $2
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  local.get $0
  local.get $1
  local.tee $4
  local.get $2
  i32.load offset=16
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $~lib/string/String.UTF8.decode (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.get $1
  call $~lib/string/String.UTF8.decodeUnsafe
 )
 (func $~lib/number/U32#toString (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/util/number/utoa32
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#get:Properties (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64 (param $0 i64) (result i32)
  local.get $0
  i64.const 128
  i64.lt_u
  if (result i32)
   i32.const 1
  else
   local.get $0
   i64.const 16384
   i64.lt_u
   if (result i32)
    i32.const 2
   else
    local.get $0
    i64.const 2097152
    i64.lt_u
    if (result i32)
     i32.const 3
    else
     local.get $0
     i64.const 268435456
     i64.lt_u
     if (result i32)
      i32.const 4
     else
      local.get $0
      i64.const 34359738368
      i64.lt_u
      if (result i32)
       i32.const 5
      else
       local.get $0
       i64.const 4398046511104
       i64.lt_u
       if (result i32)
        i32.const 6
       else
        local.get $0
        i64.const 562949953421312
        i64.lt_u
        if (result i32)
         i32.const 7
        else
         local.get $0
         i64.const 72057594037927936
         i64.lt_u
         if (result i32)
          i32.const 8
         else
          local.get $0
          i64.const -9223372036854775808
          i64.lt_u
          if (result i32)
           i32.const 9
          else
           i32.const 10
          end
         end
        end
       end
      end
     end
    end
   end
  end
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $4
  local.get $1
  local.get $4
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 32
    i32.const 2912
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $5
   local.get $1
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $2
   i32.shl
   local.set $6
   local.get $3
   if
    local.get $4
    i32.const 1
    i32.shl
    local.tee $7
    i32.const 1073741820
    local.tee $8
    local.get $7
    local.get $8
    i32.lt_u
    select
    local.tee $8
    local.get $6
    local.tee $7
    local.get $8
    local.get $7
    i32.gt_u
    select
    local.set $6
   end
   local.get $5
   local.get $6
   call $~lib/rt/itcms/__renew
   local.set $8
   i32.const 2
   global.get $~lib/shared/runtime/Runtime.Incremental
   i32.ne
   drop
   local.get $8
   local.get $5
   i32.ne
   if
    local.get $0
    local.get $8
    i32.store
    local.get $0
    local.get $8
    i32.store offset=4
    local.get $0
    local.get $8
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $6
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<u8>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<u8>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 0
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 0
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 0
  i32.shl
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $3
  call $~lib/array/Array<u8>#set:length_
  local.get $3
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.set $2
  local.get $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $3
  local.get $1
  i32.const 0
  i32.ne
  local.set $4
  block $while-break|0
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_u
    local.set $5
    local.get $5
    if
     local.get $2
     i32.load16_u
     local.set $6
     local.get $6
     i32.const 128
     i32.lt_u
     if
      local.get $1
      local.get $6
      i32.eqz
      i32.and
      if
       br $while-break|0
      end
      local.get $4
      i32.const 1
      i32.add
      local.set $4
     else
      local.get $6
      i32.const 2048
      i32.lt_u
      if
       local.get $4
       i32.const 2
       i32.add
       local.set $4
      else
       local.get $6
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       if (result i32)
        local.get $2
        i32.const 2
        i32.add
        local.get $3
        i32.lt_u
       else
        i32.const 0
       end
       if
        local.get $2
        i32.load16_u offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $4
         i32.const 4
         i32.add
         local.set $4
         local.get $2
         i32.const 4
         i32.add
         local.set $2
         br $while-continue|0
        end
       end
       local.get $4
       i32.const 3
       i32.add
       local.set $4
      end
     end
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
  end
  local.get $4
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $5
  local.get $2
  local.set $6
  loop $while-continue|0
   local.get $0
   local.get $5
   i32.lt_u
   local.set $7
   local.get $7
   if
    local.get $0
    i32.load16_u
    local.set $8
    local.get $8
    i32.const 128
    i32.lt_u
    if
     local.get $6
     local.get $8
     i32.store8
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    else
     local.get $8
     i32.const 2048
     i32.lt_u
     if
      local.get $8
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.set $9
      local.get $8
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $10
      local.get $6
      local.get $10
      i32.const 8
      i32.shl
      local.get $9
      i32.or
      i32.store16
      local.get $6
      i32.const 2
      i32.add
      local.set $6
     else
      local.get $8
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      if
       local.get $8
       i32.const 56320
       i32.lt_u
       if (result i32)
        local.get $0
        i32.const 2
        i32.add
        local.get $5
        i32.lt_u
       else
        i32.const 0
       end
       if
        local.get $0
        i32.load16_u offset=2
        local.set $10
        local.get $10
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         i32.const 65536
         local.get $8
         i32.const 1023
         i32.and
         i32.const 10
         i32.shl
         i32.add
         local.get $10
         i32.const 1023
         i32.and
         i32.or
         local.set $8
         local.get $8
         i32.const 18
         i32.shr_u
         i32.const 240
         i32.or
         local.set $9
         local.get $8
         i32.const 12
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         local.set $11
         local.get $8
         i32.const 6
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         local.set $12
         local.get $8
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         local.set $13
         local.get $6
         local.get $13
         i32.const 24
         i32.shl
         local.get $12
         i32.const 16
         i32.shl
         i32.or
         local.get $11
         i32.const 8
         i32.shl
         i32.or
         local.get $9
         i32.or
         i32.store
         local.get $6
         i32.const 4
         i32.add
         local.set $6
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         br $while-continue|0
        end
       end
       local.get $4
       i32.const 0
       i32.ne
       if
        local.get $4
        i32.const 2
        i32.eq
        if
         i32.const 2960
         i32.const 2672
         i32.const 739
         i32.const 49
         call $~lib/builtins/abort
         unreachable
        end
        i32.const 65533
        local.set $8
       end
      end
      local.get $8
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.set $10
      local.get $8
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $13
      local.get $8
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $12
      local.get $6
      local.get $13
      i32.const 8
      i32.shl
      local.get $10
      i32.or
      i32.store16
      local.get $6
      local.get $12
      i32.store8 offset=2
      local.get $6
      i32.const 3
      i32.add
      local.set $6
     end
    end
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  local.get $3
  if
   local.get $6
   local.tee $7
   i32.const 1
   i32.add
   local.set $6
   local.get $7
   i32.const 0
   i32.store8
  end
  local.get $6
  local.get $2
  i32.sub
 )
 (func $~lib/string/String.UTF8.encode@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $1
   end
   i32.const 0
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/string/String.UTF8.encode
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#set:buf (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<u8>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<u8>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<u8>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<u8>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#set:Properties (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#get:Properties (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#set:seconds (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#set:nanos (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#get:seconds (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#get:nanos (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#size (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  i32.const 0
  local.set $1
  local.get $1
  local.get $0
  i64.load
  i64.const 0
  i64.eq
  if (result i32)
   i32.const 0
  else
   i32.const 1
   local.get $0
   i64.load
   local.set $2
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
  end
  i32.add
  local.set $1
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 0
  else
   i32.const 1
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   i64.extend_i32_s
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
  end
  i32.add
  local.set $1
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Labels#set:Labels (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<~lib/string/String>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<~lib/string/String>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<~lib/string/String>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<~lib/string/String>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $3
  call $~lib/array/Array<~lib/string/String>#set:length_
  local.get $3
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Labels#get:Labels (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:String (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Labels (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Status1 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Status2 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Network (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Strings (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:MapString (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=24
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:MapMessages (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=28
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:CircularInstance (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=32
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#set:String (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#set:Circular (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:CircularAInstance (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=36
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#set:String (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#set:CircularB (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#set:String (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#set:CircularA (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Properties1 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=40
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Properties2 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=44
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Services (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=48
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<u32>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<u32>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<u32>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<u32>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  i32.const 1
  drop
  block $~lib/util/hash/hashStr|inlined.0 (result i32)
   local.get $0
   local.set $1
   local.get $1
   i32.const 0
   i32.eq
   if
    i32.const 0
    br $~lib/util/hash/hashStr|inlined.0
   end
   local.get $1
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.set $2
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   local.get $3
   i32.const 16
   i32.ge_u
   if
    i32.const 0
    i32.const -1640531535
    i32.add
    i32.const -2048144777
    i32.add
    local.set $5
    i32.const 0
    i32.const -2048144777
    i32.add
    local.set $6
    i32.const 0
    local.set $7
    i32.const 0
    i32.const -1640531535
    i32.sub
    local.set $8
    local.get $3
    local.get $4
    i32.add
    i32.const 16
    i32.sub
    local.set $9
    loop $while-continue|0
     local.get $4
     local.get $9
     i32.le_u
     local.set $10
     local.get $10
     if
      local.get $5
      local.set $12
      local.get $4
      i32.load
      local.set $11
      local.get $12
      local.get $11
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $6
      local.set $12
      local.get $4
      i32.load offset=4
      local.set $11
      local.get $12
      local.get $11
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $7
      local.set $12
      local.get $4
      i32.load offset=8
      local.set $11
      local.get $12
      local.get $11
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $7
      local.get $8
      local.set $12
      local.get $4
      i32.load offset=12
      local.set $11
      local.get $12
      local.get $11
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $8
      local.get $4
      i32.const 16
      i32.add
      local.set $4
      br $while-continue|0
     end
    end
    local.get $2
    local.get $5
    i32.const 1
    i32.rotl
    local.get $6
    i32.const 7
    i32.rotl
    i32.add
    local.get $7
    i32.const 12
    i32.rotl
    i32.add
    local.get $8
    i32.const 18
    i32.rotl
    i32.add
    i32.add
    local.set $2
   else
    local.get $2
    i32.const 0
    i32.const 374761393
    i32.add
    i32.add
    local.set $2
   end
   local.get $1
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $9
   loop $while-continue|1
    local.get $4
    local.get $9
    i32.le_u
    local.set $8
    local.get $8
    if
     local.get $2
     local.get $4
     i32.load
     i32.const -1028477379
     i32.mul
     i32.add
     local.set $2
     local.get $2
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $4
     i32.const 4
     i32.add
     local.set $4
     br $while-continue|1
    end
   end
   local.get $1
   local.get $3
   i32.add
   local.set $9
   loop $while-continue|2
    local.get $4
    local.get $9
    i32.lt_u
    local.set $8
    local.get $8
    if
     local.get $2
     local.get $4
     i32.load8_u
     i32.const 374761393
     i32.mul
     i32.add
     local.set $2
     local.get $2
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|2
    end
   end
   local.get $2
   local.get $2
   i32.const 15
   i32.shr_u
   i32.xor
   local.set $2
   local.get $2
   i32.const -2048144777
   i32.mul
   local.set $2
   local.get $2
   local.get $2
   i32.const 13
   i32.shr_u
   i32.xor
   local.set $2
   local.get $2
   i32.const -1028477379
   i32.mul
   local.set $2
   local.get $2
   local.get $2
   i32.const 16
   i32.shr_u
   i32.xor
   local.set $2
   local.get $2
  end
  return
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $5
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $4
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $5
   i32.const 7
   i32.and
   local.get $6
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-loop|0
     local.get $5
     i64.load
     local.get $6
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $5
     i32.const 8
     i32.add
     local.set $5
     local.get $6
     i32.const 8
     i32.add
     local.set $6
     local.get $4
     i32.const 4
     i32.sub
     local.set $4
     local.get $4
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $4
   local.tee $7
   i32.const 1
   i32.sub
   local.set $4
   local.get $7
   local.set $7
   local.get $7
   if
    local.get $5
    i32.load16_u
    local.set $8
    local.get $6
    i32.load16_u
    local.set $9
    local.get $8
    local.get $9
    i32.ne
    if
     local.get $8
     local.get $9
     i32.sub
     return
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/map/MapEntry<~lib/string/String,~lib/string/String>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/MapEntry<~lib/string/String,~lib/string/String>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/map/MapEntry<~lib/string/String,~lib/string/String>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $5
  i32.store offset=4
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.load
     local.tee $12
     i32.store offset=8
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<~lib/string/String,~lib/string/String>#set:key
     local.get $11
     local.get $10
     i32.load offset=4
     call $~lib/map/MapEntry<~lib/string/String,~lib/string/String>#set:value
     local.get $12
     call $~lib/util/hash/HASH<~lib/string/String>
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<~lib/string/String,~lib/string/String>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#set:String (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#set:Messages (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/MapEntry<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/MapEntry<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/map/MapEntry<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $5
  i32.store offset=4
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.load
     local.tee $12
     i32.store offset=8
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:key
     local.get $11
     local.get $10
     i32.load offset=4
     call $~lib/map/MapEntry<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:value
     local.get $12
     call $~lib/util/hash/HASH<~lib/string/String>
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u32>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 0
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  call $~lib/array/Array<u32>#set:length_
  local.get $3
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:String (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Labels (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Status1 (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Status2 (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Network (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Strings (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:MapString (param $0 i32) (result i32)
  local.get $0
  i32.load offset=24
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:MapMessages (param $0 i32) (result i32)
  local.get $0
  i32.load offset=28
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:CircularInstance (param $0 i32) (result i32)
  local.get $0
  i32.load offset=32
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:CircularAInstance (param $0 i32) (result i32)
  local.get $0
  i32.load offset=36
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Properties1 (param $0 i32) (result i32)
  local.get $0
  i32.load offset=40
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Properties2 (param $0 i32) (result i32)
  local.get $0
  i32.load offset=44
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Services (param $0 i32) (result i32)
  local.get $0
  i32.load offset=48
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/array/Array<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  i32.const 1
  drop
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<~lib/string/String>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 240
    i32.const 2912
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<~lib/string/String>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/string/String>#__uset
 )
 (func $~lib/array/Array<~lib/string/String>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#set:length_
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 3216
   i32.const 3280
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__sizeMapEntry_string_string (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if (result i32)
   i32.const 1
   local.get $0
   call $~lib/string/String#get:length
   i64.extend_i32_s
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
   local.get $0
   call $~lib/string/String#get:length
   i32.add
  else
   i32.const 0
  end
  local.get $1
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if (result i32)
   i32.const 1
   local.get $1
   call $~lib/string/String#get:length
   i64.extend_i32_s
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
   local.get $1
   call $~lib/string/String#get:length
   i32.add
  else
   i32.const 0
  end
  i32.add
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#get:size (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 3216
   i32.const 3280
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__sizeMapEntry_string_Message_Message (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if (result i32)
   i32.const 1
   local.get $0
   call $~lib/string/String#get:length
   i64.extend_i32_s
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
   local.get $0
   call $~lib/string/String#get:length
   i32.add
  else
   i32.const 0
  end
  local.set $2
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#size
  local.set $3
  local.get $3
  i32.const 0
  i32.eq
  if
   local.get $2
   return
  end
  local.get $2
  i32.const 1
  i32.add
  local.get $3
  i64.extend_i32_u
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
  i32.add
  local.get $3
  i32.add
 )
 (func $~lib/array/Array<u32>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 240
   i32.const 2912
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__size_uint32_repeated_packed (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  local.set $1
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   call $~lib/array/Array<u32>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<u32>#__get
    local.set $4
    local.get $4
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
    i32.add
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#get:String (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#get:Messages (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#set:Strings (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#set:Timestamp (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#get:Strings (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#get:Timestamp (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#get:String (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#get:Circular (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#get:String (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#get:CircularB (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#get:String (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#get:CircularA (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.set $1
   local.get $1
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 3328
    i32.const 144
    i32.const 337
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.set $1
  local.get $1
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 3392
   i32.const 144
   i32.const 351
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $1
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  (local $0 i32)
  i32.const 0
  drop
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    i32.const 0
    i32.ne
    local.set $0
    local.get $0
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.ne
   local.set $0
   local.get $0
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i32.const 200
  i64.extend_i32_u
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
  i32.const 0
  drop
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 240
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3024
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3216
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 352
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3328
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3392
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2960
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1360
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2416
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/dataview/DataView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  local.set $2
  local.get $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/string/String>#__visit
 )
 (func $~lib/array/Array<u8>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<u8>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__visit
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Labels~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<~lib/string/String>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__visit
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=20
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=24
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=28
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=32
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=36
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=40
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=44
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=48
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  drop
  local.get $2
  local.set $3
  local.get $3
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $4
  loop $while-continue|0
   local.get $3
   local.get $4
   i32.lt_u
   local.set $5
   local.get $5
   if
    local.get $3
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     i32.const 1
     drop
     local.get $6
     i32.load
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/itcms/__visit
     i32.const 1
     drop
     local.get $6
     i32.load offset=4
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $3
    i32.const 12
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  local.get $2
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#__visit
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  drop
  local.get $2
  local.set $3
  local.get $3
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $4
  loop $while-continue|0
   local.get $3
   local.get $4
   i32.lt_u
   local.set $5
   local.get $5
   if
    local.get $3
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     i32.const 1
     drop
     local.get $6
     i32.load
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/itcms/__visit
     i32.const 1
     drop
     local.get $6
     i32.load offset=4
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $3
    i32.const 12
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  local.get $2
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#__visit
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<u32>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<u32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__visit
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message
    block $~lib/array/Array<u32>
     block $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB
      block $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA
       block $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular
        block $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>
         block $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message
          block $~lib/map/Map<~lib/string/String,~lib/string/String>
           block $__tests__/__fixtures__/__assembly__/complex_struct/Message
            block $~lib/array/Array<~lib/string/String>
             block $__tests__/__fixtures__/__assembly__/complex_struct/Labels
              block $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp
               block $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties
                block $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder
                 block $~lib/staticarray/StaticArray<u8>
                  block $~lib/array/Array<u8>
                   block $~lib/staticarray/StaticArray<~lib/string/String>
                    block $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder
                     block $~lib/dataview/DataView
                      block $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties
                       block $~lib/arraybuffer/ArrayBufferView
                        block $~lib/string/String
                         block $~lib/arraybuffer/ArrayBuffer
                          local.get $0
                          i32.const 8
                          i32.sub
                          i32.load
                          br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties $~lib/dataview/DataView $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder $~lib/staticarray/StaticArray<~lib/string/String> $~lib/array/Array<u8> $~lib/staticarray/StaticArray<u8> $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp $__tests__/__fixtures__/__assembly__/complex_struct/Labels $~lib/array/Array<~lib/string/String> $__tests__/__fixtures__/__assembly__/complex_struct/Message $~lib/map/Map<~lib/string/String,~lib/string/String> $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message> $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB $~lib/array/Array<u32> $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message $invalid
                         end
                         return
                        end
                        return
                       end
                       local.get $0
                       local.get $1
                       call $~lib/arraybuffer/ArrayBufferView~visit
                       return
                      end
                      local.get $0
                      local.get $1
                      call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties~visit
                      return
                     end
                     local.get $0
                     local.get $1
                     call $~lib/dataview/DataView~visit
                     return
                    end
                    local.get $0
                    local.get $1
                    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder~visit
                    return
                   end
                   local.get $0
                   local.get $1
                   call $~lib/staticarray/StaticArray<~lib/string/String>~visit
                   return
                  end
                  local.get $0
                  local.get $1
                  call $~lib/array/Array<u8>~visit
                  return
                 end
                 return
                end
                local.get $0
                local.get $1
                call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder~visit
                return
               end
               local.get $0
               local.get $1
               call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties~visit
               return
              end
              return
             end
             local.get $0
             local.get $1
             call $__tests__/__fixtures__/__assembly__/complex_struct/Labels~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/array/Array<~lib/string/String>~visit
            return
           end
           local.get $0
           local.get $1
           call $__tests__/__fixtures__/__assembly__/complex_struct/Message~visit
           return
          end
          local.get $0
          local.get $1
          call $~lib/map/Map<~lib/string/String,~lib/string/String>~visit
          return
         end
         local.get $0
         local.get $1
         call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message~visit
         return
        end
        local.get $0
        local.get $1
        call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>~visit
        return
       end
       local.get $0
       local.get $1
       call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular~visit
       return
      end
      local.get $0
      local.get $1
      call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA~visit
      return
     end
     local.get $0
     local.get $1
     call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB~visit
     return
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<u32>~visit
    return
   end
   local.get $0
   local.get $1
   call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message~visit
   return
  end
  unreachable
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~start
  i32.const 192
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 400
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 432
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 20032
   i32.const 20080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $0
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $3
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $2
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.const 127
  i64.and
  i64.const 0
  i64.shr_u
  local.set $1
  local.get $0
  local.set $4
  local.get $0
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.const 1
  i32.add
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos
  local.get $3
  local.set $2
  local.get $4
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $2
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i32.const 128
  i32.lt_u
  if
   local.get $1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $1
  local.get $0
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $3
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.const 127
  i64.and
  i64.const 7
  i64.shl
  i64.or
  i64.const 0
  i64.shr_u
  local.set $1
  local.get $0
  local.set $3
  local.get $0
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1
  i32.add
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos
  local.get $2
  local.set $4
  local.get $3
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $4
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i32.const 128
  i32.lt_u
  if
   local.get $1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $1
  local.get $0
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $4
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $2
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.const 127
  i64.and
  i64.const 14
  i64.shl
  i64.or
  i64.const 0
  i64.shr_u
  local.set $1
  local.get $0
  local.set $2
  local.get $0
  local.get $0
  i32.load offset=4
  local.tee $4
  i32.const 1
  i32.add
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos
  local.get $4
  local.set $3
  local.get $2
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $3
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i32.const 128
  i32.lt_u
  if
   local.get $1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $1
  local.get $0
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $3
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $4
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.const 127
  i64.and
  i64.const 21
  i64.shl
  i64.or
  i64.const 0
  i64.shr_u
  local.set $1
  local.get $0
  local.set $4
  local.get $0
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.const 1
  i32.add
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos
  local.get $3
  local.set $2
  local.get $4
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $2
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i32.const 128
  i32.lt_u
  if
   local.get $1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $1
  local.get $0
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $3
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.const 127
  i64.and
  i64.const 28
  i64.shl
  i64.or
  i64.const 0
  i64.shr_u
  local.set $1
  local.get $0
  local.set $3
  local.get $0
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1
  i32.add
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos
  local.get $2
  local.set $4
  local.get $3
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $4
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i32.const 128
  i32.lt_u
  if
   local.get $1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $1
  local.get $0
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $4
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $2
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.const 127
  i64.and
  i64.const 35
  i64.shl
  i64.or
  i64.const 0
  i64.shr_u
  local.set $1
  local.get $0
  local.set $2
  local.get $0
  local.get $0
  i32.load offset=4
  local.tee $4
  i32.const 1
  i32.add
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos
  local.get $4
  local.set $3
  local.get $2
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $3
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i32.const 128
  i32.lt_u
  if
   local.get $1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $1
  local.get $0
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $3
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $4
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.const 127
  i64.and
  i64.const 42
  i64.shl
  i64.or
  i64.const 0
  i64.shr_u
  local.set $1
  local.get $0
  local.set $4
  local.get $0
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.const 1
  i32.add
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos
  local.get $3
  local.set $2
  local.get $4
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $2
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i32.const 128
  i32.lt_u
  if
   local.get $1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $1
  local.get $0
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $3
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.const 127
  i64.and
  i64.const 49
  i64.shl
  i64.or
  i64.const 0
  i64.shr_u
  local.set $1
  local.get $0
  local.set $3
  local.get $0
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1
  i32.add
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos
  local.get $2
  local.set $4
  local.get $3
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $4
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i32.const 128
  i32.lt_u
  if
   local.get $1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $1
  local.get $0
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $4
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $2
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.const 127
  i64.and
  i64.const 28
  i64.shl
  i64.or
  i64.const 0
  i64.shr_u
  local.set $1
  local.get $0
  local.set $2
  local.get $0
  local.get $0
  i32.load offset=4
  local.tee $4
  i32.const 1
  i32.add
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos
  local.get $4
  local.set $3
  local.get $2
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $3
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i32.const 128
  i32.lt_u
  if
   local.get $1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $1
  local.get $0
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $3
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $4
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.const 127
  i64.and
  i64.const 35
  i64.shl
  i64.or
  i64.const 0
  i64.shr_u
  local.set $1
  local.get $0
  local.set $4
  local.get $0
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.const 1
  i32.add
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos
  local.get $3
  local.set $2
  local.get $4
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $2
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i32.const 128
  i32.lt_u
  if
   local.get $1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $0
  i32.load offset=4
  local.get $0
  local.set $3
  local.get $3
  i32.load
  i32.load offset=8
  i32.gt_s
  if
   local.get $0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   i32.const 10
   call $~lib/number/I32#toString
   local.tee $3
   i32.store offset=4
   i32.const 704
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   i32.const 1
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 704
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   i32.const 544
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2512
   i32.const 287
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#string (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $0
  local.set $1
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
  i32.wrap_i64
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $0
  local.set $2
  local.get $2
  i32.load
  i32.load offset=8
  i32.gt_s
  if
   local.get $0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   i32.const 10
   call $~lib/number/I32#toString
   local.tee $3
   i32.store
   i32.const 2640
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 1
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 2640
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 544
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2512
   i32.const 287
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $~lib/dataview/DataView#get:byteOffset
  i32.add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  i32.load
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  local.get $2
  local.get $2
  local.get $1
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/string/String.UTF8.decode
  local.tee $3
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos
  local.get $3
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $0
  local.set $2
  local.get $2
  i32.load
  i32.load offset=8
  i32.gt_s
  if
   local.get $0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   i32.const 10
   call $~lib/number/I32#toString
   local.tee $3
   i32.store
   i32.const 2720
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 1
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 2720
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 544
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2512
   i32.const 287
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skipType (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         local.set $2
         local.get $2
         i32.const 0
         i32.eq
         br_if $case0|0
         local.get $2
         i32.const 1
         i32.eq
         br_if $case1|0
         local.get $2
         i32.const 2
         i32.eq
         br_if $case2|0
         local.get $2
         i32.const 3
         i32.eq
         br_if $case3|0
         local.get $2
         i32.const 5
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        local.get $0
        call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
        drop
        br $break|0
       end
       local.get $0
       i32.const 8
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
       br $break|0
      end
      local.get $0
      local.get $0
      local.set $2
      local.get $2
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
      i32.wrap_i64
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
      br $break|0
     end
     loop $while-continue|1
      local.get $0
      local.set $2
      local.get $2
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
      i32.wrap_i64
      i32.const 7
      i32.and
      local.tee $1
      i32.const 4
      i32.ne
      local.set $2
      local.get $2
      if
       local.get $0
       local.get $1
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skipType
       br $while-continue|1
      end
     end
     br $break|0
    end
    local.get $0
    i32.const 4
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
    br $break|0
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $~lib/number/U32#toString
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.const 10
   call $~lib/number/I32#toString
   local.tee $3
   i32.store offset=4
   i32.const 2864
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   i32.const 1
   local.get $2
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 2864
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   i32.const 3
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 2864
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   i32.const 544
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=12
   local.get $4
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   i32.const 2512
   i32.const 265
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.get $0
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/dataview/DataView#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#size (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.set $1
  local.get $1
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/string/String#get:length
   i64.extend_i32_s
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
   local.get $0
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/string/String#get:length
   i32.add
  else
   i32.const 0
  end
  i32.add
  local.set $1
  local.get $1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64 (param $0 i32) (param $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.set $2
  loop $while-continue|0
   local.get $2
   i64.const 127
   i64.gt_u
   local.set $3
   local.get $3
   if
    local.get $0
    i32.load
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    local.get $2
    i64.const 127
    i64.and
    i64.const 128
    i64.or
    i32.wrap_i64
    call $~lib/array/Array<u8>#push
    drop
    local.get $2
    i64.const 7
    i64.shr_u
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $2
  i32.wrap_i64
  call $~lib/array/Array<u8>#push
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $1
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/dataview/DataView#constructor@varargs
  local.tee $2
  i32.store offset=4
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   local.get $2
   i32.load offset=8
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $0
    i32.load
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    local.get $5
    local.get $2
    local.get $3
    call $~lib/dataview/DataView#getUint8
    call $~lib/array/Array<u8>#push
    drop
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#encodeU8Array (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if
   local.get $1
   local.set $4
   i32.const 10
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.set $4
   local.get $0
   i32.load
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   call $~lib/string/String#get:length
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.get $0
   i32.load
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string
  end
  local.get $2
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#constructor
   local.tee $1
   i32.store offset=4
  end
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#encodeU8Array
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#encodeU8Array@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/staticarray/StaticArray.fromArray<u8>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.get $0
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/dataview/DataView#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#size (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.set $1
  local.get $1
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/string/String#get:length
   i64.extend_i32_s
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
   local.get $0
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/string/String#get:length
   i32.add
  else
   i32.const 0
  end
  i32.add
  local.set $1
  local.get $1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#encodeU8Array (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if
   local.get $1
   local.set $4
   i32.const 10
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.set $4
   local.get $0
   i32.load
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   call $~lib/string/String#get:length
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.get $0
   i32.load
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string
  end
  local.get $2
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#constructor
   local.tee $1
   i32.store offset=4
  end
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#encodeU8Array
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#encodeU8Array@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/staticarray/StaticArray.fromArray<u8>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.get $0
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/dataview/DataView#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#constructor
   local.tee $1
   i32.store offset=4
  end
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#encodeU8Array
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#encodeU8Array@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/staticarray/StaticArray.fromArray<u8>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Labels.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Labels#constructor
  local.tee $2
  i32.store offset=4
  loop $while-continue|0
   local.get $1
   local.set $3
   local.get $3
   i32.load offset=4
   local.get $3
   i32.load
   i32.load offset=8
   i32.ge_s
   i32.eqz
   local.set $3
   local.get $3
   if
    local.get $1
    local.set $4
    local.get $4
    local.set $5
    local.get $5
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
    i32.wrap_i64
    local.set $4
    local.get $4
    i32.const 3
    i32.shr_u
    local.set $5
    block $break|1
     block $case1|1
      block $case0|1
       local.get $5
       local.set $6
       local.get $6
       i32.const 1
       i32.eq
       br_if $case0|1
       br $case1|1
      end
      local.get $2
      i32.load
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=8
      local.get $7
      local.get $1
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#string
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=12
      local.get $7
      call $~lib/array/Array<~lib/string/String>#push
      drop
      br $break|1
     end
     local.get $1
     local.get $4
     i32.const 7
     i32.and
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skipType
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Labels.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.get $0
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/dataview/DataView#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Labels.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__size_string_repeated (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.set $1
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   call $~lib/array/Array<~lib/string/String>#get:length
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $1
    i32.const 1
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    call $~lib/string/String#get:length
    i64.extend_i32_s
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
    i32.add
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    call $~lib/string/String#get:length
    i32.add
    i32.add
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Labels#size (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.set $1
  local.get $1
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $__tests__/__fixtures__/__assembly__/complex_struct/__size_string_repeated
  i32.add
  local.set $1
  local.get $1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Labels#encodeU8Array (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store
  local.get $0
  i32.load
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/array/Array<~lib/string/String>#get:length
  i32.const 0
  i32.gt_s
  if
   i32.const 0
   local.set $3
   loop $for-loop|0
    local.get $3
    local.get $0
    i32.load
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.lt_s
    local.set $4
    local.get $4
    if
     local.get $1
     local.set $6
     i32.const 10
     local.set $5
     local.get $6
     local.get $5
     i64.extend_i32_u
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
     local.get $1
     local.set $6
     local.get $0
     i32.load
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=8
     local.get $7
     local.get $3
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=4
     local.get $7
     call $~lib/string/String#get:length
     local.set $5
     local.get $6
     local.get $5
     i64.extend_i32_u
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
     local.get $1
     local.get $0
     i32.load
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=8
     local.get $7
     local.get $3
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=8
     local.get $7
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Labels#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#constructor
   local.tee $1
   i32.store offset=4
  end
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Labels#encodeU8Array
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Labels#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Labels#encodeU8Array@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/staticarray/StaticArray.fromArray<u8>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $1
     call $~lib/string/String.__eq
    else
     i32.const 0
    end
    if
     local.get $3
     local.set $6
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $6
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__decodeMap_string_string (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  local.get $0
  i32.load
  i32.load
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  call $~lib/dataview/DataView#get:byteOffset
  i32.add
  local.get $1
  call $~lib/dataview/DataView#constructor
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#constructor
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 544
  local.tee $4
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 544
  local.tee $5
  i32.store offset=16
  loop $while-continue|0
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=4
   local.get $6
   i32.load
   i32.load offset=8
   i32.ge_s
   i32.eqz
   local.set $6
   local.get $6
   if
    local.get $3
    local.set $7
    local.get $7
    local.set $8
    local.get $8
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
    i32.wrap_i64
    local.set $7
    local.get $7
    i32.const 3
    i32.shr_u
    local.set $8
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $8
        local.set $9
        local.get $9
        i32.const 1
        i32.eq
        br_if $case0|1
        local.get $9
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       global.get $~lib/memory/__stack_pointer
       local.get $3
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#string
       local.tee $4
       i32.store offset=12
       br $break|1
      end
      global.get $~lib/memory/__stack_pointer
      local.get $3
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#string
      local.tee $5
      i32.store offset=16
      br $break|1
     end
     local.get $3
     local.get $7
     i32.const 7
     i32.and
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skipType
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $2
  local.get $4
  local.get $5
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#set
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#constructor
  local.tee $2
  i32.store offset=4
  loop $while-continue|0
   local.get $1
   local.set $3
   local.get $3
   i32.load offset=4
   local.get $3
   i32.load
   i32.load offset=8
   i32.ge_s
   i32.eqz
   local.set $3
   local.get $3
   if
    local.get $1
    local.set $4
    local.get $4
    local.set $5
    local.get $5
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
    i32.wrap_i64
    local.set $4
    local.get $4
    i32.const 3
    i32.shr_u
    local.set $5
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $5
        local.set $6
        local.get $6
        i32.const 1
        i32.eq
        br_if $case0|1
        local.get $6
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       local.get $2
       local.get $1
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#string
       call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#set:String
       br $break|1
      end
      local.get $1
      local.set $6
      local.get $6
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
      i32.wrap_i64
      local.set $6
      local.get $1
      local.get $6
      local.get $2
      i32.load offset=4
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=8
      local.get $7
      call $__tests__/__fixtures__/__assembly__/complex_struct/__decodeMap_string_Message_Message
      local.get $1
      local.get $6
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
      br $break|1
     end
     local.get $1
     local.get $4
     i32.const 7
     i32.and
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skipType
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $1
     call $~lib/string/String.__eq
    else
     i32.const 0
    end
    if
     local.get $3
     local.set $6
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $6
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__decodeMap_string_Message_Message (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  local.get $0
  i32.load
  i32.load
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  call $~lib/dataview/DataView#get:byteOffset
  i32.add
  local.get $1
  call $~lib/dataview/DataView#constructor
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#constructor
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 544
  local.tee $4
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#constructor
  local.tee $5
  i32.store offset=16
  loop $while-continue|0
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=4
   local.get $6
   i32.load
   i32.load offset=8
   i32.ge_s
   i32.eqz
   local.set $6
   local.get $6
   if
    local.get $3
    local.set $7
    local.get $7
    local.set $8
    local.get $8
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
    i32.wrap_i64
    local.set $7
    local.get $7
    i32.const 3
    i32.shr_u
    local.set $8
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $8
        local.set $9
        local.get $9
        i32.const 1
        i32.eq
        br_if $case0|1
        local.get $9
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       global.get $~lib/memory/__stack_pointer
       local.get $3
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#string
       local.tee $4
       i32.store offset=12
       br $break|1
      end
      local.get $3
      local.set $9
      local.get $9
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
      i32.wrap_i64
      local.set $9
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      local.get $3
      i32.load
      i32.load
      local.set $10
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=4
      local.get $10
      local.get $3
      i32.load offset=4
      local.get $3
      i32.load
      local.set $10
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=4
      local.get $10
      call $~lib/dataview/DataView#get:byteOffset
      i32.add
      local.get $9
      call $~lib/dataview/DataView#constructor
      local.set $10
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=20
      local.get $10
      call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message.decodeDataView
      local.tee $5
      i32.store offset=16
      local.get $3
      local.get $9
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
      br $break|1
     end
     local.get $3
     local.get $7
     i32.const 7
     i32.and
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skipType
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $2
  local.get $4
  local.get $5
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#constructor
  local.tee $2
  i32.store offset=4
  loop $while-continue|0
   local.get $1
   local.set $3
   local.get $3
   i32.load offset=4
   local.get $3
   i32.load
   i32.load offset=8
   i32.ge_s
   i32.eqz
   local.set $3
   local.get $3
   if
    local.get $1
    local.set $4
    local.get $4
    local.set $5
    local.get $5
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
    i32.wrap_i64
    local.set $4
    local.get $4
    i32.const 3
    i32.shr_u
    local.set $5
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $5
        local.set $6
        local.get $6
        i32.const 1
        i32.eq
        br_if $case0|1
        local.get $6
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       local.get $2
       local.get $1
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#string
       call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#set:String
       br $break|1
      end
      local.get $1
      local.set $6
      local.get $6
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
      i32.wrap_i64
      local.set $6
      local.get $2
      i32.const 0
      local.get $1
      i32.load
      i32.load
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=12
      local.get $7
      local.get $1
      i32.load offset=4
      local.get $1
      i32.load
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=12
      local.get $7
      call $~lib/dataview/DataView#get:byteOffset
      i32.add
      local.get $6
      call $~lib/dataview/DataView#constructor
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=8
      local.get $7
      call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular.decodeDataView
      call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#set:Circular
      local.get $1
      local.get $6
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
      br $break|1
     end
     local.get $1
     local.get $4
     i32.const 7
     i32.and
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skipType
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#constructor
  local.tee $2
  i32.store offset=4
  loop $while-continue|0
   local.get $1
   local.set $3
   local.get $3
   i32.load offset=4
   local.get $3
   i32.load
   i32.load offset=8
   i32.ge_s
   i32.eqz
   local.set $3
   local.get $3
   if
    local.get $1
    local.set $4
    local.get $4
    local.set $5
    local.get $5
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
    i32.wrap_i64
    local.set $4
    local.get $4
    i32.const 3
    i32.shr_u
    local.set $5
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $5
        local.set $6
        local.get $6
        i32.const 1
        i32.eq
        br_if $case0|1
        local.get $6
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       local.get $2
       local.get $1
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#string
       call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#set:String
       br $break|1
      end
      local.get $1
      local.set $6
      local.get $6
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
      i32.wrap_i64
      local.set $6
      local.get $2
      i32.const 0
      local.get $1
      i32.load
      i32.load
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=12
      local.get $7
      local.get $1
      i32.load offset=4
      local.get $1
      i32.load
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=12
      local.get $7
      call $~lib/dataview/DataView#get:byteOffset
      i32.add
      local.get $6
      call $~lib/dataview/DataView#constructor
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=8
      local.get $7
      call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA.decodeDataView
      call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#set:CircularA
      local.get $1
      local.get $6
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
      br $break|1
     end
     local.get $1
     local.get $4
     i32.const 7
     i32.and
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skipType
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#constructor
  local.tee $2
  i32.store offset=4
  loop $while-continue|0
   local.get $1
   local.set $3
   local.get $3
   i32.load offset=4
   local.get $3
   i32.load
   i32.load offset=8
   i32.ge_s
   i32.eqz
   local.set $3
   local.get $3
   if
    local.get $1
    local.set $4
    local.get $4
    local.set $5
    local.get $5
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
    i32.wrap_i64
    local.set $4
    local.get $4
    i32.const 3
    i32.shr_u
    local.set $5
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $5
        local.set $6
        local.get $6
        i32.const 1
        i32.eq
        br_if $case0|1
        local.get $6
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       local.get $2
       local.get $1
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#string
       call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#set:String
       br $break|1
      end
      local.get $1
      local.set $6
      local.get $6
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
      i32.wrap_i64
      local.set $6
      local.get $2
      i32.const 0
      local.get $1
      i32.load
      i32.load
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=12
      local.get $7
      local.get $1
      i32.load offset=4
      local.get $1
      i32.load
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=12
      local.get $7
      call $~lib/dataview/DataView#get:byteOffset
      i32.add
      local.get $6
      call $~lib/dataview/DataView#constructor
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=8
      local.get $7
      call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB.decodeDataView
      call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#set:CircularB
      local.get $1
      local.get $6
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
      br $break|1
     end
     local.get $1
     local.get $4
     i32.const 7
     i32.and
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skipType
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#constructor
  local.tee $2
  i32.store offset=4
  loop $while-continue|0
   local.get $1
   local.set $3
   local.get $3
   i32.load offset=4
   local.get $3
   i32.load
   i32.load offset=8
   i32.ge_s
   i32.eqz
   local.set $3
   local.get $3
   if
    local.get $1
    local.set $4
    local.get $4
    local.set $5
    local.get $5
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
    i32.wrap_i64
    local.set $4
    local.get $4
    i32.const 3
    i32.shr_u
    local.set $5
    block $break|1
     block $case13|1
      block $case12|1
       block $case11|1
        block $case10|1
         block $case9|1
          block $case8|1
           block $case7|1
            block $case6|1
             block $case5|1
              block $case4|1
               block $case3|1
                block $case2|1
                 block $case1|1
                  block $case0|1
                   local.get $5
                   local.set $6
                   local.get $6
                   i32.const 1
                   i32.eq
                   br_if $case0|1
                   local.get $6
                   i32.const 2
                   i32.eq
                   br_if $case1|1
                   local.get $6
                   i32.const 3
                   i32.eq
                   br_if $case2|1
                   local.get $6
                   i32.const 4
                   i32.eq
                   br_if $case3|1
                   local.get $6
                   i32.const 5
                   i32.eq
                   br_if $case4|1
                   local.get $6
                   i32.const 6
                   i32.eq
                   br_if $case5|1
                   local.get $6
                   i32.const 7
                   i32.eq
                   br_if $case6|1
                   local.get $6
                   i32.const 8
                   i32.eq
                   br_if $case7|1
                   local.get $6
                   i32.const 9
                   i32.eq
                   br_if $case8|1
                   local.get $6
                   i32.const 10
                   i32.eq
                   br_if $case9|1
                   local.get $6
                   i32.const 11
                   i32.eq
                   br_if $case10|1
                   local.get $6
                   i32.const 12
                   i32.eq
                   br_if $case11|1
                   local.get $6
                   i32.const 13
                   i32.eq
                   br_if $case12|1
                   br $case13|1
                  end
                  local.get $2
                  local.get $1
                  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#string
                  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:String
                  br $break|1
                 end
                 local.get $1
                 local.set $6
                 local.get $6
                 call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
                 i32.wrap_i64
                 local.set $6
                 local.get $2
                 i32.const 0
                 local.get $1
                 i32.load
                 i32.load
                 local.set $9
                 global.get $~lib/memory/__stack_pointer
                 local.get $9
                 i32.store offset=12
                 local.get $9
                 local.get $1
                 i32.load offset=4
                 local.get $1
                 i32.load
                 local.set $9
                 global.get $~lib/memory/__stack_pointer
                 local.get $9
                 i32.store offset=12
                 local.get $9
                 call $~lib/dataview/DataView#get:byteOffset
                 i32.add
                 local.get $6
                 call $~lib/dataview/DataView#constructor
                 local.set $9
                 global.get $~lib/memory/__stack_pointer
                 local.get $9
                 i32.store offset=8
                 local.get $9
                 call $__tests__/__fixtures__/__assembly__/complex_struct/Labels.decodeDataView
                 call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Labels
                 local.get $1
                 local.get $6
                 call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
                 br $break|1
                end
                local.get $2
                local.get $1
                local.set $6
                local.get $6
                call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
                i32.wrap_i64
                call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Status1
                br $break|1
               end
               local.get $2
               local.get $1
               local.set $6
               local.get $6
               call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
               i32.wrap_i64
               call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Status2
               br $break|1
              end
              local.get $2
              local.get $1
              local.set $6
              local.get $6
              call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
              i32.wrap_i64
              call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Network
              br $break|1
             end
             local.get $2
             i32.load offset=20
             local.set $9
             global.get $~lib/memory/__stack_pointer
             local.get $9
             i32.store offset=8
             local.get $9
             local.get $1
             call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#string
             local.set $9
             global.get $~lib/memory/__stack_pointer
             local.get $9
             i32.store offset=16
             local.get $9
             call $~lib/array/Array<~lib/string/String>#push
             drop
             br $break|1
            end
            local.get $1
            local.set $6
            local.get $6
            call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
            i32.wrap_i64
            local.set $6
            local.get $1
            local.get $6
            local.get $2
            i32.load offset=24
            local.set $9
            global.get $~lib/memory/__stack_pointer
            local.get $9
            i32.store offset=12
            local.get $9
            call $__tests__/__fixtures__/__assembly__/complex_struct/__decodeMap_string_string
            local.get $1
            local.get $6
            call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
            br $break|1
           end
           local.get $1
           local.set $6
           local.get $6
           call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
           i32.wrap_i64
           local.set $6
           local.get $1
           local.get $6
           local.get $2
           i32.load offset=28
           local.set $9
           global.get $~lib/memory/__stack_pointer
           local.get $9
           i32.store offset=12
           local.get $9
           call $__tests__/__fixtures__/__assembly__/complex_struct/__decodeMap_string_Message_Message
           local.get $1
           local.get $6
           call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
           br $break|1
          end
          local.get $1
          local.set $6
          local.get $6
          call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
          i32.wrap_i64
          local.set $6
          local.get $2
          i32.const 0
          local.get $1
          i32.load
          i32.load
          local.set $9
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store offset=12
          local.get $9
          local.get $1
          i32.load offset=4
          local.get $1
          i32.load
          local.set $9
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store offset=12
          local.get $9
          call $~lib/dataview/DataView#get:byteOffset
          i32.add
          local.get $6
          call $~lib/dataview/DataView#constructor
          local.set $9
          global.get $~lib/memory/__stack_pointer
          local.get $9
          i32.store offset=8
          local.get $9
          call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular.decodeDataView
          call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:CircularInstance
          local.get $1
          local.get $6
          call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
          br $break|1
         end
         local.get $1
         local.set $6
         local.get $6
         call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
         i32.wrap_i64
         local.set $6
         local.get $2
         i32.const 0
         local.get $1
         i32.load
         i32.load
         local.set $9
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store offset=12
         local.get $9
         local.get $1
         i32.load offset=4
         local.get $1
         i32.load
         local.set $9
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store offset=12
         local.get $9
         call $~lib/dataview/DataView#get:byteOffset
         i32.add
         local.get $6
         call $~lib/dataview/DataView#constructor
         local.set $9
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store offset=8
         local.get $9
         call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA.decodeDataView
         call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:CircularAInstance
         local.get $1
         local.get $6
         call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
         br $break|1
        end
        local.get $1
        local.set $6
        local.get $6
        call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
        i32.wrap_i64
        local.set $6
        local.get $2
        i32.const 0
        local.get $1
        i32.load
        i32.load
        local.set $9
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store offset=12
        local.get $9
        local.get $1
        i32.load offset=4
        local.get $1
        i32.load
        local.set $9
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store offset=12
        local.get $9
        call $~lib/dataview/DataView#get:byteOffset
        i32.add
        local.get $6
        call $~lib/dataview/DataView#constructor
        local.set $9
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store offset=8
        local.get $9
        call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties.decodeDataView
        call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Properties1
        local.get $1
        local.get $6
        call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
        br $break|1
       end
       local.get $1
       local.set $6
       local.get $6
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
       i32.wrap_i64
       local.set $6
       local.get $2
       i32.const 0
       local.get $1
       i32.load
       i32.load
       local.set $9
       global.get $~lib/memory/__stack_pointer
       local.get $9
       i32.store offset=12
       local.get $9
       local.get $1
       i32.load offset=4
       local.get $1
       i32.load
       local.set $9
       global.get $~lib/memory/__stack_pointer
       local.get $9
       i32.store offset=12
       local.get $9
       call $~lib/dataview/DataView#get:byteOffset
       i32.add
       local.get $6
       call $~lib/dataview/DataView#constructor
       local.set $9
       global.get $~lib/memory/__stack_pointer
       local.get $9
       i32.store offset=8
       local.get $9
       call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties.decodeDataView
       call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Properties2
       local.get $1
       local.get $6
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
       br $break|1
      end
      local.get $1
      i32.load offset=4
      local.get $1
      local.set $6
      local.get $6
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
      i32.wrap_i64
      i32.add
      local.set $6
      loop $while-continue|2
       local.get $1
       i32.load offset=4
       local.get $6
       i32.le_s
       local.set $7
       local.get $7
       if
        local.get $2
        i32.load offset=48
        local.set $9
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store offset=8
        local.get $9
        local.get $1
        local.set $8
        local.get $8
        call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
        i32.wrap_i64
        call $~lib/array/Array<u32>#push
        drop
        br $while-continue|2
       end
      end
      br $break|1
     end
     local.get $1
     local.get $4
     i32.const 7
     i32.and
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skipType
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.get $0
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/dataview/DataView#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $2
  call $~lib/array/Array<~lib/string/String>#constructor
  local.tee $3
  i32.store
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store offset=4
     local.get $9
     call $~lib/array/Array<~lib/string/String>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<~lib/string/String>#set:length
  local.get $3
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.load offset=8
  local.set $1
  local.get $0
  i32.load offset=16
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $2
  call $~lib/array/Array<~lib/string/String>#constructor
  local.tee $3
  i32.store
  i32.const 0
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $2
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $3
     local.get $4
     local.tee $8
     i32.const 1
     i32.add
     local.set $4
     local.get $8
     local.get $7
     i32.load
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store offset=4
     local.get $9
     call $~lib/array/Array<~lib/string/String>#__set
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<~lib/string/String>#set:length
  local.get $3
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#size (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  i32.const 0
  local.set $1
  local.get $1
  local.get $0
  i32.load
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.load
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/string/String#get:length
   i64.extend_i32_s
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
   local.get $0
   i32.load
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/string/String#get:length
   i32.add
  else
   i32.const 0
  end
  i32.add
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#get:size
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#keys
   local.tee $2
   i32.store offset=4
   i32.const 0
   local.set $3
   loop $for-loop|0
    local.get $3
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.lt_s
    local.set $4
    local.get $4
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     local.get $3
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $5
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     local.get $5
     call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#get
     local.tee $6
     i32.store offset=12
     local.get $5
     local.get $6
     call $__tests__/__fixtures__/__assembly__/complex_struct/__sizeMapEntry_string_Message_Message
     local.set $7
     local.get $7
     i32.const 0
     i32.gt_u
     if
      local.get $1
      i32.const 1
      local.get $7
      i64.extend_i32_u
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
      i32.add
      local.get $7
      i32.add
      i32.add
      local.set $1
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $1
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#size (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.set $1
  local.get $1
  local.get $0
  i32.load
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.load
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $~lib/string/String#get:length
   i64.extend_i32_s
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
   local.get $0
   i32.load
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $~lib/string/String#get:length
   i32.add
  else
   i32.const 0
  end
  i32.add
  local.set $1
  local.get $0
  i32.load offset=4
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store offset=4
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#size
   local.set $3
   local.get $3
   i32.const 0
   i32.gt_u
   if
    local.get $1
    i32.const 1
    local.get $3
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
    i32.add
    local.get $3
    i32.add
    i32.add
    local.set $1
   end
  end
  local.get $1
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#size (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.set $1
  local.get $1
  local.get $0
  i32.load
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.load
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $~lib/string/String#get:length
   i64.extend_i32_s
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
   local.get $0
   i32.load
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $~lib/string/String#get:length
   i32.add
  else
   i32.const 0
  end
  i32.add
  local.set $1
  local.get $0
  i32.load offset=4
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store offset=4
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#size
   local.set $3
   local.get $3
   i32.const 0
   i32.gt_u
   if
    local.get $1
    i32.const 1
    local.get $3
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
    i32.add
    local.get $3
    i32.add
    i32.add
    local.set $1
   end
  end
  local.get $1
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#size (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.set $1
  local.get $1
  local.get $0
  i32.load
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.load
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $~lib/string/String#get:length
   i64.extend_i32_s
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
   local.get $0
   i32.load
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $~lib/string/String#get:length
   i32.add
  else
   i32.const 0
  end
  i32.add
  local.set $1
  local.get $0
  i32.load offset=4
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store offset=4
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#size
   local.set $3
   local.get $3
   i32.const 0
   i32.gt_u
   if
    local.get $1
    i32.const 1
    local.get $3
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
    i32.add
    local.get $3
    i32.add
    i32.add
    local.set $1
   end
  end
  local.get $1
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#size (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  i32.const 0
  local.set $1
  local.get $1
  local.get $0
  i32.load
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.load
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/string/String#get:length
   i64.extend_i32_s
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
   local.get $0
   i32.load
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/string/String#get:length
   i32.add
  else
   i32.const 0
  end
  i32.add
  local.set $1
  local.get $0
  i32.load offset=4
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store offset=4
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/Labels#size
   local.set $3
   local.get $3
   i32.const 0
   i32.gt_u
   if
    local.get $1
    i32.const 1
    local.get $3
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
    i32.add
    local.get $3
    i32.add
    i32.add
    local.set $1
   end
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 0
  else
   i32.const 1
   local.get $0
   i32.load offset=8
   local.set $2
   local.get $2
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
  end
  i32.add
  local.set $1
  local.get $1
  local.get $0
  i32.load offset=12
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 0
  else
   i32.const 1
   local.get $0
   i32.load offset=12
   local.set $3
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
  end
  i32.add
  local.set $1
  local.get $1
  local.get $0
  i32.load offset=16
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 0
  else
   i32.const 1
   local.get $0
   i32.load offset=16
   local.set $2
   local.get $2
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
   i32.add
  end
  i32.add
  local.set $1
  local.get $1
  local.get $0
  i32.load offset=20
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $__tests__/__fixtures__/__assembly__/complex_struct/__size_string_repeated
  i32.add
  local.set $1
  local.get $0
  i32.load offset=24
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#get:size
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=24
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/map/Map<~lib/string/String,~lib/string/String>#keys
   local.tee $2
   i32.store offset=4
   i32.const 0
   local.set $3
   loop $for-loop|0
    local.get $3
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.lt_s
    local.set $4
    local.get $4
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     local.get $3
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $5
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=24
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     local.get $5
     call $~lib/map/Map<~lib/string/String,~lib/string/String>#get
     local.tee $6
     i32.store offset=12
     local.get $5
     local.get $6
     call $__tests__/__fixtures__/__assembly__/complex_struct/__sizeMapEntry_string_string
     local.set $7
     local.get $7
     i32.const 0
     i32.gt_u
     if
      local.get $1
      i32.const 1
      local.get $7
      i64.extend_i32_u
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
      i32.add
      local.get $7
      i32.add
      i32.add
      local.set $1
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $0
  i32.load offset=28
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#get:size
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=28
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#keys
   local.tee $2
   i32.store offset=4
   i32.const 0
   local.set $3
   loop $for-loop|1
    local.get $3
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.lt_s
    local.set $4
    local.get $4
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     local.get $3
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $7
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=28
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     local.get $7
     call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#get
     local.tee $6
     i32.store offset=12
     local.get $7
     local.get $6
     call $__tests__/__fixtures__/__assembly__/complex_struct/__sizeMapEntry_string_Message_Message
     local.set $5
     local.get $5
     i32.const 0
     i32.gt_u
     if
      local.get $1
      i32.const 1
      local.get $5
      i64.extend_i32_u
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
      i32.add
      local.get $5
      i32.add
      i32.add
      local.set $1
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|1
    end
   end
  end
  local.get $0
  i32.load offset=32
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=32
   local.tee $2
   i32.store offset=4
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#size
   local.set $3
   local.get $3
   i32.const 0
   i32.gt_u
   if
    local.get $1
    i32.const 1
    local.get $3
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
    i32.add
    local.get $3
    i32.add
    i32.add
    local.set $1
   end
  end
  local.get $0
  i32.load offset=36
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=36
   local.tee $3
   i32.store offset=20
   local.get $3
   call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#size
   local.set $2
   local.get $2
   i32.const 0
   i32.gt_u
   if
    local.get $1
    i32.const 1
    local.get $2
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
    i32.add
    local.get $2
    i32.add
    i32.add
    local.set $1
   end
  end
  local.get $0
  i32.load offset=40
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=40
   local.tee $2
   i32.store offset=4
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#size
   local.set $3
   local.get $3
   i32.const 0
   i32.gt_u
   if
    local.get $1
    i32.const 1
    local.get $3
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
    i32.add
    local.get $3
    i32.add
    i32.add
    local.set $1
   end
  end
  local.get $0
  i32.load offset=44
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=44
   local.tee $3
   i32.store offset=20
   local.get $3
   call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#size
   local.set $2
   local.get $2
   i32.const 0
   i32.gt_u
   if
    local.get $1
    i32.const 1
    local.get $2
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
    i32.add
    local.get $2
    i32.add
    i32.add
    local.set $1
   end
  end
  local.get $0
  i32.load offset=48
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/array/Array<u32>#get:length
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load offset=48
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $__tests__/__fixtures__/__assembly__/complex_struct/__size_uint32_repeated_packed
   local.set $2
   local.get $2
   i32.const 0
   i32.gt_u
   if
    local.get $1
    i32.const 1
    local.get $2
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
    i32.add
    local.get $2
    i32.add
    i32.add
    local.set $1
   end
  end
  local.get $1
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#encodeU8Array (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store
  local.get $0
  i32.load
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if
   local.get $1
   local.set $4
   i32.const 10
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.set $4
   local.get $0
   i32.load
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/string/String#get:length
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.get $0
   i32.load
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=8
   local.get $12
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string
  end
  local.get $0
  i32.load offset=4
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#get:size
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#keys
   local.tee $4
   i32.store offset=12
   i32.const 0
   local.set $3
   loop $for-loop|0
    local.get $3
    local.get $4
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.lt_s
    local.set $5
    local.get $5
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     local.get $3
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $6
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store offset=4
     local.get $12
     local.get $6
     call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#get
     local.tee $7
     i32.store offset=20
     local.get $6
     local.get $7
     call $__tests__/__fixtures__/__assembly__/complex_struct/__sizeMapEntry_string_Message_Message
     local.set $8
     local.get $8
     i32.const 0
     i32.gt_u
     if
      local.get $1
      local.set $10
      i32.const 18
      local.set $9
      local.get $10
      local.get $9
      i64.extend_i32_u
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
      local.get $1
      local.set $10
      local.get $8
      local.set $9
      local.get $10
      local.get $9
      i64.extend_i32_u
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
      local.get $6
      call $~lib/string/String#get:length
      i32.const 0
      i32.gt_s
      if
       local.get $1
       local.set $10
       i32.const 10
       local.set $9
       local.get $10
       local.get $9
       i64.extend_i32_u
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
       local.get $1
       local.set $10
       local.get $6
       call $~lib/string/String#get:length
       local.set $9
       local.get $10
       local.get $9
       i64.extend_i32_u
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
       local.get $1
       local.get $6
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string
      end
      local.get $7
      call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#size
      local.set $10
      local.get $10
      i32.const 0
      i32.gt_u
      if
       local.get $1
       local.set $11
       i32.const 18
       local.set $9
       local.get $11
       local.get $9
       i64.extend_i32_u
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
       local.get $1
       local.set $11
       local.get $10
       local.set $9
       local.get $11
       local.get $9
       i64.extend_i32_u
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
       local.get $7
       local.get $1
       call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#encodeU8Array
       drop
      end
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $2
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#encodeU8Array (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store
  local.get $0
  i32.load
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if
   local.get $1
   local.set $4
   i32.const 10
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.set $4
   local.get $0
   i32.load
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   call $~lib/string/String#get:length
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.get $0
   i32.load
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=8
   local.get $7
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string
  end
  local.get $0
  i32.load offset=4
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $4
   i32.store offset=12
   local.get $4
   call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#size
   local.set $3
   local.get $3
   i32.const 0
   i32.gt_u
   if
    local.get $1
    local.set $6
    i32.const 18
    local.set $5
    local.get $6
    local.get $5
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $1
    local.set $6
    local.get $3
    local.set $5
    local.get $6
    local.get $5
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $4
    local.get $1
    call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#encodeU8Array
    drop
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#encodeU8Array (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store
  local.get $0
  i32.load
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if
   local.get $1
   local.set $4
   i32.const 10
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.set $4
   local.get $0
   i32.load
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   call $~lib/string/String#get:length
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.get $0
   i32.load
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=8
   local.get $7
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string
  end
  local.get $0
  i32.load offset=4
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $4
   i32.store offset=12
   local.get $4
   call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#size
   local.set $3
   local.get $3
   i32.const 0
   i32.gt_u
   if
    local.get $1
    local.set $6
    i32.const 18
    local.set $5
    local.get $6
    local.get $5
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $1
    local.set $6
    local.get $3
    local.set $5
    local.get $6
    local.get $5
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $4
    local.get $1
    call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#encodeU8Array
    drop
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#encodeU8Array (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store
  local.get $0
  i32.load
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if
   local.get $1
   local.set $4
   i32.const 10
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.set $4
   local.get $0
   i32.load
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   call $~lib/string/String#get:length
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.get $0
   i32.load
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=8
   local.get $7
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string
  end
  local.get $0
  i32.load offset=4
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $4
   i32.store offset=12
   local.get $4
   call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#size
   local.set $3
   local.get $3
   i32.const 0
   i32.gt_u
   if
    local.get $1
    local.set $6
    i32.const 18
    local.set $5
    local.get $6
    local.get $5
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $1
    local.set $6
    local.get $3
    local.set $5
    local.get $6
    local.get $5
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $4
    local.get $1
    call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#encodeU8Array
    drop
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#encodeU8Array (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store
  local.get $0
  i32.load
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if
   local.get $1
   local.set $4
   i32.const 10
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.set $4
   local.get $0
   i32.load
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/string/String#get:length
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.get $0
   i32.load
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=8
   local.get $12
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string
  end
  local.get $0
  i32.load offset=4
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $4
   i32.store offset=12
   local.get $4
   call $__tests__/__fixtures__/__assembly__/complex_struct/Labels#size
   local.set $3
   local.get $3
   i32.const 0
   i32.gt_u
   if
    local.get $1
    local.set $6
    i32.const 18
    local.set $5
    local.get $6
    local.get $5
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $1
    local.set $6
    local.get $3
    local.set $5
    local.get $6
    local.get $5
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $4
    local.get $1
    call $__tests__/__fixtures__/__assembly__/complex_struct/Labels#encodeU8Array
    drop
   end
  end
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.ne
  if
   local.get $1
   local.set $6
   i32.const 24
   local.set $5
   local.get $6
   local.get $5
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=8
   local.set $4
   local.get $3
   local.get $4
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
  end
  local.get $0
  i32.load offset=12
  i32.const 0
  i32.ne
  if
   local.get $1
   local.set $6
   i32.const 32
   local.set $5
   local.get $6
   local.get $5
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=12
   local.set $4
   local.get $3
   local.get $4
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
  end
  local.get $0
  i32.load offset=16
  i32.const 0
  i32.ne
  if
   local.get $1
   local.set $6
   i32.const 40
   local.set $5
   local.get $6
   local.get $5
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=16
   local.set $4
   local.get $3
   local.get $4
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
  end
  local.get $0
  i32.load offset=20
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $~lib/array/Array<~lib/string/String>#get:length
  i32.const 0
  i32.gt_s
  if
   i32.const 0
   local.set $3
   loop $for-loop|0
    local.get $3
    local.get $0
    i32.load offset=20
    local.set $12
    global.get $~lib/memory/__stack_pointer
    local.get $12
    i32.store offset=4
    local.get $12
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.lt_s
    local.set $4
    local.get $4
    if
     local.get $1
     local.set $6
     i32.const 50
     local.set $5
     local.get $6
     local.get $5
     i64.extend_i32_u
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
     local.get $1
     local.set $6
     local.get $0
     i32.load offset=20
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store offset=8
     local.get $12
     local.get $3
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store offset=4
     local.get $12
     call $~lib/string/String#get:length
     local.set $5
     local.get $6
     local.get $5
     i64.extend_i32_u
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
     local.get $1
     local.get $0
     i32.load offset=20
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store offset=8
     local.get $12
     local.get $3
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store offset=8
     local.get $12
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $0
  i32.load offset=24
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#get:size
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=24
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/map/Map<~lib/string/String,~lib/string/String>#keys
   local.tee $3
   i32.store offset=16
   i32.const 0
   local.set $4
   loop $for-loop|1
    local.get $4
    local.get $3
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.lt_s
    local.set $6
    local.get $6
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     local.get $4
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $5
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=24
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store offset=4
     local.get $12
     local.get $5
     call $~lib/map/Map<~lib/string/String,~lib/string/String>#get
     local.tee $7
     i32.store offset=24
     local.get $5
     local.get $7
     call $__tests__/__fixtures__/__assembly__/complex_struct/__sizeMapEntry_string_string
     local.set $8
     local.get $8
     i32.const 0
     i32.gt_u
     if
      local.get $1
      local.set $10
      i32.const 58
      local.set $9
      local.get $10
      local.get $9
      i64.extend_i32_u
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
      local.get $1
      local.set $10
      local.get $8
      local.set $9
      local.get $10
      local.get $9
      i64.extend_i32_u
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
      local.get $5
      call $~lib/string/String#get:length
      i32.const 0
      i32.gt_s
      if
       local.get $1
       local.set $10
       i32.const 10
       local.set $9
       local.get $10
       local.get $9
       i64.extend_i32_u
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
       local.get $1
       local.set $10
       local.get $5
       call $~lib/string/String#get:length
       local.set $9
       local.get $10
       local.get $9
       i64.extend_i32_u
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
       local.get $1
       local.get $5
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string
      end
      local.get $7
      call $~lib/string/String#get:length
      i32.const 0
      i32.gt_s
      if
       local.get $1
       local.set $10
       i32.const 18
       local.set $9
       local.get $10
       local.get $9
       i64.extend_i32_u
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
       local.get $1
       local.set $10
       local.get $7
       call $~lib/string/String#get:length
       local.set $9
       local.get $10
       local.get $9
       i64.extend_i32_u
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
       local.get $1
       local.get $7
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string
      end
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|1
    end
   end
  end
  local.get $0
  i32.load offset=28
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#get:size
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=28
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#keys
   local.tee $3
   i32.store offset=16
   i32.const 0
   local.set $4
   loop $for-loop|2
    local.get $4
    local.get $3
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.lt_s
    local.set $6
    local.get $6
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     local.get $4
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $8
     i32.store offset=28
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=28
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store offset=4
     local.get $12
     local.get $8
     call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#get
     local.tee $7
     i32.store offset=24
     local.get $8
     local.get $7
     call $__tests__/__fixtures__/__assembly__/complex_struct/__sizeMapEntry_string_Message_Message
     local.set $5
     local.get $5
     i32.const 0
     i32.gt_u
     if
      local.get $1
      local.set $10
      i32.const 66
      local.set $9
      local.get $10
      local.get $9
      i64.extend_i32_u
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
      local.get $1
      local.set $10
      local.get $5
      local.set $9
      local.get $10
      local.get $9
      i64.extend_i32_u
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
      local.get $8
      call $~lib/string/String#get:length
      i32.const 0
      i32.gt_s
      if
       local.get $1
       local.set $10
       i32.const 10
       local.set $9
       local.get $10
       local.get $9
       i64.extend_i32_u
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
       local.get $1
       local.set $10
       local.get $8
       call $~lib/string/String#get:length
       local.set $9
       local.get $10
       local.get $9
       i64.extend_i32_u
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
       local.get $1
       local.get $8
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string
      end
      local.get $7
      call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#size
      local.set $10
      local.get $10
      i32.const 0
      i32.gt_u
      if
       local.get $1
       local.set $11
       i32.const 18
       local.set $9
       local.get $11
       local.get $9
       i64.extend_i32_u
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
       local.get $1
       local.set $11
       local.get $10
       local.set $9
       local.get $11
       local.get $9
       i64.extend_i32_u
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
       local.get $7
       local.get $1
       call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#encodeU8Array
       drop
      end
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|2
    end
   end
  end
  local.get $0
  i32.load offset=32
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=32
   local.tee $3
   i32.store offset=16
   local.get $3
   call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#size
   local.set $4
   local.get $4
   i32.const 0
   i32.gt_u
   if
    local.get $1
    local.set $11
    i32.const 74
    local.set $9
    local.get $11
    local.get $9
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $1
    local.set $8
    local.get $4
    local.set $10
    local.get $8
    local.get $10
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $3
    local.get $1
    call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#encodeU8Array
    drop
   end
  end
  local.get $0
  i32.load offset=36
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=36
   local.tee $4
   i32.store offset=12
   local.get $4
   call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#size
   local.set $3
   local.get $3
   i32.const 0
   i32.gt_u
   if
    local.get $1
    local.set $5
    i32.const 82
    local.set $7
    local.get $5
    local.get $7
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $1
    local.set $9
    local.get $3
    local.set $6
    local.get $9
    local.get $6
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $4
    local.get $1
    call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#encodeU8Array
    drop
   end
  end
  local.get $0
  i32.load offset=40
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=40
   local.tee $3
   i32.store offset=16
   local.get $3
   call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#size
   local.set $4
   local.get $4
   i32.const 0
   i32.gt_u
   if
    local.get $1
    local.set $10
    i32.const 90
    local.set $11
    local.get $10
    local.get $11
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $1
    local.set $7
    local.get $4
    local.set $8
    local.get $7
    local.get $8
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $3
    local.get $1
    call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#encodeU8Array
    drop
   end
  end
  local.get $0
  i32.load offset=44
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=44
   local.tee $4
   i32.store offset=12
   local.get $4
   call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#size
   local.set $3
   local.get $3
   i32.const 0
   i32.gt_u
   if
    local.get $1
    local.set $6
    i32.const 98
    local.set $5
    local.get $6
    local.get $5
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $1
    local.set $11
    local.get $3
    local.set $9
    local.get $11
    local.get $9
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $4
    local.get $1
    call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#encodeU8Array
    drop
   end
  end
  local.get $0
  i32.load offset=48
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $~lib/array/Array<u32>#get:length
  i32.const 0
  i32.gt_s
  if
   local.get $1
   local.set $8
   i32.const 106
   local.set $10
   local.get $8
   local.get $10
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.set $5
   local.get $0
   i32.load offset=48
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $__tests__/__fixtures__/__assembly__/complex_struct/__size_uint32_repeated_packed
   local.set $7
   local.get $5
   local.get $7
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   i32.const 0
   local.set $5
   loop $for-loop|3
    local.get $5
    local.get $0
    i32.load offset=48
    local.set $12
    global.get $~lib/memory/__stack_pointer
    local.get $12
    i32.store offset=4
    local.get $12
    call $~lib/array/Array<u32>#get:length
    i32.lt_s
    local.set $7
    local.get $7
    if
     local.get $1
     local.set $9
     local.get $0
     i32.load offset=48
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store offset=4
     local.get $12
     local.get $5
     call $~lib/array/Array<u32>#__get
     local.set $6
     local.get $9
     local.get $6
     i64.extend_i32_u
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|3
    end
   end
  end
  local.get $2
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#constructor
   local.tee $1
   i32.store offset=4
  end
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#encodeU8Array
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#encodeU8Array@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/staticarray/StaticArray.fromArray<u8>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.get $0
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/dataview/DataView#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#constructor
   local.tee $1
   i32.store offset=4
  end
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#encodeU8Array
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#encodeU8Array@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/staticarray/StaticArray.fromArray<u8>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#constructor
  local.tee $2
  i32.store offset=4
  loop $while-continue|0
   local.get $1
   local.set $3
   local.get $3
   i32.load offset=4
   local.get $3
   i32.load
   i32.load offset=8
   i32.ge_s
   i32.eqz
   local.set $3
   local.get $3
   if
    local.get $1
    local.set $4
    local.get $4
    local.set $5
    local.get $5
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
    i32.wrap_i64
    local.set $4
    local.get $4
    i32.const 3
    i32.shr_u
    local.set $5
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $5
        local.set $6
        local.get $6
        i32.const 1
        i32.eq
        br_if $case0|1
        local.get $6
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       local.get $2
       i32.load
       local.set $7
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store offset=8
       local.get $7
       local.get $1
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#string
       local.set $7
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store offset=12
       local.get $7
       call $~lib/array/Array<~lib/string/String>#push
       drop
       br $break|1
      end
      local.get $1
      local.set $6
      local.get $6
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
      i32.wrap_i64
      local.set $6
      local.get $2
      i32.const 0
      local.get $1
      i32.load
      i32.load
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=16
      local.get $7
      local.get $1
      i32.load offset=4
      local.get $1
      i32.load
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=16
      local.get $7
      call $~lib/dataview/DataView#get:byteOffset
      i32.add
      local.get $6
      call $~lib/dataview/DataView#constructor
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=8
      local.get $7
      call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp.decodeDataView
      call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#set:Timestamp
      local.get $1
      local.get $6
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skip
      br $break|1
     end
     local.get $1
     local.get $4
     i32.const 7
     i32.and
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skipType
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.get $0
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/dataview/DataView#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#size (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.set $1
  local.get $1
  local.get $0
  i32.load
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $__tests__/__fixtures__/__assembly__/complex_struct/__size_string_repeated
  i32.add
  local.set $1
  local.get $0
  i32.load offset=4
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store offset=4
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#size
   local.set $3
   local.get $3
   i32.const 0
   i32.gt_u
   if
    local.get $1
    i32.const 1
    local.get $3
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Sizer.varint64
    i32.add
    local.get $3
    i32.add
    i32.add
    local.set $1
   end
  end
  local.get $1
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#encodeU8Array (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store
  local.get $0
  i32.load
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/array/Array<~lib/string/String>#get:length
  i32.const 0
  i32.gt_s
  if
   i32.const 0
   local.set $3
   loop $for-loop|0
    local.get $3
    local.get $0
    i32.load
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.lt_s
    local.set $4
    local.get $4
    if
     local.get $1
     local.set $6
     i32.const 10
     local.set $5
     local.get $6
     local.get $5
     i64.extend_i32_u
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
     local.get $1
     local.set $6
     local.get $0
     i32.load
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=8
     local.get $7
     local.get $3
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=4
     local.get $7
     call $~lib/string/String#get:length
     local.set $5
     local.get $6
     local.get $5
     i64.extend_i32_u
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
     local.get $1
     local.get $0
     i32.load
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=8
     local.get $7
     local.get $3
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=8
     local.get $7
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#string
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $0
  i32.load offset=4
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $3
   i32.store offset=12
   local.get $3
   call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#size
   local.set $4
   local.get $4
   i32.const 0
   i32.gt_u
   if
    local.get $1
    local.set $6
    i32.const 18
    local.set $5
    local.get $6
    local.get $5
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $1
    local.set $6
    local.get $4
    local.set $5
    local.get $6
    local.get $5
    i64.extend_i32_u
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
    local.get $3
    local.get $1
    call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#encodeU8Array
    drop
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#constructor
   local.tee $1
   i32.store offset=4
  end
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#encodeU8Array
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#encodeU8Array@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/staticarray/StaticArray.fromArray<u8>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.get $0
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/dataview/DataView#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#constructor
   local.tee $1
   i32.store offset=4
  end
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#encodeU8Array
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#encodeU8Array@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/staticarray/StaticArray.fromArray<u8>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.get $0
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/dataview/DataView#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#constructor
   local.tee $1
   i32.store offset=4
  end
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#encodeU8Array
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#encodeU8Array@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/staticarray/StaticArray.fromArray<u8>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.get $0
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/dataview/DataView#constructor@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#constructor
   local.tee $1
   i32.store offset=4
  end
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#encodeU8Array
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#encodeU8Array@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/staticarray/StaticArray.fromArray<u8>
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/dataview/DataView#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/dataview/DataView#set:buffer
  local.get $0
  i32.const 0
  call $~lib/dataview/DataView#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/dataview/DataView#set:byteLength
  local.get $3
  i32.const 1073741820
  i32.gt_u
  local.get $2
  local.get $3
  i32.add
  local.get $1
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_u
  i32.or
  if
   i32.const 32
   i32.const 80
   i32.const 25
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/dataview/DataView#set:buffer
  local.get $1
  local.get $2
  i32.add
  local.set $4
  local.get $0
  local.get $4
  call $~lib/dataview/DataView#set:dataStart
  local.get $0
  local.get $3
  call $~lib/dataview/DataView#set:byteLength
  local.get $0
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:view
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:view
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#set:pos
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 544
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#set:Properties
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 736
   i32.const 864
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.eqz
  if
   i32.const 928
   local.set $8
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   return
  end
  local.get $0
  i32.const 31
  i32.shr_u
  local.set $2
  local.get $2
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  local.get $1
  i32.const 10
  i32.eq
  if
   local.get $0
   call $~lib/util/number/decimalCount32
   local.get $2
   i32.add
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   local.get $3
   local.set $7
   local.get $0
   local.set $6
   local.get $4
   local.set $5
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $7
   local.get $6
   local.get $5
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $1
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $0
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.get $2
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $3
    i32.store
    local.get $3
    local.set $7
    local.get $0
    local.set $6
    local.get $4
    local.set $5
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $7
    local.get $6
    i64.extend_i32_u
    local.get $5
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $0
    local.set $4
    local.get $4
    i64.extend_i32_u
    local.get $1
    call $~lib/util/number/ulog_base
    local.get $2
    i32.add
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $3
    i32.store
    local.get $3
    local.get $4
    i64.extend_i32_u
    local.get $7
    local.get $1
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $2
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  i32.lt_s
  if
   i32.const 544
   local.set $12
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $12
   return
  end
  local.get $3
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $4
   i32.store
   local.get $4
   if (result i32)
    local.get $4
   else
    i32.const 544
   end
   local.set $12
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $12
   return
  end
  i32.const 0
  local.set $5
  i32.const 0
  local.set $4
  loop $for-loop|0
   local.get $4
   local.get $1
   i32.lt_s
   local.set $7
   local.get $7
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $6
    i32.store offset=4
    local.get $6
    i32.const 0
    i32.ne
    if
     local.get $5
     local.get $6
     call $~lib/string/String#get:length
     i32.add
     local.set $5
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $8
  local.get $2
  call $~lib/string/String#get:length
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $5
  local.get $9
  local.get $3
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $10
  i32.store offset=8
  i32.const 0
  local.set $4
  loop $for-loop|1
   local.get $4
   local.get $3
   i32.lt_s
   local.set $7
   local.get $7
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $6
    i32.store offset=4
    local.get $6
    i32.const 0
    i32.ne
    if
     local.get $6
     call $~lib/string/String#get:length
     local.set $11
     local.get $10
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     local.get $6
     local.get $11
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $8
     local.get $11
     i32.add
     local.set $8
    end
    local.get $9
    if
     local.get $10
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $9
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $8
     local.get $9
     i32.add
     local.set $8
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $6
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.ne
  if
   local.get $10
   local.get $8
   i32.const 1
   i32.shl
   i32.add
   local.get $6
   local.get $6
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $10
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
 )
 (func $~lib/arraybuffer/ArrayBuffer#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $1
   local.tee $5
   local.get $3
   local.tee $4
   local.get $5
   local.get $4
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $2
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $2
   local.tee $5
   local.get $3
   local.tee $4
   local.get $5
   local.get $4
   i32.lt_s
   select
  end
  local.set $2
  local.get $2
  local.get $1
  i32.sub
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $7
  i32.store
  local.get $7
  local.get $0
  local.get $1
  i32.add
  local.get $6
  call $~lib/memory/memory.copy
  local.get $7
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $3
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $4
  local.get $3
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 2672
   i32.const 767
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store
  local.get $5
  local.set $6
  block $while-break|0
   loop $while-continue|0
    local.get $3
    local.get $4
    i32.lt_u
    local.set $7
    local.get $7
    if
     local.get $3
     i32.load8_u
     local.set $8
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     local.get $8
     i32.const 128
     i32.and
     i32.eqz
     if
      local.get $2
      local.get $8
      i32.eqz
      i32.and
      if
       br $while-break|0
      end
      local.get $6
      local.get $8
      i32.store16
     else
      local.get $4
      local.get $3
      i32.eq
      if
       br $while-break|0
      end
      local.get $3
      i32.load8_u
      i32.const 63
      i32.and
      local.set $9
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      local.get $8
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $6
       local.get $8
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       local.get $9
       i32.or
       i32.store16
      else
       local.get $4
       local.get $3
       i32.eq
       if
        br $while-break|0
       end
       local.get $3
       i32.load8_u
       i32.const 63
       i32.and
       local.set $10
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       local.get $8
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $8
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $9
        i32.const 6
        i32.shl
        i32.or
        local.get $10
        i32.or
        local.set $8
       else
        local.get $4
        local.get $3
        i32.eq
        if
         br $while-break|0
        end
        local.get $8
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $9
        i32.const 12
        i32.shl
        i32.or
        local.get $10
        i32.const 6
        i32.shl
        i32.or
        local.get $3
        i32.load8_u
        i32.const 63
        i32.and
        i32.or
        local.set $8
        local.get $3
        i32.const 1
        i32.add
        local.set $3
       end
       local.get $8
       i32.const 65536
       i32.lt_u
       if
        local.get $6
        local.get $8
        i32.store16
       else
        local.get $8
        i32.const 65536
        i32.sub
        local.set $8
        local.get $8
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.set $11
        local.get $8
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        local.set $12
        local.get $6
        local.get $11
        local.get $12
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $6
        i32.const 2
        i32.add
        local.set $6
       end
      end
     end
     local.get $6
     i32.const 2
     i32.add
     local.set $6
     br $while-continue|0
    end
   end
  end
  local.get $5
  local.get $6
  local.get $5
  i32.sub
  call $~lib/rt/itcms/__renew
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
 )
 (func $~lib/util/number/utoa32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 736
   i32.const 864
   i32.const 350
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.eqz
  if
   i32.const 928
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  local.get $1
  i32.const 10
  i32.eq
  if
   local.get $0
   call $~lib/util/number/decimalCount32
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   local.set $6
   local.get $0
   local.set $5
   local.get $3
   local.set $4
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $6
   local.get $5
   local.get $4
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $1
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $0
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $2
    i32.store
    local.get $2
    local.set $6
    local.get $0
    local.set $5
    local.get $3
    local.set $4
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $6
    local.get $5
    i64.extend_i32_u
    local.get $4
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $0
    i64.extend_i32_u
    local.get $1
    call $~lib/util/number/ulog_base
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $2
    i32.store
    local.get $2
    local.get $0
    i64.extend_i32_u
    local.get $3
    local.get $1
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#constructor
  local.tee $2
  i32.store offset=4
  loop $while-continue|0
   local.get $1
   local.set $3
   local.get $3
   i32.load offset=4
   local.get $3
   i32.load
   i32.load offset=8
   i32.ge_s
   i32.eqz
   local.set $3
   local.get $3
   if
    local.get $1
    local.set $4
    local.get $4
    local.set $5
    local.get $5
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
    i32.wrap_i64
    local.set $4
    local.get $4
    i32.const 3
    i32.shr_u
    local.set $5
    block $break|1
     block $case1|1
      block $case0|1
       local.get $5
       local.set $6
       local.get $6
       i32.const 1
       i32.eq
       br_if $case0|1
       br $case1|1
      end
      local.get $2
      local.get $1
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#string
      call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#set:Properties
      br $break|1
     end
     local.get $1
     local.get $4
     i32.const 7
     i32.and
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skipType
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/string/String.UTF8.encode (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.byteLength
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $0
  local.get $0
  call $~lib/string/String#get:length
  local.get $3
  local.get $1
  local.get $2
  call $~lib/string/String.UTF8.encodeUnsafe
  drop
  local.get $3
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#set:buf
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#set:buf
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<u8>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<u8>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<u8>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<u8>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 0
  i32.shr_u
  i32.gt_u
  if
   i32.const 32
   i32.const 2912
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 0
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=4
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $0
  local.get $5
  call $~lib/array/Array<u8>#set:buffer
  local.get $0
  local.get $5
  call $~lib/array/Array<u8>#set:dataStart
  local.get $0
  local.get $4
  call $~lib/array/Array<u8>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#set:length_
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/staticarray/StaticArray.fromArray<u8> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  call $~lib/array/Array<u8>#get:length
  local.set $1
  local.get $1
  i32.const 0
  i32.shl
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 8
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  i32.const 0
  drop
  local.get $3
  local.get $0
  i32.load offset=4
  local.get $2
  call $~lib/memory/memory.copy
  local.get $3
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 544
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#set:Properties
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#constructor
  local.tee $2
  i32.store offset=4
  loop $while-continue|0
   local.get $1
   local.set $3
   local.get $3
   i32.load offset=4
   local.get $3
   i32.load
   i32.load offset=8
   i32.ge_s
   i32.eqz
   local.set $3
   local.get $3
   if
    local.get $1
    local.set $4
    local.get $4
    local.set $5
    local.get $5
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
    i32.wrap_i64
    local.set $4
    local.get $4
    i32.const 3
    i32.shr_u
    local.set $5
    block $break|1
     block $case1|1
      block $case0|1
       local.get $5
       local.set $6
       local.get $6
       i32.const 1
       i32.eq
       br_if $case0|1
       br $case1|1
      end
      local.get $2
      local.get $1
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#string
      call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#set:Properties
      br $break|1
     end
     local.get $1
     local.get $4
     i32.const 7
     i32.and
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skipType
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i64.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#set:seconds
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#set:nanos
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#constructor
  local.tee $2
  i32.store offset=4
  loop $while-continue|0
   local.get $1
   local.set $3
   local.get $3
   i32.load offset=4
   local.get $3
   i32.load
   i32.load offset=8
   i32.ge_s
   i32.eqz
   local.set $3
   local.get $3
   if
    local.get $1
    local.set $4
    local.get $4
    local.set $5
    local.get $5
    call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
    i32.wrap_i64
    local.set $4
    local.get $4
    i32.const 3
    i32.shr_u
    local.set $5
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $5
        local.set $6
        local.get $6
        i32.const 1
        i32.eq
        br_if $case0|1
        local.get $6
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       local.get $2
       local.get $1
       local.set $6
       local.get $6
       call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
       i32.wrap_i64
       i64.extend_i32_s
       call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#set:seconds
       br $break|1
      end
      local.get $2
      local.get $1
      local.set $6
      local.get $6
      call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#varint
      i32.wrap_i64
      call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#set:nanos
      br $break|1
     end
     local.get $1
     local.get $4
     i32.const 7
     i32.and
     call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Decoder#skipType
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#encodeU8Array (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $2
  i32.store
  local.get $0
  i64.load
  i64.const 0
  i64.ne
  if
   local.get $1
   local.set $4
   i32.const 8
   local.set $3
   local.get $4
   local.get $3
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.set $3
   local.get $0
   i64.load
   local.set $5
   local.get $3
   local.get $5
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
  end
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.ne
  if
   local.get $1
   local.set $3
   i32.const 16
   local.set $4
   local.get $3
   local.get $4
   i64.extend_i32_u
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=8
   local.set $4
   local.get $3
   local.get $4
   i64.extend_i32_s
   call $__tests__/__fixtures__/__assembly__/complex_struct/__proto.Encoder#varint64
  end
  local.get $2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 32
   i32.const 2912
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=4
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $0
  local.get $5
  call $~lib/array/Array<~lib/string/String>#set:buffer
  local.get $0
  local.get $5
  call $~lib/array/Array<~lib/string/String>#set:dataStart
  local.get $0
  local.get $4
  call $~lib/array/Array<~lib/string/String>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#set:length_
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Labels#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Labels#set:Labels
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 240
   i32.const 2912
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 3024
   i32.const 2912
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 32
   i32.const 3152
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#set:entriesCount
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 17
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:entriesCount
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 544
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#set:String
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#set:Circular
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 20
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 544
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#set:String
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#set:CircularA
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 544
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#set:String
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#set:CircularB
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<u32>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 21
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 32
   i32.const 2912
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=4
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $0
  local.get $5
  call $~lib/array/Array<u32>#set:buffer
  local.get $0
  local.get $5
  call $~lib/array/Array<u32>#set:dataStart
  local.get $0
  local.get $4
  call $~lib/array/Array<u32>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#set:length_
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 52
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 544
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:String
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Labels#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Labels
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Status1
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Status2
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Network
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Strings
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:MapString
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:MapMessages
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:CircularInstance
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:CircularAInstance
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Properties1
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Properties2
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u32>#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Services
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#find
  local.set $4
  local.get $4
  if
   local.get $4
   local.get $2
   call $~lib/map/MapEntry<~lib/string/String,~lib/string/String>#set:value
   i32.const 1
   drop
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<~lib/string/String,~lib/string/String>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $5
   i32.store
   local.get $5
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<~lib/string/String,~lib/string/String>#set:entriesOffset
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   call $~lib/map/MapEntry<~lib/string/String,~lib/string/String>#set:key
   i32.const 1
   drop
   local.get $0
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $4
   local.get $2
   call $~lib/map/MapEntry<~lib/string/String,~lib/string/String>#set:value
   i32.const 1
   drop
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<~lib/string/String,~lib/string/String>#set:entriesCount
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $4
   local.get $6
   i32.load
   call $~lib/map/MapEntry<~lib/string/String,~lib/string/String>#set:taggedNext
   local.get $6
   local.get $4
   i32.store
  end
  local.get $0
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 544
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#set:String
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#set:Messages
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#find
  local.set $4
  local.get $4
  if
   local.get $4
   local.get $2
   call $~lib/map/MapEntry<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:value
   i32.const 1
   drop
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $5
   i32.store
   local.get $5
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:entriesOffset
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   call $~lib/map/MapEntry<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:key
   i32.const 1
   drop
   local.get $0
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $4
   local.get $2
   call $~lib/map/MapEntry<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:value
   i32.const 1
   drop
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:entriesCount
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $4
   local.get $6
   i32.load
   call $~lib/map/MapEntry<~lib/string/String,__tests__/__fixtures__/__assembly__/complex_struct/Message_Message>#set:taggedNext
   local.get $6
   local.get $4
   i32.store
  end
  local.get $0
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 22
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#set:Strings
  local.get $0
  i32.const 0
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#constructor
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#set:Timestamp
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#get:Properties (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#get:Properties
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#set:Properties (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#set:Properties
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#size (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#size
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#encode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#encodeU8Array@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties.decode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.Properties.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.Properties.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#get:Properties (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#get:Properties
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#set:Properties (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#set:Properties
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#size (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#size
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#encode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#encodeU8Array@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties.decode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/external.external.Properties.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#get:seconds (param $0 i32) (result i64)
  (local $1 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#get:seconds
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#set:seconds (param $0 i32) (param $1 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#set:seconds
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#get:nanos (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#get:nanos
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#set:nanos (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#set:nanos
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#size (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#size
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#encode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#encodeU8Array@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp.decode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/google.protobuf.Timestamp.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels#get:Labels (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Labels#get:Labels
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels#set:Labels (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Labels#set:Labels
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels#size (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Labels#size
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Labels#encode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Labels#encodeU8Array@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Labels#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Labels.decode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Labels.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Labels.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:String (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:String
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:String (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:String
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Labels (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Labels
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Labels (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Labels
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Status1 (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Status1
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Status1 (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Status1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Status2 (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Status2
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Status2 (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Status2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Network (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Network
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Network (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Network
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Strings (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Strings
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Strings (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Strings
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:MapString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:MapString
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:MapString (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:MapString
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:MapMessages (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:MapMessages
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:MapMessages (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:MapMessages
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:CircularInstance (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:CircularInstance
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:CircularInstance (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:CircularInstance
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:CircularAInstance (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:CircularAInstance
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:CircularAInstance (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:CircularAInstance
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Properties1 (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Properties1
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Properties1 (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Properties1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Properties2 (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Properties2
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Properties2 (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Properties2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Services (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#get:Services
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Services (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#set:Services
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#size (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#size
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#encode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#encodeU8Array@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message.decode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#get:String (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#get:String
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#set:String (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#set:String
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#get:Messages (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#get:Messages
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#set:Messages (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#set:Messages
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#size (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#size
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#encode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#encodeU8Array@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message.decode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#get:Strings (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#get:Strings
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#set:Strings (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#set:Strings
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#get:Timestamp (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#get:Timestamp
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#set:Timestamp (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#set:Timestamp
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#size (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#size
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#encode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#encodeU8Array@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message.decode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Message_Message.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#get:String (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#get:String
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#set:String (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#set:String
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#get:Circular (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#get:Circular
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#set:Circular (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#set:Circular
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#size (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#size
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#encode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#encodeU8Array@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular.decode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_Circular.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#get:String (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#get:String
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#set:String (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#set:String
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#get:CircularB (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#get:CircularB
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#set:CircularB (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#set:CircularB
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#size (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#size
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#encode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#encodeU8Array@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA.decode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularA.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#get:String (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#get:String
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#set:String (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#set:String
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#get:CircularA (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#get:CircularA
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#set:CircularA (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#set:CircularA
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#size (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#size
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#encode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#encode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#encodeU8Array@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#encodeU8Array@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB.decode (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB.decode
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $__tests__/__fixtures__/__assembly__/complex_struct/Message_CircularB.decodeDataView
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
