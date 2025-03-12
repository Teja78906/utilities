(module
  (type $t0 (func (param i32 i32 i32) (result i32)))
  (type $t1 (func (param i32 i32) (result i32)))
  (type $t2 (func (param i32 i32 i32 i32)))
  (type $t3 (func (param i32) (result i32)))
  (type $t4 (func (param i32 i32)))
  (type $t5 (func (param i32 i32 i32 i32 i32)))
  (type $t6 (func (param i32)))
  (type $t7 (func (param i32 i32 i32 i32) (result i32)))
  (type $t8 (func (param i64) (result i32)))
  (type $t9 (func (result i32)))
  (type $t10 (func (param i32 i32 i32)))
  (type $t11 (func))
  (type $t12 (func (param i32) (result i64)))
  (type $t13 (func (param i32 i32) (result i64)))
  (type $t14 (func (param i32 i64)))
  (type $t15 (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "env" "signalError" (func $env.signalError (type $t4)))
  (import "env" "bigIntUnsignedByteLength" (func $env.bigIntUnsignedByteLength (type $t3)))
  (import "env" "bigIntGetUnsignedBytes" (func $env.bigIntGetUnsignedBytes (type $t1)))
  (import "env" "writeEventLog" (func $env.writeEventLog (type $t5)))
  (import "env" "asyncCall" (func $env.asyncCall (type $t2)))
  (import "env" "getOriginalTxHash" (func $env.getOriginalTxHash (type $t6)))
  (import "env" "storageStore" (func $env.storageStore (type $t7)))
  (import "env" "getArgumentLength" (func $env.getArgumentLength (type $t3)))
  (import "env" "getArgument" (func $env.getArgument (type $t1)))
  (import "env" "bigIntNew" (func $env.bigIntNew (type $t8)))
  (import "env" "getNumArguments" (func $env.getNumArguments (type $t9)))
  (import "env" "bigIntAdd" (func $env.bigIntAdd (type $t10)))
  (import "env" "checkNoPayment" (func $env.checkNoPayment (type $t11)))
  (import "env" "bigIntGetUnsignedArgument" (func $env.bigIntGetUnsignedArgument (type $t4)))
  (import "env" "smallIntGetUnsignedArgument" (func $env.smallIntGetUnsignedArgument (type $t12)))
  (import "env" "storageLoadLength" (func $env.storageLoadLength (type $t1)))
  (import "env" "storageLoad" (func $env.storageLoad (type $t0)))
  (import "env" "bigIntSetUnsignedBytes" (func $env.bigIntSetUnsignedBytes (type $t10)))
  (import "env" "getSCAddress" (func $env.getSCAddress (type $t6)))
  (func $f19 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (call $f20
      (local.get $p0)
      (local.get $p1)))
  (func $f20 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (call $f89
      (local.get $p0)
      (local.get $p1)))
  (func $f21 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (call $f22
      (local.get $p0)
      (local.get $p1)
      (local.get $p2)))
  (func $f22 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (call $f90
      (local.get $p0)
      (local.get $p1)
      (local.get $p2)))
  (func $f23 (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (call $f24
      (local.get $p0)
      (local.get $p1)
      (local.get $p2)
      (local.get $p3)))
  (func $f24 (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l4
            (call $f89
              (local.get $p3)
              (local.get $p2)))))
      (drop
        (call $f139
          (local.get $l4)
          (local.get $p0)
          (select
            (local.get $p3)
            (local.get $p1)
            (i32.gt_u
              (local.get $p1)
              (local.get $p3)))))
      (call $f90
        (local.get $p0)
        (local.get $p1)
        (local.get $p2)))
    (local.get $l4))
  (func $f25 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (call $f26
      (local.get $p0)
      (local.get $p1)))
  (func $f26 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $p1
            (call $f89
              (local.get $p0)
              (local.get $p1)))))
      (drop
        (call $f140
          (local.get $p1)
          (i32.const 0)
          (local.get $p0))))
    (local.get $p1))
  (func $f27 (type $t11)
    (call $f28)
    (unreachable))
  (func $f28 (type $t11)
    (call $f30)
    (unreachable))
  (func $f29 (type $t11)
    (call $f27)
    (unreachable))
  (func $f30 (type $t11)
    (call $f88
      (i32.const 1048945)
      (i32.const 16))
    (unreachable))
  (func $f31 (type $t11)
    (call $f32
      (i32.const 1048576)
      (i32.const 17))
    (unreachable))
  (func $f32 (type $t4) (param $p0 i32) (param $p1 i32)
    (call $f34)
    (unreachable))
  (func $f33 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (drop
      (i32.load
        (local.get $p0)))
    (loop $L0 (result i32)
      (br $L0)))
  (func $f34 (type $t11)
    (call $f36)
    (unreachable))
  (func $f35 (type $t4) (param $p0 i32) (param $p1 i32)
    (call $f34)
    (unreachable))
  (func $f36 (type $t11)
    (call $f88
      (i32.const 1048961)
      (i32.const 14))
    (unreachable))
  (func $f37 (type $t6) (param $p0 i32))
  (func $f38 (type $t4) (param $p0 i32) (param $p1 i32)
    (call $f34)
    (unreachable))
  (func $f39 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
    (local.set $l3
      (i32.load offset=16
        (local.get $p0)))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.ne
              (local.tee $l4
                (i32.load offset=8
                  (local.get $p0)))
              (i32.const 1)))
          (br_if $B0
            (i32.ne
              (local.get $l3)
              (i32.const 1)))
          (br $B1))
        (br_if $B1
          (i32.eq
            (local.get $l3)
            (i32.const 1)))
        (return
          (call_indirect $T0 (type $t0)
            (i32.load offset=24
              (local.get $p0))
            (local.get $p1)
            (local.get $p2)
            (i32.load offset=12
              (i32.load
                (i32.add
                  (local.get $p0)
                  (i32.const 28)))))))
      (local.set $l5
        (i32.add
          (local.get $p1)
          (local.get $p2)))
      (block $B3
        (block $B4
          (block $B5
            (br_if $B5
              (local.tee $l6
                (i32.load
                  (i32.add
                    (local.get $p0)
                    (i32.const 20)))))
            (local.set $l7
              (i32.const 0))
            (local.set $l8
              (local.get $p1))
            (br $B4))
          (local.set $l7
            (i32.const 0))
          (local.set $l8
            (local.get $p1))
          (loop $L6
            (br_if $B3
              (i32.eq
                (local.get $l5)
                (local.tee $l3
                  (local.get $l8))))
            (local.set $l8
              (i32.add
                (local.get $l3)
                (i32.const 1)))
            (block $B7
              (br_if $B7
                (i32.gt_s
                  (local.tee $l9
                    (i32.load8_s
                      (local.get $l3)))
                  (i32.const -1)))
              (local.set $l9
                (i32.and
                  (local.get $l9)
                  (i32.const 255)))
              (block $B8
                (block $B9
                  (br_if $B9
                    (i32.ne
                      (local.get $l8)
                      (local.get $l5)))
                  (local.set $l10
                    (i32.const 0))
                  (local.set $l11
                    (local.get $l5))
                  (br $B8))
                (local.set $l10
                  (i32.and
                    (i32.load8_u offset=1
                      (local.get $l3))
                    (i32.const 63)))
                (local.set $l11
                  (local.tee $l8
                    (i32.add
                      (local.get $l3)
                      (i32.const 2)))))
              (br_if $B7
                (i32.lt_u
                  (local.get $l9)
                  (i32.const 224)))
              (block $B10
                (block $B11
                  (br_if $B11
                    (i32.ne
                      (local.get $l11)
                      (local.get $l5)))
                  (local.set $l12
                    (i32.const 0))
                  (local.set $l11
                    (local.get $l5))
                  (br $B10))
                (local.set $l12
                  (i32.and
                    (i32.load8_u
                      (local.get $l11))
                    (i32.const 63)))
                (local.set $l11
                  (local.tee $l8
                    (i32.add
                      (local.get $l11)
                      (i32.const 1)))))
              (br_if $B7
                (i32.lt_u
                  (local.get $l9)
                  (i32.const 240)))
              (block $B12
                (block $B13
                  (br_if $B13
                    (i32.ne
                      (local.get $l11)
                      (local.get $l5)))
                  (local.set $l11
                    (i32.const 0))
                  (br $B12))
                (local.set $l8
                  (i32.add
                    (local.get $l11)
                    (i32.const 1)))
                (local.set $l11
                  (i32.and
                    (i32.load8_u
                      (local.get $l11))
                    (i32.const 63))))
              (br_if $B3
                (i32.eq
                  (i32.or
                    (i32.or
                      (i32.or
                        (i32.shl
                          (local.get $l10)
                          (i32.const 12))
                        (i32.and
                          (i32.shl
                            (local.get $l9)
                            (i32.const 18))
                          (i32.const 1835008)))
                      (i32.shl
                        (local.get $l12)
                        (i32.const 6)))
                    (local.get $l11))
                  (i32.const 1114112))))
            (local.set $l7
              (i32.add
                (i32.sub
                  (local.get $l8)
                  (local.get $l3))
                (local.get $l7)))
            (br_if $L6
              (local.tee $l6
                (i32.add
                  (local.get $l6)
                  (i32.const -1))))))
        (br_if $B3
          (i32.eq
            (local.get $l5)
            (local.get $l8)))
        (block $B14
          (br_if $B14
            (i32.gt_s
              (local.tee $l3
                (i32.load8_s
                  (local.get $l8)))
              (i32.const -1)))
          (block $B15
            (block $B16
              (br_if $B16
                (i32.ne
                  (i32.add
                    (local.get $l8)
                    (i32.const 1))
                  (local.get $l5)))
              (local.set $l8
                (i32.const 0))
              (local.set $l6
                (local.get $l5))
              (br $B15))
            (local.set $l6
              (i32.add
                (local.get $l8)
                (i32.const 2)))
            (local.set $l8
              (i32.shl
                (i32.and
                  (i32.load8_u offset=1
                    (local.get $l8))
                  (i32.const 63))
                (i32.const 6))))
          (br_if $B14
            (i32.lt_u
              (i32.and
                (local.get $l3)
                (i32.const 255))
              (i32.const 224)))
          (block $B17
            (block $B18
              (br_if $B18
                (i32.ne
                  (local.get $l6)
                  (local.get $l5)))
              (local.set $l6
                (i32.const 0))
              (local.set $l9
                (local.get $l5))
              (br $B17))
            (local.set $l9
              (i32.add
                (local.get $l6)
                (i32.const 1)))
            (local.set $l6
              (i32.and
                (i32.load8_u
                  (local.get $l6))
                (i32.const 63))))
          (br_if $B14
            (i32.lt_u
              (i32.and
                (local.get $l3)
                (i32.const 255))
              (i32.const 240)))
          (local.set $l3
            (i32.and
              (local.get $l3)
              (i32.const 255)))
          (local.set $l8
            (i32.or
              (local.get $l6)
              (local.get $l8)))
          (block $B19
            (block $B20
              (br_if $B20
                (i32.ne
                  (local.get $l9)
                  (local.get $l5)))
              (local.set $l5
                (i32.const 0))
              (br $B19))
            (local.set $l5
              (i32.and
                (i32.load8_u
                  (local.get $l9))
                (i32.const 63))))
          (br_if $B3
            (i32.eq
              (i32.or
                (i32.or
                  (i32.shl
                    (local.get $l8)
                    (i32.const 6))
                  (i32.and
                    (i32.shl
                      (local.get $l3)
                      (i32.const 18))
                    (i32.const 1835008)))
                (local.get $l5))
              (i32.const 1114112))))
        (block $B21
          (block $B22
            (br_if $B22
              (i32.eqz
                (local.get $l7)))
            (br_if $B22
              (i32.eq
                (local.get $l7)
                (local.get $p2)))
            (local.set $l3
              (i32.const 0))
            (br_if $B21
              (i32.ge_u
                (local.get $l7)
                (local.get $p2)))
            (br_if $B21
              (i32.lt_s
                (i32.load8_s
                  (i32.add
                    (local.get $p1)
                    (local.get $l7)))
                (i32.const -64))))
          (local.set $l3
            (local.get $p1)))
        (local.set $p2
          (select
            (local.get $l7)
            (local.get $p2)
            (local.get $l3)))
        (local.set $p1
          (select
            (local.get $l3)
            (local.get $p1)
            (local.get $l3))))
      (br_if $B0
        (i32.eq
          (local.get $l4)
          (i32.const 1)))
      (return
        (call_indirect $T0 (type $t0)
          (i32.load offset=24
            (local.get $p0))
          (local.get $p1)
          (local.get $p2)
          (i32.load offset=12
            (i32.load
              (i32.add
                (local.get $p0)
                (i32.const 28)))))))
    (block $B23
      (block $B24
        (block $B25
          (br_if $B25
            (i32.eqz
              (local.get $p2)))
          (local.set $l8
            (i32.const 0))
          (local.set $l7
            (local.get $p2))
          (local.set $l3
            (local.get $p1))
          (loop $L26
            (local.set $l8
              (i32.add
                (local.get $l8)
                (i32.ne
                  (i32.and
                    (i32.load8_u
                      (local.get $l3))
                    (i32.const 192))
                  (i32.const 128))))
            (local.set $l3
              (i32.add
                (local.get $l3)
                (i32.const 1)))
            (br_if $L26
              (local.tee $l7
                (i32.add
                  (local.get $l7)
                  (i32.const -1)))))
          (br_if $B24
            (i32.ge_u
              (local.get $l8)
              (local.tee $l5
                (i32.load offset=12
                  (local.get $p0)))))
          (local.set $l8
            (i32.const 0))
          (local.set $l7
            (local.get $p2))
          (local.set $l3
            (local.get $p1))
          (loop $L27
            (local.set $l8
              (i32.add
                (local.get $l8)
                (i32.ne
                  (i32.and
                    (i32.load8_u
                      (local.get $l3))
                    (i32.const 192))
                  (i32.const 128))))
            (local.set $l3
              (i32.add
                (local.get $l3)
                (i32.const 1)))
            (br_if $L27
              (local.tee $l7
                (i32.add
                  (local.get $l7)
                  (i32.const -1))))
            (br $B23)))
        (local.set $l8
          (i32.const 0))
        (br_if $B23
          (local.tee $l5
            (i32.load offset=12
              (local.get $p0)))))
      (return
        (call_indirect $T0 (type $t0)
          (i32.load offset=24
            (local.get $p0))
          (local.get $p1)
          (local.get $p2)
          (i32.load offset=12
            (i32.load
              (i32.add
                (local.get $p0)
                (i32.const 28)))))))
    (local.set $l3
      (i32.const 0))
    (local.set $l7
      (local.tee $l5
        (i32.sub
          (local.get $l5)
          (local.get $l8))))
    (block $B28
      (block $B29
        (block $B30
          (br_table $B28 $B29 $B30 $B29 $B28
            (i32.and
              (select
                (i32.const 0)
                (local.tee $l8
                  (i32.load8_u offset=32
                    (local.get $p0)))
                (i32.eq
                  (local.get $l8)
                  (i32.const 3)))
              (i32.const 3))))
        (local.set $l3
          (i32.shr_u
            (local.get $l5)
            (i32.const 1)))
        (local.set $l7
          (i32.shr_u
            (i32.add
              (local.get $l5)
              (i32.const 1))
            (i32.const 1)))
        (br $B28))
      (local.set $l7
        (i32.const 0))
      (local.set $l3
        (local.get $l5)))
    (local.set $l3
      (i32.add
        (local.get $l3)
        (i32.const 1)))
    (block $B31
      (block $B32
        (block $B33
          (loop $L34
            (br_if $B33
              (i32.eqz
                (local.tee $l3
                  (i32.add
                    (local.get $l3)
                    (i32.const -1)))))
            (br_if $L34
              (i32.eqz
                (call_indirect $T0 (type $t1)
                  (i32.load offset=24
                    (local.get $p0))
                  (i32.load offset=4
                    (local.get $p0))
                  (i32.load offset=16
                    (i32.load offset=28
                      (local.get $p0))))))
            (br $B32)))
        (local.set $l8
          (i32.load offset=4
            (local.get $p0)))
        (local.set $l3
          (i32.const 1))
        (br_if $B31
          (call_indirect $T0 (type $t0)
            (i32.load offset=24
              (local.get $p0))
            (local.get $p1)
            (local.get $p2)
            (i32.load offset=12
              (i32.load offset=28
                (local.get $p0)))))
        (local.set $l3
          (i32.add
            (local.get $l7)
            (i32.const 1)))
        (local.set $l7
          (i32.load offset=28
            (local.get $p0)))
        (local.set $p0
          (i32.load offset=24
            (local.get $p0)))
        (loop $L35
          (block $B36
            (br_if $B36
              (local.tee $l3
                (i32.add
                  (local.get $l3)
                  (i32.const -1))))
            (return
              (i32.const 0)))
          (br_if $L35
            (i32.eqz
              (call_indirect $T0 (type $t1)
                (local.get $p0)
                (local.get $l8)
                (i32.load offset=16
                  (local.get $l7)))))))
      (local.set $l3
        (i32.const 1)))
    (local.get $l3))
  (func $f40 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.gt_u
            (local.get $p2)
            (local.get $p1)))
        (br_if $B1
          (i32.gt_u
            (local.get $p3)
            (local.get $p1)))
        (br_if $B1
          (i32.gt_u
            (local.get $p2)
            (local.get $p3)))
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eqz
                (local.get $p2)))
            (br_if $B3
              (i32.eq
                (local.get $p1)
                (local.get $p2)))
            (br_if $B2
              (i32.le_u
                (local.get $p1)
                (local.get $p2)))
            (br_if $B2
              (i32.lt_s
                (i32.load8_s
                  (i32.add
                    (local.get $p0)
                    (local.get $p2)))
                (i32.const -64))))
          (local.set $p2
            (local.get $p3)))
        (block $B4
          (block $B5
            (br_if $B5
              (i32.eqz
                (local.get $p2)))
            (br_if $B5
              (i32.eq
                (local.get $p2)
                (local.get $p1)))
            (local.set $l4
              (i32.add
                (local.get $p1)
                (i32.const 1)))
            (loop $L6
              (block $B7
                (br_if $B7
                  (i32.ge_u
                    (local.get $p2)
                    (local.get $p1)))
                (br_if $B5
                  (i32.ge_s
                    (i32.load8_s
                      (i32.add
                        (local.get $p0)
                        (local.get $p2)))
                    (i32.const -64))))
              (local.set $p3
                (i32.add
                  (local.get $p2)
                  (i32.const -1)))
              (br_if $B4
                (i32.eq
                  (local.get $p2)
                  (i32.const 1)))
              (local.set $l5
                (i32.eq
                  (local.get $l4)
                  (local.get $p2)))
              (local.set $p2
                (local.get $p3))
              (br_if $L6
                (i32.eqz
                  (local.get $l5)))
              (br $B4)))
          (local.set $p3
            (local.get $p2)))
        (br_if $B0
          (i32.eq
            (local.get $p3)
            (local.get $p1)))
        (br_if $B1
          (i32.gt_s
            (local.tee $p3
              (i32.load8_s
                (local.tee $p2
                  (i32.add
                    (local.get $p0)
                    (local.get $p3)))))
            (i32.const -1)))
        (local.set $l4
          (i32.const 0))
        (local.set $p0
          (local.tee $p1
            (i32.add
              (local.get $p0)
              (local.get $p1))))
        (block $B8
          (br_if $B8
            (i32.eq
              (i32.add
                (local.get $p2)
                (i32.const 1))
              (local.get $p1)))
          (local.set $p0
            (i32.add
              (local.get $p2)
              (i32.const 2)))
          (local.set $l4
            (i32.shl
              (i32.and
                (i32.load8_u offset=1
                  (local.get $p2))
                (i32.const 63))
              (i32.const 6))))
        (br_if $B1
          (i32.lt_u
            (i32.and
              (local.get $p3)
              (i32.const 255))
            (i32.const 224)))
        (local.set $l5
          (i32.const 0))
        (local.set $p2
          (local.get $p1))
        (block $B9
          (br_if $B9
            (i32.eq
              (local.get $p0)
              (local.get $p1)))
          (local.set $p2
            (i32.add
              (local.get $p0)
              (i32.const 1)))
          (local.set $l5
            (i32.and
              (i32.load8_u
                (local.get $p0))
              (i32.const 63))))
        (br_if $B1
          (i32.lt_u
            (i32.and
              (local.get $p3)
              (i32.const 255))
            (i32.const 240)))
        (local.set $p0
          (i32.and
            (local.get $p3)
            (i32.const 255)))
        (local.set $l4
          (i32.or
            (local.get $l5)
            (local.get $l4)))
        (local.set $p3
          (i32.const 0))
        (block $B10
          (br_if $B10
            (i32.eq
              (local.get $p2)
              (local.get $p1)))
          (local.set $p3
            (i32.and
              (i32.load8_u
                (local.get $p2))
              (i32.const 63))))
        (br_if $B0
          (i32.eq
            (i32.or
              (i32.or
                (i32.shl
                  (local.get $l4)
                  (i32.const 6))
                (i32.and
                  (i32.shl
                    (local.get $p0)
                    (i32.const 18))
                  (i32.const 1835008)))
              (local.get $p3))
            (i32.const 1114112))))
      (call $f34)
      (unreachable))
    (call $f32
      (i32.const 1048593)
      (i32.const 43))
    (unreachable))
  (func $f41 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (i32.store
      (i32.add
        (local.get $l3)
        (i32.const 36))
      (local.get $p1))
    (i32.store8 offset=40
      (local.get $l3)
      (i32.const 3))
    (i64.store offset=8
      (local.get $l3)
      (i64.const 137438953472))
    (i32.store offset=32
      (local.get $l3)
      (local.get $p0))
    (i32.store offset=24
      (local.get $l3)
      (i32.const 0))
    (i32.store offset=16
      (local.get $l3)
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.eqz
                  (local.tee $l4
                    (i32.load offset=8
                      (local.get $p2)))))
              (local.set $l5
                (i32.load
                  (local.get $p2)))
              (br_if $B3
                (i32.eqz
                  (local.tee $l8
                    (select
                      (local.tee $l6
                        (i32.load offset=4
                          (local.get $p2)))
                      (local.tee $l7
                        (i32.load
                          (i32.add
                            (local.get $p2)
                            (i32.const 12))))
                      (i32.gt_u
                        (local.get $l7)
                        (local.get $l6))))))
              (br_if $B1
                (call_indirect $T0 (type $t0)
                  (local.get $p0)
                  (i32.load
                    (local.get $l5))
                  (i32.load offset=4
                    (local.get $l5))
                  (i32.load offset=12
                    (local.get $p1))))
              (local.set $p0
                (i32.add
                  (local.get $l5)
                  (i32.const 8)))
              (local.set $l9
                (i32.load offset=16
                  (local.get $p2)))
              (local.set $l10
                (local.get $l8))
              (loop $L5
                (i32.store8 offset=40
                  (local.get $l3)
                  (i32.load8_u
                    (i32.add
                      (local.get $l4)
                      (i32.const 28))))
                (i64.store offset=8
                  (local.get $l3)
                  (i64.rotl
                    (i64.load align=4
                      (i32.add
                        (local.get $l4)
                        (i32.const 4)))
                    (i64.const 32)))
                (local.set $p1
                  (i32.load
                    (i32.add
                      (local.get $l4)
                      (i32.const 24))))
                (local.set $l7
                  (i32.const 0))
                (local.set $p2
                  (i32.const 0))
                (block $B6
                  (block $B7
                    (block $B8
                      (br_table $B7 $B8 $B6 $B7
                        (i32.load
                          (i32.add
                            (local.get $l4)
                            (i32.const 20)))))
                    (local.set $l11
                      (i32.shl
                        (local.get $p1)
                        (i32.const 3)))
                    (local.set $p2
                      (i32.const 0))
                    (br_if $B6
                      (i32.ne
                        (i32.load offset=4
                          (local.tee $l11
                            (i32.add
                              (local.get $l9)
                              (local.get $l11))))
                        (i32.const 1)))
                    (local.set $p1
                      (i32.load
                        (i32.load
                          (local.get $l11)))))
                  (local.set $p2
                    (i32.const 1)))
                (i32.store offset=20
                  (local.get $l3)
                  (local.get $p1))
                (i32.store offset=16
                  (local.get $l3)
                  (local.get $p2))
                (local.set $p2
                  (i32.load
                    (i32.add
                      (local.get $l4)
                      (i32.const 16))))
                (block $B9
                  (block $B10
                    (block $B11
                      (br_table $B10 $B11 $B9 $B10
                        (i32.load
                          (i32.add
                            (local.get $l4)
                            (i32.const 12)))))
                    (local.set $p1
                      (i32.shl
                        (local.get $p2)
                        (i32.const 3)))
                    (br_if $B9
                      (i32.ne
                        (i32.load offset=4
                          (local.tee $p1
                            (i32.add
                              (local.get $l9)
                              (local.get $p1))))
                        (i32.const 1)))
                    (local.set $p2
                      (i32.load
                        (i32.load
                          (local.get $p1)))))
                  (local.set $l7
                    (i32.const 1)))
                (i32.store offset=28
                  (local.get $l3)
                  (local.get $p2))
                (i32.store offset=24
                  (local.get $l3)
                  (local.get $l7))
                (br_if $B1
                  (call_indirect $T0 (type $t1)
                    (i32.load
                      (local.tee $p2
                        (i32.add
                          (local.get $l9)
                          (i32.shl
                            (i32.load
                              (local.get $l4))
                            (i32.const 3)))))
                    (i32.add
                      (local.get $l3)
                      (i32.const 8))
                    (i32.load offset=4
                      (local.get $p2))))
                (br_if $B2
                  (i32.eqz
                    (local.tee $l10
                      (i32.add
                        (local.get $l10)
                        (i32.const -1)))))
                (local.set $l4
                  (i32.add
                    (local.get $l4)
                    (i32.const 32)))
                (local.set $p2
                  (i32.add
                    (local.get $p0)
                    (i32.const 4)))
                (local.set $p1
                  (i32.load
                    (local.get $p0)))
                (local.set $p0
                  (i32.add
                    (local.get $p0)
                    (i32.const 8)))
                (br_if $L5
                  (i32.eqz
                    (call_indirect $T0 (type $t0)
                      (i32.load offset=32
                        (local.get $l3))
                      (local.get $p1)
                      (i32.load
                        (local.get $p2))
                      (i32.load offset=12
                        (i32.load offset=36
                          (local.get $l3))))))
                (br $B1)))
            (local.set $l5
              (i32.load
                (local.get $p2)))
            (br_if $B3
              (i32.eqz
                (local.tee $l8
                  (select
                    (local.tee $l6
                      (i32.load offset=4
                        (local.get $p2)))
                    (local.tee $l4
                      (i32.load
                        (i32.add
                          (local.get $p2)
                          (i32.const 20))))
                    (i32.gt_u
                      (local.get $l4)
                      (local.get $l6))))))
            (local.set $l4
              (i32.load offset=16
                (local.get $p2)))
            (br_if $B1
              (call_indirect $T0 (type $t0)
                (local.get $p0)
                (i32.load
                  (local.get $l5))
                (i32.load offset=4
                  (local.get $l5))
                (i32.load offset=12
                  (local.get $p1))))
            (local.set $p0
              (i32.add
                (local.get $l5)
                (i32.const 8)))
            (local.set $p2
              (local.get $l8))
            (loop $L12
              (br_if $B1
                (call_indirect $T0 (type $t1)
                  (i32.load
                    (local.get $l4))
                  (i32.add
                    (local.get $l3)
                    (i32.const 8))
                  (i32.load
                    (i32.add
                      (local.get $l4)
                      (i32.const 4)))))
              (br_if $B2
                (i32.eqz
                  (local.tee $p2
                    (i32.add
                      (local.get $p2)
                      (i32.const -1)))))
              (local.set $l4
                (i32.add
                  (local.get $l4)
                  (i32.const 8)))
              (local.set $p1
                (i32.add
                  (local.get $p0)
                  (i32.const 4)))
              (local.set $l7
                (i32.load
                  (local.get $p0)))
              (local.set $p0
                (i32.add
                  (local.get $p0)
                  (i32.const 8)))
              (br_if $L12
                (i32.eqz
                  (call_indirect $T0 (type $t0)
                    (i32.load offset=32
                      (local.get $l3))
                    (local.get $l7)
                    (i32.load
                      (local.get $p1))
                    (i32.load offset=12
                      (i32.load offset=36
                        (local.get $l3))))))
              (br $B1)))
          (local.set $l8
            (i32.const 0)))
        (block $B13
          (br_if $B13
            (i32.le_u
              (local.get $l6)
              (local.get $l8)))
          (br_if $B1
            (call_indirect $T0 (type $t0)
              (i32.load offset=32
                (local.get $l3))
              (i32.load
                (local.tee $l4
                  (i32.add
                    (local.get $l5)
                    (i32.shl
                      (local.get $l8)
                      (i32.const 3)))))
              (i32.load offset=4
                (local.get $l4))
              (i32.load offset=12
                (i32.load offset=36
                  (local.get $l3))))))
        (local.set $l4
          (i32.const 0))
        (br $B0))
      (local.set $l4
        (i32.const 1)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 48)))
    (local.get $l4))
  (func $f42 (type $t4) (param $p0 i32) (param $p1 i32)
    (call $f34)
    (unreachable))
  (func $f43 (type $t4) (param $p0 i32) (param $p1 i32)
    (call $f34)
    (unreachable))
  (func $f44 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (call $f34)
    (unreachable))
  (func $f45 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (local.get $p2)))
          (loop $L3
            (block $B4
              (br_if $B4
                (i32.eqz
                  (i32.load8_u
                    (i32.load offset=8
                      (local.get $p0)))))
              (br_if $B4
                (i32.eqz
                  (call_indirect $T0 (type $t0)
                    (i32.load
                      (local.get $p0))
                    (i32.const 1048638)
                    (i32.const 4)
                    (i32.load offset=12
                      (i32.load offset=4
                        (local.get $p0))))))
              (return
                (i32.const 1)))
            (local.set $l3
              (i32.const 0))
            (local.set $l4
              (local.get $p2))
            (block $B5
              (block $B6
                (loop $L7
                  (local.set $l5
                    (i32.add
                      (local.get $p1)
                      (local.get $l3)))
                  (block $B8
                    (block $B9
                      (br_if $B9
                        (i32.gt_u
                          (local.get $l4)
                          (i32.const 7)))
                      (br_if $B6
                        (i32.eqz
                          (local.get $l4)))
                      (local.set $l6
                        (i32.sub
                          (local.get $p2)
                          (local.get $l3)))
                      (local.set $l7
                        (i32.const 0))
                      (loop $L10
                        (br_if $B8
                          (i32.eq
                            (i32.load8_u
                              (i32.add
                                (local.get $l5)
                                (local.get $l7)))
                            (i32.const 10)))
                        (br_if $L10
                          (i32.ne
                            (local.get $l6)
                            (local.tee $l7
                              (i32.add
                                (local.get $l7)
                                (i32.const 1)))))
                        (br $B6)))
                    (block $B11
                      (block $B12
                        (block $B13
                          (br_if $B13
                            (i32.eqz
                              (local.tee $l7
                                (i32.sub
                                  (i32.and
                                    (i32.add
                                      (local.get $l5)
                                      (i32.const 3))
                                    (i32.const -4))
                                  (local.get $l5)))))
                          (local.set $l6
                            (select
                              (local.get $l4)
                              (local.get $l7)
                              (i32.gt_u
                                (local.get $l7)
                                (local.get $l4))))
                          (local.set $l7
                            (i32.const 0))
                          (loop $L14
                            (br_if $B8
                              (i32.eq
                                (i32.load8_u
                                  (i32.add
                                    (local.get $l5)
                                    (local.get $l7)))
                                (i32.const 10)))
                            (br_if $L14
                              (i32.ne
                                (local.get $l6)
                                (local.tee $l7
                                  (i32.add
                                    (local.get $l7)
                                    (i32.const 1))))))
                          (br_if $B11
                            (i32.gt_u
                              (local.get $l6)
                              (local.tee $l8
                                (i32.add
                                  (local.get $l4)
                                  (i32.const -8)))))
                          (br $B12))
                        (local.set $l8
                          (i32.add
                            (local.get $l4)
                            (i32.const -8)))
                        (local.set $l6
                          (i32.const 0)))
                      (block $B15
                        (loop $L16
                          (br_if $B15
                            (i32.and
                              (i32.or
                                (i32.and
                                  (i32.xor
                                    (local.tee $l9
                                      (i32.load
                                        (i32.add
                                          (local.tee $l7
                                            (i32.add
                                              (local.get $l5)
                                              (local.get $l6)))
                                          (i32.const 4))))
                                    (i32.const -1))
                                  (i32.add
                                    (i32.xor
                                      (local.get $l9)
                                      (i32.const 168430090))
                                    (i32.const -16843009)))
                                (i32.and
                                  (i32.xor
                                    (local.tee $l7
                                      (i32.load
                                        (local.get $l7)))
                                    (i32.const -1))
                                  (i32.add
                                    (i32.xor
                                      (local.get $l7)
                                      (i32.const 168430090))
                                    (i32.const -16843009))))
                              (i32.const -2139062144)))
                          (br_if $L16
                            (i32.le_u
                              (local.tee $l6
                                (i32.add
                                  (local.get $l6)
                                  (i32.const 8)))
                              (local.get $l8)))))
                      (br_if $B1
                        (i32.gt_u
                          (local.get $l6)
                          (local.get $l4))))
                    (br_if $B6
                      (i32.eq
                        (local.get $l4)
                        (local.get $l6)))
                    (local.set $l9
                      (i32.sub
                        (local.get $l4)
                        (local.get $l6)))
                    (local.set $l5
                      (i32.add
                        (local.get $p1)
                        (i32.add
                          (local.get $l6)
                          (local.get $l3))))
                    (local.set $l7
                      (i32.const 0))
                    (block $B17
                      (loop $L18
                        (br_if $B17
                          (i32.eq
                            (i32.load8_u
                              (i32.add
                                (local.get $l5)
                                (local.get $l7)))
                            (i32.const 10)))
                        (br_if $L18
                          (i32.ne
                            (local.get $l9)
                            (local.tee $l7
                              (i32.add
                                (local.get $l7)
                                (i32.const 1)))))
                        (br $B6)))
                    (local.set $l7
                      (i32.add
                        (local.get $l6)
                        (local.get $l7))))
                  (local.set $l3
                    (i32.add
                      (local.tee $l7
                        (i32.add
                          (local.get $l7)
                          (local.get $l3)))
                      (i32.const 1)))
                  (block $B19
                    (br_if $B19
                      (i32.ge_u
                        (local.get $l7)
                        (local.get $p2)))
                    (br_if $B19
                      (i32.ne
                        (i32.load8_u
                          (i32.add
                            (local.get $p1)
                            (local.get $l7)))
                        (i32.const 10)))
                    (local.set $l7
                      (i32.const 1))
                    (br $B5))
                  (local.set $l4
                    (i32.sub
                      (local.get $p2)
                      (local.get $l3)))
                  (br_if $L7
                    (i32.ge_u
                      (local.get $p2)
                      (local.get $l3)))))
              (local.set $l7
                (i32.const 0))
              (local.set $l3
                (local.get $p2)))
            (i32.store8
              (i32.load offset=8
                (local.get $p0))
              (local.get $l7))
            (local.set $l7
              (i32.load offset=4
                (local.get $p0)))
            (local.set $l6
              (i32.load
                (local.get $p0)))
            (block $B20
              (block $B21
                (block $B22
                  (br_if $B22
                    (i32.eq
                      (local.get $p2)
                      (local.get $l3)))
                  (block $B23
                    (br_if $B23
                      (i32.le_u
                        (local.get $p2)
                        (local.get $l3)))
                    (br_if $B21
                      (i32.gt_s
                        (i32.load8_s
                          (local.tee $l5
                            (i32.add
                              (local.get $p1)
                              (local.get $l3))))
                        (i32.const -65))))
                  (call $f40
                    (local.get $p1)
                    (local.get $p2)
                    (i32.const 0)
                    (local.get $l3))
                  (unreachable))
                (br_if $B20
                  (i32.eqz
                    (call_indirect $T0 (type $t0)
                      (local.get $l6)
                      (local.get $p1)
                      (local.get $p2)
                      (i32.load offset=12
                        (local.get $l7)))))
                (return
                  (i32.const 1)))
              (block $B24
                (br_if $B24
                  (i32.eqz
                    (call_indirect $T0 (type $t0)
                      (local.get $l6)
                      (local.get $p1)
                      (local.get $l3)
                      (i32.load offset=12
                        (local.get $l7)))))
                (return
                  (i32.const 1)))
              (br_if $B0
                (i32.le_s
                  (i32.load8_s
                    (local.get $l5))
                  (i32.const -65))))
            (local.set $p1
              (i32.add
                (local.get $p1)
                (local.get $l3)))
            (br_if $L3
              (local.tee $p2
                (i32.sub
                  (local.get $p2)
                  (local.get $l3))))))
        (return
          (i32.const 0)))
      (call $f42
        (local.get $l6)
        (local.get $l4))
      (unreachable))
    (call $f40
      (local.get $p1)
      (local.get $p2)
      (local.get $l3)
      (local.get $p2))
    (unreachable))
  (func $f46 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l2)
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.lt_u
                (local.get $p1)
                (i32.const 128)))
            (br_if $B2
              (i32.lt_u
                (local.get $p1)
                (i32.const 2048)))
            (local.set $l3
              (i32.add
                (local.get $l2)
                (i32.const 12)))
            (br_if $B1
              (i32.ge_u
                (local.get $p1)
                (i32.const 65536)))
            (i32.store8 offset=14
              (local.get $l2)
              (i32.or
                (i32.and
                  (local.get $p1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=12
              (local.get $l2)
              (i32.or
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 12))
                (i32.const 224)))
            (i32.store8 offset=13
              (local.get $l2)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 6))
                  (i32.const 63))
                (i32.const 128)))
            (local.set $p1
              (i32.const 3))
            (br $B0))
          (i32.store8 offset=12
            (local.get $l2)
            (local.get $p1))
          (local.set $l3
            (i32.add
              (local.get $l2)
              (i32.const 12)))
          (local.set $p1
            (i32.const 1))
          (br $B0))
        (i32.store8 offset=13
          (local.get $l2)
          (i32.or
            (i32.and
              (local.get $p1)
              (i32.const 63))
            (i32.const 128)))
        (i32.store8 offset=12
          (local.get $l2)
          (i32.or
            (i32.shr_u
              (local.get $p1)
              (i32.const 6))
            (i32.const 192)))
        (local.set $l3
          (i32.add
            (local.get $l2)
            (i32.const 12)))
        (local.set $p1
          (i32.const 2))
        (br $B0))
      (i32.store8 offset=15
        (local.get $l2)
        (i32.or
          (i32.and
            (local.get $p1)
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=12
        (local.get $l2)
        (i32.or
          (i32.shr_u
            (local.get $p1)
            (i32.const 18))
          (i32.const 240)))
      (i32.store8 offset=14
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 6))
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=13
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 12))
            (i32.const 63))
          (i32.const 128)))
      (local.set $p1
        (i32.const 4)))
    (local.set $p1
      (call $f45
        (local.get $p0)
        (local.get $l3)
        (local.get $p1)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p1))
  (func $f47 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i32.store offset=4
      (local.get $l2)
      (local.get $p0))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 16))
      (i64.load align=4
        (i32.add
          (local.get $p1)
          (i32.const 16))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (local.get $p1)
          (i32.const 8))))
    (i64.store offset=8
      (local.get $l2)
      (i64.load align=4
        (local.get $p1)))
    (local.set $p1
      (call $f41
        (i32.add
          (local.get $l2)
          (i32.const 4))
        (i32.const 1048676)
        (i32.add
          (local.get $l2)
          (i32.const 8))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (local.get $p1))
  (func $f48 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (call $f45
      (i32.load
        (local.get $p0))
      (local.get $p1)
      (local.get $p2)))
  (func $f49 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (local.set $p0
      (i32.load
        (local.get $p0)))
    (i32.store offset=12
      (local.get $l2)
      (i32.const 0))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.lt_u
                (local.get $p1)
                (i32.const 128)))
            (br_if $B2
              (i32.lt_u
                (local.get $p1)
                (i32.const 2048)))
            (local.set $l3
              (i32.add
                (local.get $l2)
                (i32.const 12)))
            (br_if $B1
              (i32.ge_u
                (local.get $p1)
                (i32.const 65536)))
            (i32.store8 offset=14
              (local.get $l2)
              (i32.or
                (i32.and
                  (local.get $p1)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=12
              (local.get $l2)
              (i32.or
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 12))
                (i32.const 224)))
            (i32.store8 offset=13
              (local.get $l2)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (local.get $p1)
                    (i32.const 6))
                  (i32.const 63))
                (i32.const 128)))
            (local.set $p1
              (i32.const 3))
            (br $B0))
          (i32.store8 offset=12
            (local.get $l2)
            (local.get $p1))
          (local.set $l3
            (i32.add
              (local.get $l2)
              (i32.const 12)))
          (local.set $p1
            (i32.const 1))
          (br $B0))
        (i32.store8 offset=13
          (local.get $l2)
          (i32.or
            (i32.and
              (local.get $p1)
              (i32.const 63))
            (i32.const 128)))
        (i32.store8 offset=12
          (local.get $l2)
          (i32.or
            (i32.shr_u
              (local.get $p1)
              (i32.const 6))
            (i32.const 192)))
        (local.set $l3
          (i32.add
            (local.get $l2)
            (i32.const 12)))
        (local.set $p1
          (i32.const 2))
        (br $B0))
      (i32.store8 offset=15
        (local.get $l2)
        (i32.or
          (i32.and
            (local.get $p1)
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=12
        (local.get $l2)
        (i32.or
          (i32.shr_u
            (local.get $p1)
            (i32.const 18))
          (i32.const 240)))
      (i32.store8 offset=14
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 6))
            (i32.const 63))
          (i32.const 128)))
      (i32.store8 offset=13
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.shr_u
              (local.get $p1)
              (i32.const 12))
            (i32.const 63))
          (i32.const 128)))
      (local.set $p1
        (i32.const 4)))
    (local.set $p1
      (call $f45
        (local.get $p0)
        (local.get $l3)
        (local.get $p1)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p1))
  (func $f50 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i32.store offset=4
      (local.get $l2)
      (i32.load
        (local.get $p0)))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 16))
      (i64.load align=4
        (i32.add
          (local.get $p1)
          (i32.const 16))))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 8))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (local.get $p1)
          (i32.const 8))))
    (i64.store offset=8
      (local.get $l2)
      (i64.load align=4
        (local.get $p1)))
    (local.set $p1
      (call $f41
        (i32.add
          (local.get $l2)
          (i32.const 4))
        (i32.const 1048676)
        (i32.add
          (local.get $l2)
          (i32.const 8))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32)))
    (local.get $p1))
  (func $f51 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (local.set $l3
      (i32.const 1))
    (block $B0
      (br_if $B0
        (call_indirect $T0 (type $t0)
          (i32.load offset=24
            (local.get $p1))
          (i32.const 1048705)
          (i32.const 11)
          (i32.load offset=12
            (i32.load
              (local.tee $l4
                (i32.add
                  (local.get $p1)
                  (i32.const 28)))))))
      (local.set $l4
        (i32.load offset=12
          (i32.load
            (local.get $l4))))
      (local.set $l5
        (i32.load offset=24
          (local.get $p1)))
      (block $B1
        (block $B2
          (br_if $B2
            (i32.and
              (i32.load8_u
                (local.get $p1))
              (i32.const 4)))
          (br_if $B0
            (call_indirect $T0 (type $t0)
              (local.get $l5)
              (i32.const 1048642)
              (i32.const 3)
              (local.get $l4)))
          (br_if $B0
            (call_indirect $T0 (type $t0)
              (i32.load offset=24
                (local.get $p1))
              (i32.const 1048716)
              (i32.const 7)
              (i32.load offset=12
                (i32.load offset=28
                  (local.get $p1)))))
          (br_if $B0
            (call_indirect $T0 (type $t0)
              (i32.load offset=24
                (local.get $p1))
              (i32.const 1048636)
              (i32.const 2)
              (i32.load offset=12
                (i32.load offset=28
                  (local.get $p1)))))
          (br_if $B1
            (i32.eqz
              (call $f39
                (local.get $p1)
                (i32.const 1048703)
                (i32.const 2))))
          (br $B0))
        (br_if $B0
          (call_indirect $T0 (type $t0)
            (local.get $l5)
            (i32.const 1048645)
            (i32.const 3)
            (local.get $l4)))
        (local.set $l3
          (i32.const 1))
        (i32.store8 offset=23
          (local.get $l2)
          (i32.const 1))
        (i32.store
          (i32.add
            (local.get $l2)
            (i32.const 52))
          (i32.const 1048648))
        (i64.store offset=8
          (local.get $l2)
          (i64.load offset=24 align=4
            (local.get $p1)))
        (i32.store8 offset=56
          (local.get $l2)
          (i32.load8_u offset=32
            (local.get $p1)))
        (i64.store offset=24
          (local.get $l2)
          (i64.load align=4
            (local.get $p1)))
        (i64.store offset=40
          (local.get $l2)
          (i64.load offset=16 align=4
            (local.get $p1)))
        (i64.store offset=32
          (local.get $l2)
          (i64.load offset=8 align=4
            (local.get $p1)))
        (i32.store offset=16
          (local.get $l2)
          (i32.add
            (local.get $l2)
            (i32.const 23)))
        (i32.store offset=48
          (local.get $l2)
          (i32.add
            (local.get $l2)
            (i32.const 8)))
        (br_if $B0
          (call $f45
            (i32.add
              (local.get $l2)
              (i32.const 8))
            (i32.const 1048716)
            (i32.const 7)))
        (br_if $B0
          (call $f45
            (i32.add
              (local.get $l2)
              (i32.const 8))
            (i32.const 1048636)
            (i32.const 2)))
        (br_if $B0
          (call $f39
            (i32.add
              (local.get $l2)
              (i32.const 24))
            (i32.const 1048703)
            (i32.const 2)))
        (local.set $l3
          (i32.const 1))
        (br_if $B0
          (call $f45
            (i32.add
              (local.get $l2)
              (i32.const 8))
            (i32.const 1048672)
            (i32.const 2))))
      (local.set $l3
        (i32.load offset=24
          (local.get $p1)))
      (local.set $l4
        (i32.load offset=12
          (i32.load offset=28
            (local.get $p1))))
      (block $B3
        (br_if $B3
          (i32.eqz
            (i32.and
              (i32.load8_u
                (local.get $p1))
              (i32.const 4))))
        (local.set $l3
          (call_indirect $T0 (type $t0)
            (local.get $l3)
            (i32.const 1048700)
            (i32.const 1)
            (local.get $l4)))
        (br $B0))
      (local.set $l3
        (call_indirect $T0 (type $t0)
          (local.get $l3)
          (i32.const 1048701)
          (i32.const 2)
          (local.get $l4))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 64)))
    (local.get $l3))
  (func $f52 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ge_u
            (i32.sub
              (local.tee $l3
                (i32.load offset=4
                  (local.get $p0)))
              (local.tee $l4
                (i32.load offset=8
                  (local.get $p0))))
            (local.get $p1)))
        (block $B2
          (br_if $B2
            (i32.ge_u
              (local.tee $p1
                (i32.add
                  (local.get $l4)
                  (local.get $p1)))
              (local.get $l4)))
          (local.set $l4
            (i32.const 1))
          (local.set $p1
            (i32.const 0))
          (br $B0))
        (local.set $p1
          (select
            (local.tee $p1
              (select
                (local.tee $l4
                  (i32.shl
                    (local.get $l3)
                    (i32.const 1)))
                (local.get $p1)
                (i32.gt_u
                  (local.get $l4)
                  (local.get $p1))))
            (i32.const 8)
            (i32.gt_u
              (local.get $p1)
              (i32.const 8))))
        (block $B3
          (block $B4
            (br_if $B4
              (local.get $l3))
            (i32.store offset=16
              (local.get $l2)
              (i32.const 0))
            (br $B3))
          (i32.store
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 16))
              (i32.const 8))
            (i32.const 1))
          (i32.store offset=20
            (local.get $l2)
            (local.get $l3))
          (i32.store offset=16
            (local.get $l2)
            (i32.load
              (local.get $p0))))
        (local.set $l4
          (i32.const 1))
        (call $f53
          (local.get $l2)
          (local.get $p1)
          (i32.const 1)
          (i32.add
            (local.get $l2)
            (i32.const 16)))
        (local.set $p1
          (i32.load
            (i32.add
              (local.get $l2)
              (i32.const 8))))
        (br_if $B0
          (i32.eq
            (i32.load
              (local.get $l2))
            (i32.const 1)))
        (local.set $l4
          (i32.load offset=4
            (local.get $l2)))
        (i32.store offset=4
          (local.get $p0)
          (local.get $p1))
        (i32.store
          (local.get $p0)
          (local.get $l4)))
      (local.set $l4
        (i32.const 0)))
    (call $f54
      (local.get $l4)
      (local.get $p1))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32))))
  (func $f53 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (local.get $p2)))
          (br_if $B1
            (i32.lt_s
              (local.get $p1)
              (i32.const 0)))
          (block $B3
            (block $B4
              (br_if $B4
                (local.tee $l5
                  (i32.load
                    (local.get $p3))))
              (call $f55
                (local.get $l4)
                (local.get $p1)
                (local.get $p2))
              (local.set $l5
                (i32.load offset=4
                  (local.get $l4)))
              (local.set $p3
                (i32.load
                  (local.get $l4)))
              (br $B3))
            (block $B5
              (br_if $B5
                (local.tee $p3
                  (i32.load offset=4
                    (local.get $p3))))
              (call $f56
                (i32.add
                  (local.get $l4)
                  (i32.const 8))
                (local.get $p1)
                (local.get $p2)
                (i32.const 0))
              (local.set $l5
                (i32.load offset=12
                  (local.get $l4)))
              (local.set $p3
                (i32.load offset=8
                  (local.get $l4)))
              (br $B3))
            (local.set $p3
              (call $f23
                (local.get $l5)
                (local.get $p3)
                (local.get $p2)
                (local.get $p1)))
            (local.set $l5
              (local.get $p1)))
          (block $B6
            (block $B7
              (br_if $B7
                (local.get $p3))
              (i32.store offset=4
                (local.get $p0)
                (local.get $p1))
              (local.set $p1
                (i32.const 1))
              (br $B6))
            (i32.store offset=4
              (local.get $p0)
              (local.get $p3))
            (local.set $p1
              (i32.const 0))
            (local.set $p2
              (local.get $l5)))
          (i32.store
            (local.get $p0)
            (local.get $p1))
          (i32.store
            (i32.add
              (local.get $p0)
              (i32.const 8))
            (local.get $p2))
          (br $B0))
        (i32.store offset=4
          (local.get $p0)
          (local.get $p1))
        (i32.store
          (local.get $p0)
          (i32.const 1))
        (i32.store
          (i32.add
            (local.get $p0)
            (i32.const 8))
          (i32.const 0))
        (br $B0))
      (i32.store
        (local.get $p0)
        (i32.const 1))
      (i32.store
        (i32.add
          (local.get $p0)
          (i32.const 8))
        (i32.const 0)))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 16))))
  (func $f54 (type $t4) (param $p0 i32) (param $p1 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ne
            (local.get $p0)
            (i32.const 1)))
        (br_if $B0
          (i32.eqz
            (local.get $p1)))
        (call $f29)
        (unreachable))
      (return))
    (call $f31)
    (unreachable))
  (func $f55 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f56
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (local.get $p1)
      (local.get $p2)
      (i32.const 0))
    (i32.store
      (local.get $p0)
      (i32.load offset=8
        (local.get $l3)))
    (i32.store offset=4
      (local.get $p0)
      (i32.load offset=12
        (local.get $l3)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $f56 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p1)))
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.get $p3)))
        (local.set $p2
          (call $f25
            (local.get $p1)
            (local.get $p2)))
        (br $B0))
      (local.set $p2
        (call $f19
          (local.get $p1)
          (local.get $p2))))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p1))
    (i32.store
      (local.get $p0)
      (local.get $p2)))
  (func $f57 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (block $B0
      (br_if $B0
        (i32.le_u
          (local.tee $l2
            (i32.load offset=4
              (local.get $p1)))
          (local.tee $l3
            (i32.load offset=8
              (local.get $p1)))))
      (local.set $l4
        (i32.load
          (local.get $p1)))
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (local.get $l3))
            (local.set $l5
              (i32.const 1))
            (call $f21
              (local.get $l4)
              (local.get $l2)
              (i32.const 1))
            (br $B2))
          (local.set $l6
            (i32.const 1))
          (br_if $B1
            (i32.eqz
              (local.tee $l5
                (call $f23
                  (local.get $l4)
                  (local.get $l2)
                  (i32.const 1)
                  (local.get $l3))))))
        (i32.store offset=4
          (local.get $p1)
          (local.get $l3))
        (i32.store
          (local.get $p1)
          (local.get $l5))
        (local.set $l6
          (i32.const 0)))
      (call $f54
        (local.get $l6)
        (i32.const 1)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l3))
    (i32.store
      (local.get $p0)
      (i32.load
        (local.get $p1))))
  (func $f58 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (call $f52
      (local.get $p0)
      (local.get $p2))
    (drop
      (call $f139
        (i32.add
          (i32.load
            (local.get $p0))
          (i32.load offset=8
            (local.get $p0)))
        (local.get $p1)
        (local.get $p2)))
    (i32.store offset=8
      (local.get $p0)
      (i32.add
        (i32.load offset=8
          (local.get $p0))
        (local.get $p2))))
  (func $f59 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.le_s
            (local.get $p1)
            (i32.const -1)))
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eqz
                (local.get $p2)))
            (call $f56
              (local.get $l3)
              (local.get $p1)
              (i32.const 1)
              (i32.const 1))
            (local.set $p2
              (i32.load offset=4
                (local.get $l3)))
            (local.set $p1
              (i32.load
                (local.get $l3)))
            (br $B2))
          (call $f55
            (i32.add
              (local.get $l3)
              (i32.const 8))
            (local.get $p1)
            (i32.const 1))
          (local.set $p2
            (i32.load offset=12
              (local.get $l3)))
          (local.set $p1
            (i32.load offset=8
              (local.get $l3))))
        (br_if $B0
          (i32.eqz
            (local.get $p1)))
        (i32.store offset=4
          (local.get $p0)
          (local.get $p2))
        (i32.store
          (local.get $p0)
          (local.get $p1))
        (global.set $g0
          (i32.add
            (local.get $l3)
            (i32.const 16)))
        (return))
      (call $f31)
      (unreachable))
    (call $f29)
    (unreachable))
  (func $f60 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f59
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (local.get $p2)
      (i32.const 0))
    (local.set $p1
      (call $f139
        (i32.load offset=8
          (local.get $l3))
        (local.get $p1)
        (local.get $p2)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p2))
    (i32.store
      (local.get $p0)
      (local.get $p1))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $f61 (type $t13) (param $p0 i32) (param $p1 i32) (result i64)
    (local $l2 i64)
    (local.set $l2
      (i64.const 0))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p1)))
      (loop $L1
        (br_if $B0
          (i32.eqz
            (local.get $p1)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const -1)))
        (local.set $l2
          (i64.or
            (i64.shl
              (local.get $l2)
              (i64.const 8))
            (i64.load8_u
              (local.get $p0))))
        (local.set $p0
          (i32.add
            (local.get $p0)
            (i32.const 1)))
        (br $L1)))
    (local.get $l2))
  (func $f62 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 16))
        (i32.const 8))
      (i32.load
        (i32.add
          (local.get $p1)
          (i32.const 8))))
    (i64.store offset=16
      (local.get $l2)
      (i64.load align=4
        (local.get $p1)))
    (call $f63
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (i64.store
      (local.get $p0)
      (i64.load offset=8
        (local.get $l2)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32))))
  (func $f63 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (i32.store
      (i32.add
        (i32.add
          (local.get $l2)
          (i32.const 16))
        (i32.const 8))
      (i32.load
        (i32.add
          (local.get $p1)
          (i32.const 8))))
    (i64.store offset=16
      (local.get $l2)
      (i64.load align=4
        (local.get $p1)))
    (call $f57
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (i64.store
      (local.get $p0)
      (i64.load offset=8
        (local.get $l2)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32))))
  (func $f64 (type $t6) (param $p0 i32))
  (func $f65 (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.gt_u
            (i32.and
              (local.get $p0)
              (i32.const 255))
            (i32.and
              (local.get $p3)
              (i32.const 255))))
        (local.set $p0
          (i32.const 1))
        (block $B2
          (br_if $B2
            (i32.eq
              (i32.and
                (local.get $p2)
                (i32.const 255))
              (i32.const 1)))
          (br_if $B1
            (i32.gt_u
              (i32.and
                (local.get $p3)
                (i32.const 255))
              (i32.and
                (local.get $p1)
                (i32.const 255))))
          (br $B0))
        (br_if $B0
          (i32.lt_u
            (i32.and
              (local.get $p3)
              (i32.const 255))
            (i32.and
              (local.get $p1)
              (i32.const 255)))))
      (local.set $p0
        (i32.const 0)))
    (local.get $p0))
  (func $f66 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f59
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (local.get $p1)
      (i32.const 0))
    (local.set $l3
      (i64.load offset=8
        (local.get $l2)))
    (i32.store offset=8
      (local.get $p0)
      (i32.const 0))
    (i64.store align=4
      (local.get $p0)
      (local.get $l3))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f67 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.ge_u
                (i32.sub
                  (local.tee $l3
                    (i32.load offset=4
                      (local.get $p0)))
                  (local.tee $l4
                    (i32.load offset=8
                      (local.get $p0))))
                (local.get $p1)))
            (br_if $B0
              (i32.lt_u
                (local.tee $p1
                  (i32.add
                    (local.get $l4)
                    (local.get $p1)))
                (local.get $l4)))
            (block $B4
              (block $B5
                (br_if $B5
                  (i32.eq
                    (local.tee $l4
                      (i32.and
                        (local.tee $p1
                          (select
                            (local.tee $p1
                              (select
                                (local.tee $l4
                                  (i32.shl
                                    (local.get $l3)
                                    (i32.const 1)))
                                (local.get $p1)
                                (i32.gt_u
                                  (local.get $l4)
                                  (local.get $p1))))
                            (i32.const 4)
                            (i32.gt_u
                              (local.get $p1)
                              (i32.const 4))))
                        (i32.const 1073741823)))
                    (local.get $p1)))
                (local.set $l4
                  (i32.const 0))
                (br $B4))
              (br_if $B1
                (i32.eqz
                  (local.tee $l4
                    (select
                      (local.tee $l5
                        (i32.shl
                          (i32.eq
                            (local.get $l4)
                            (local.get $p1))
                          (i32.const 2)))
                      (i32.const 0)
                      (i32.eq
                        (i32.popcnt
                          (local.get $l5))
                        (i32.const 1))))))
              (local.set $p1
                (i32.and
                  (i32.add
                    (i32.add
                      (local.get $l5)
                      (i32.shl
                        (local.get $p1)
                        (i32.const 2)))
                    (i32.const -1))
                  (i32.sub
                    (i32.const 0)
                    (local.get $l5)))))
            (block $B6
              (block $B7
                (br_if $B7
                  (local.get $l3))
                (i32.store offset=16
                  (local.get $l2)
                  (i32.const 0))
                (br $B6))
              (i32.store
                (i32.add
                  (local.get $l2)
                  (i32.const 24))
                (i32.const 4))
              (i32.store offset=20
                (local.get $l2)
                (i32.shl
                  (local.get $l3)
                  (i32.const 2)))
              (i32.store offset=16
                (local.get $l2)
                (i32.load
                  (local.get $p0))))
            (call $f53
              (local.get $l2)
              (local.get $p1)
              (local.get $l4)
              (i32.add
                (local.get $l2)
                (i32.const 16)))
            (local.set $p1
              (i32.load
                (i32.add
                  (local.get $l2)
                  (i32.const 8))))
            (br_if $B2
              (i32.eq
                (i32.load
                  (local.get $l2))
                (i32.const 1)))
            (i32.store
              (local.get $p0)
              (i32.load offset=4
                (local.get $l2)))
            (i32.store offset=4
              (local.get $p0)
              (i32.shr_u
                (local.get $p1)
                (i32.const 2))))
          (global.set $g0
            (i32.add
              (local.get $l2)
              (i32.const 32)))
          (return))
        (br_if $B0
          (i32.eqz
            (local.get $p1)))
        (call $f29)
        (unreachable))
      (call $f44
        (i32.const 1048723)
        (i32.const 43)
        (i32.add
          (local.get $l2)
          (i32.const 16))
        (i32.const 1048768))
      (unreachable))
    (call $f31)
    (unreachable))
  (func $f68 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p1)))
      (call $f21
        (local.get $p0)
        (local.get $p1)
        (local.get $p2))))
  (func $f69 (type $t6) (param $p0 i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (i32.load offset=4
              (local.get $p0)))))
      (br_if $B0
        (i32.eqz
          (local.tee $p0
            (i32.load
              (local.get $p0)))))
      (call $f68
        (local.get $p0)
        (local.get $l1)
        (i32.const 1))))
  (func $f70 (type $t6) (param $p0 i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (i32.load offset=4
              (local.get $p0)))))
      (br_if $B0
        (i32.eqz
          (local.tee $p0
            (i32.load
              (local.get $p0)))))
      (call $f68
        (local.get $p0)
        (i32.shl
          (local.get $l1)
          (i32.const 2))
        (i32.const 4))))
  (func $f71 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (local.set $l5
      (select
        (local.tee $l3
          (i32.load offset=4
            (local.get $p1)))
        (local.tee $l4
          (i32.load offset=8
            (local.get $p1)))
        (i32.gt_u
          (local.get $l3)
          (local.get $l4))))
    (local.set $l6
      (i32.load
        (local.get $p1)))
    (local.set $l7
      (local.get $l4))
    (loop $L0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.le_u
                  (local.get $l7)
                  (local.get $l3)))
              (local.set $l7
                (i32.const 0))
              (br $B3))
            (block $B5
              (br_if $B5
                (i32.ne
                  (local.get $l3)
                  (local.get $l7)))
              (call $f72
                (local.get $l2)
                (local.get $l6)
                (local.get $l3)
                (local.get $l4)
                (local.get $l3))
              (local.set $l3
                (i32.load offset=4
                  (local.get $l2)))
              (local.set $l7
                (i32.load
                  (local.get $l2)))
              (i32.store offset=8
                (local.get $p1)
                (i32.add
                  (i32.load offset=8
                    (local.get $p1))
                  (i32.const 1)))
              (br $B3))
            (br_if $B2
              (i32.eq
                (local.get $l5)
                (local.get $l7)))
            (br_if $B1
              (i32.ne
                (i32.load8_u
                  (i32.add
                    (local.get $l6)
                    (local.get $l7)))
                (i32.const 64)))
            (call $f72
              (i32.add
                (local.get $l2)
                (i32.const 8))
              (local.get $l6)
              (local.get $l3)
              (local.get $l4)
              (local.get $l7))
            (local.set $l3
              (i32.load offset=12
                (local.get $l2)))
            (local.set $l7
              (i32.load offset=8
                (local.get $l2)))
            (i32.store offset=8
              (local.get $p1)
              (i32.add
                (i32.load offset=8
                  (local.get $p1))
                (i32.const 1))))
          (i32.store offset=4
            (local.get $p0)
            (local.get $l3))
          (i32.store
            (local.get $p0)
            (local.get $l7))
          (global.set $g0
            (i32.add
              (local.get $l2)
              (i32.const 16)))
          (return))
        (call $f35
          (local.get $l7)
          (local.get $l3))
        (unreachable))
      (i32.store offset=8
        (local.get $p1)
        (local.tee $l7
          (i32.add
            (local.get $l7)
            (i32.const 1))))
      (br $L0)))
  (func $f72 (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.lt_u
            (local.get $p4)
            (local.get $p3)))
        (br_if $B0
          (i32.lt_u
            (local.get $p2)
            (local.get $p4)))
        (i32.store offset=4
          (local.get $p0)
          (i32.sub
            (local.get $p4)
            (local.get $p3)))
        (i32.store
          (local.get $p0)
          (i32.add
            (local.get $p1)
            (local.get $p3)))
        (return))
      (call $f43
        (local.get $p3)
        (local.get $p4))
      (unreachable))
    (call $f38
      (local.get $p4)
      (local.get $p2))
    (unreachable))
  (func $f73 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f60
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (local.get $p1)
      (local.get $p2))
    (i32.store
      (local.get $p0)
      (i32.load offset=8
        (local.get $l3)))
    (i32.store offset=4
      (local.get $p0)
      (i32.load offset=12
        (local.get $l3)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $f74 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (call $f65
              (i32.const 48)
              (i32.const 57)
              (i32.const 0)
              (local.get $p1))))
        (local.set $l2
          (i32.add
            (local.get $p1)
            (i32.const -48)))
        (local.set $p1
          (i32.const 1))
        (br $B0))
      (local.set $l2
        (i32.add
          (local.get $p1)
          (i32.const -87)))
      (local.set $p1
        (call $f65
          (i32.const 97)
          (i32.const 102)
          (i32.const 0)
          (local.get $p1))))
    (i32.store8 offset=1
      (local.get $p0)
      (local.get $l2))
    (i32.store8
      (local.get $p0)
      (local.get $p1)))
  (func $f75 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (block $B0
      (br_if $B0
        (i32.ne
          (local.tee $l2
            (i32.load offset=8
              (local.get $p0)))
          (i32.load offset=4
            (local.get $p0))))
      (call $f52
        (local.get $p0)
        (i32.const 1))
      (local.set $l2
        (i32.load offset=8
          (local.get $p0))))
    (i32.store8
      (i32.add
        (i32.load
          (local.get $p0))
        (local.get $l2))
      (local.get $p1))
    (i32.store offset=8
      (local.get $p0)
      (i32.add
        (i32.load offset=8
          (local.get $p0))
        (i32.const 1))))
  (func $f76 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f66
      (local.get $l3)
      (local.get $p2))
    (call $f58
      (local.get $l3)
      (local.get $p1)
      (local.get $p2))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 8))
      (i32.load
        (i32.add
          (local.get $l3)
          (i32.const 8))))
    (i64.store align=4
      (local.get $p0)
      (i64.load
        (local.get $l3)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $f77 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f76
      (local.get $p0)
      (local.get $p1)
      (local.get $p2))
    (local.set $l6
      (i32.add
        (local.tee $l5
          (i32.load
            (local.get $p3)))
        (i32.shl
          (i32.load offset=8
            (local.get $p3))
          (i32.const 2))))
    (local.set $l7
      (i32.load
        (i32.add
          (local.get $p3)
          (i32.const 20))))
    (local.set $l8
      (i32.load offset=12
        (local.get $p3)))
    (local.set $p3
      (i32.const 0))
    (block $B0
      (loop $L1
        (br_if $B0
          (i32.eq
            (local.get $l5)
            (local.get $l6)))
        (call $f72
          (i32.add
            (local.get $l4)
            (i32.const 8))
          (local.get $l8)
          (local.get $l7)
          (local.get $p3)
          (local.tee $l9
            (i32.add
              (i32.load
                (local.get $l5))
              (local.get $p3))))
        (local.set $p1
          (i32.load offset=8
            (local.get $l4)))
        (call $f52
          (local.get $p0)
          (i32.or
            (i32.shl
              (local.tee $p3
                (i32.load offset=12
                  (local.get $l4)))
              (i32.const 1))
            (i32.const 1)))
        (call $f75
          (local.get $p0)
          (i32.const 64))
        (block $B2
          (loop $L3
            (br_if $B2
              (i32.eqz
                (local.get $p3)))
            (call $f75
              (local.get $p0)
              (i32.add
                (select
                  (i32.const 48)
                  (i32.const 87)
                  (i32.lt_u
                    (local.tee $p2
                      (i32.load8_u
                        (local.get $p1)))
                    (i32.const 160)))
                (i32.shr_u
                  (local.get $p2)
                  (i32.const 4))))
            (call $f75
              (local.get $p0)
              (i32.add
                (select
                  (i32.const 48)
                  (i32.const 87)
                  (i32.lt_u
                    (local.tee $p2
                      (i32.and
                        (local.get $p2)
                        (i32.const 15)))
                    (i32.const 10)))
                (local.get $p2)))
            (local.set $p3
              (i32.add
                (local.get $p3)
                (i32.const -1)))
            (local.set $p1
              (i32.add
                (local.get $p1)
                (i32.const 1)))
            (br $L3)))
        (local.set $l5
          (i32.add
            (local.get $l5)
            (i32.const 4)))
        (local.set $p3
          (local.get $l9))
        (br $L1)))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 16))))
  (func $f78 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (block $B0
      (br_if $B0
        (i32.ne
          (local.tee $l3
            (i32.load offset=8
              (local.get $p0)))
          (i32.load offset=4
            (local.get $p0))))
      (call $f67
        (local.get $p0)
        (i32.const 1))
      (local.set $l3
        (i32.load offset=8
          (local.get $p0))))
    (i32.store
      (i32.add
        (i32.load
          (local.get $p0))
        (i32.shl
          (local.get $l3)
          (i32.const 2)))
      (local.get $p2))
    (i32.store offset=8
      (local.get $p0)
      (i32.add
        (i32.load offset=8
          (local.get $p0))
        (i32.const 1)))
    (call $f58
      (i32.add
        (local.get $p0)
        (i32.const 12))
      (local.get $p1)
      (local.get $p2)))
  (func $f79 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (local.set $l2
      (i32.const 0))
    (local.set $l3
      (i32.const 28))
    (block $B0
      (loop $L1
        (block $B2
          (br_if $B2
            (i32.ne
              (local.get $l3)
              (i32.const -4)))
          (local.set $l4
            (i32.const 0))
          (local.set $l3
            (i32.const 32))
          (local.set $l5
            (call $f19
              (local.get $l2)
              (i32.const 1)))
          (loop $L3
            (br_if $B0
              (i32.eqz
                (local.get $l3)))
            (drop
              (call $f139
                (i32.add
                  (local.get $l5)
                  (local.get $l4))
                (i32.load
                  (local.get $p1))
                (i32.load offset=4
                  (local.get $p1))))
            (local.set $l3
              (i32.add
                (local.get $l3)
                (i32.const -8)))
            (local.set $l4
              (i32.add
                (i32.load offset=4
                  (local.get $p1))
                (local.get $l4)))
            (local.set $p1
              (i32.add
                (local.get $p1)
                (i32.const 8)))
            (br $L3)))
        (local.set $l2
          (i32.add
            (i32.load
              (i32.add
                (local.get $p1)
                (local.get $l3)))
            (local.get $l2)))
        (local.set $l3
          (i32.add
            (local.get $l3)
            (i32.const -8)))
        (br $L1)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l2))
    (i32.store
      (local.get $p0)
      (local.get $l5)))
  (func $f80 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (local.set $l2
      (call $f19
        (local.get $p1)
        (i32.const 1)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p1))
    (i32.store
      (local.get $p0)
      (local.get $l2)))
  (func $f81 (type $t9) (result i32)
    (call $f25
      (i32.const 32)
      (i32.const 1)))
  (func $f82 (type $t11)
    (call $env.signalError
      (i32.const 1048908)
      (i32.const 37))
    (unreachable))
  (func $f83 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f59
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (local.tee $l3
        (call $env.bigIntUnsignedByteLength
          (local.get $p1)))
      (i32.const 1))
    (local.set $l4
      (i32.load offset=8
        (local.get $l2)))
    (local.set $l5
      (i32.load offset=12
        (local.get $l2)))
    (i32.store offset=8
      (local.get $p0)
      (local.get $l3))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l5))
    (i32.store
      (local.get $p0)
      (local.get $l4))
    (drop
      (call $env.bigIntGetUnsignedBytes
        (local.get $p1)
        (local.get $l4)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f84 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (call $env.writeEventLog
      (i32.load offset=8
        (local.get $p0))
      (i32.load
        (local.get $p0))
      (i32.load offset=12
        (local.get $p0))
      (local.get $p1)
      (local.get $p2)))
  (func $f85 (type $t6) (param $p0 i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (i32.ge_u
          (local.tee $l1
            (call $env.bigIntUnsignedByteLength
              (local.get $p0)))
          (i32.const 33)))
      (i64.store offset=1049268 align=1
        (i32.const 0)
        (i64.const 0))
      (i64.store offset=1049260 align=1
        (i32.const 0)
        (i64.const 0))
      (i64.store offset=1049252 align=1
        (i32.const 0)
        (i64.const 0))
      (i64.store offset=1049244 align=1
        (i32.const 0)
        (i64.const 0))
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.get $l1)))
        (drop
          (call $env.bigIntGetUnsignedBytes
            (local.get $p0)
            (i32.add
              (i32.sub
                (i32.const 1049244)
                (local.get $l1))
              (i32.const 32)))))
      (return))
    (call $f82)
    (unreachable))
  (func $f86 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (call $f85
      (local.get $p1))
    (call $env.asyncCall
      (i32.load
        (local.get $p0))
      (i32.const 1049244)
      (local.get $p2)
      (local.get $p3))
    (unreachable))
  (func $f87 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (call $env.getOriginalTxHash
      (local.tee $l2
        (call $f81)))
    (drop
      (call $env.storageStore
        (local.get $l2)
        (i32.const 32)
        (local.get $p0)
        (local.get $p1)))
    (call $f21
      (local.get $l2)
      (i32.const 32)
      (i32.const 1)))
  (func $f88 (type $t4) (param $p0 i32) (param $p1 i32)
    (call $env.signalError
      (local.get $p0)
      (local.get $p1))
    (unreachable))
  (func $f89 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p0)))
      (local.set $p0
        (i32.shr_u
          (i32.add
            (local.get $p0)
            (i32.const 3))
          (i32.const 2)))
      (block $B1
        (br_if $B1
          (i32.eqz
            (call $f136
              (local.get $p1)
              (i32.const 4))))
        (br_if $B1
          (i32.gt_u
            (local.tee $l3
              (i32.add
                (local.get $p0)
                (i32.const -1)))
            (i32.const 255)))
        (i32.store offset=4
          (local.get $l2)
          (i32.const 1049276))
        (i32.store offset=12
          (local.get $l2)
          (i32.load
            (local.tee $l3
              (i32.add
                (i32.shl
                  (local.get $l3)
                  (i32.const 2))
                (i32.const 1049280)))))
        (local.set $p1
          (call $f127
            (local.get $p0)
            (local.get $p1)
            (i32.add
              (local.get $l2)
              (i32.const 12))
            (i32.add
              (local.get $l2)
              (i32.const 4))
            (i32.const 1049220)))
        (i32.store
          (local.get $l3)
          (i32.load offset=12
            (local.get $l2)))
        (br $B0))
      (i32.store offset=8
        (local.get $l2)
        (i32.load offset=1049276
          (i32.const 0)))
      (local.set $p1
        (call $f127
          (local.get $p0)
          (local.get $p1)
          (i32.add
            (local.get $l2)
            (i32.const 8))
          (i32.const 1049196)
          (i32.const 1049196)))
      (i32.store offset=1049276
        (i32.const 0)
        (i32.load offset=8
          (local.get $l2))))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p1))
  (func $f90 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p0)))
      (i32.store offset=4
        (local.get $l3)
        (local.get $p0))
      (block $B1
        (br_if $B1
          (i32.eqz
            (call $f136
              (local.get $p2)
              (i32.const 4))))
        (br_if $B1
          (i32.gt_u
            (local.tee $p0
              (i32.add
                (i32.shr_u
                  (i32.add
                    (local.get $p1)
                    (i32.const 3))
                  (i32.const 2))
                (i32.const -1)))
            (i32.const 255)))
        (i32.store offset=8
          (local.get $l3)
          (i32.const 1049276))
        (i32.store offset=12
          (local.get $l3)
          (i32.load
            (local.tee $p0
              (i32.add
                (i32.shl
                  (local.get $p0)
                  (i32.const 2))
                (i32.const 1049280)))))
        (call $f138
          (i32.add
            (local.get $l3)
            (i32.const 4))
          (i32.add
            (local.get $l3)
            (i32.const 12))
          (i32.add
            (local.get $l3)
            (i32.const 8))
          (i32.const 1049220))
        (i32.store
          (local.get $p0)
          (i32.load offset=12
            (local.get $l3)))
        (br $B0))
      (i32.store offset=12
        (local.get $l3)
        (i32.load offset=1049276
          (i32.const 0)))
      (call $f138
        (i32.add
          (local.get $l3)
          (i32.const 4))
        (i32.add
          (local.get $l3)
          (i32.const 12))
        (i32.const 1049196)
        (i32.const 1049196))
      (i32.store offset=1049276
        (i32.const 0)
        (i32.load offset=12
          (local.get $l3))))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $f91 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f80
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (local.tee $l3
        (call $env.getArgumentLength
          (local.get $p1))))
    (local.set $l4
      (i32.load offset=12
        (local.get $l2)))
    (local.set $l5
      (i32.load offset=8
        (local.get $l2)))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $l3)))
      (drop
        (call $env.getArgument
          (local.get $p1)
          (local.get $l5))))
    (i32.store
      (local.get $p0)
      (local.get $l5))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l4))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f92 (type $t6) (param $p0 i32)
    (call $f93
      (i32.load
        (local.get $p0))
      (i32.load offset=4
        (local.get $p0))))
  (func $f93 (type $t4) (param $p0 i32) (param $p1 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p1)))
      (call $f21
        (local.get $p0)
        (local.get $p1)
        (i32.const 1))))
  (func $f94 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l3)
      (local.get $p2))
    (i32.store offset=8
      (local.get $l3)
      (local.get $p1))
    (local.set $l4
      (i32.const 4))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eq
            (local.get $p2)
            (i32.const 4)))
        (local.set $l4
          (local.get $p2))
        (br $B0))
      (br_if $B0
        (i32.ne
          (i32.load align=1
            (local.get $p1))
          (i32.const 1145849669)))
      (call $f92
        (i32.add
          (local.get $l3)
          (i32.const 8)))
      (local.set $l4
        (i32.const 0))
      (local.set $p1
        (i32.const 1)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l4))
    (i32.store
      (local.get $p0)
      (local.get $p1))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $f95 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (i32.store
      (i32.add
        (local.get $l4)
        (i32.const 44))
      (local.get $p3))
    (i32.store
      (i32.add
        (local.get $l4)
        (i32.const 36))
      (i32.const 3))
    (i32.store
      (i32.add
        (local.get $l4)
        (i32.const 28))
      (local.get $p1))
    (i32.store offset=40
      (local.get $l4)
      (local.get $p2))
    (i32.store offset=32
      (local.get $l4)
      (i32.const 1049017))
    (i32.store offset=24
      (local.get $l4)
      (local.get $p0))
    (i32.store offset=20
      (local.get $l4)
      (i32.const 23))
    (i32.store offset=16
      (local.get $l4)
      (i32.const 1048994))
    (call $f79
      (i32.add
        (local.get $l4)
        (i32.const 8))
      (i32.add
        (local.get $l4)
        (i32.const 16)))
    (call $f96
      (i32.load offset=8
        (local.get $l4))
      (i32.load offset=12
        (local.get $l4)))
    (unreachable))
  (func $f96 (type $t4) (param $p0 i32) (param $p1 i32)
    (call $f97
      (local.get $p0)
      (local.get $p1))
    (unreachable))
  (func $f97 (type $t4) (param $p0 i32) (param $p1 i32)
    (call $env.signalError
      (local.get $p0)
      (local.get $p1))
    (unreachable))
  (func $f98 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 48))))
    (i32.store
      (i32.add
        (local.get $l4)
        (i32.const 44))
      (local.get $p3))
    (i32.store
      (i32.add
        (local.get $l4)
        (i32.const 36))
      (i32.const 3))
    (i32.store
      (i32.add
        (local.get $l4)
        (i32.const 28))
      (local.get $p1))
    (i32.store offset=40
      (local.get $l4)
      (local.get $p2))
    (i32.store offset=32
      (local.get $l4)
      (i32.const 1049017))
    (i32.store offset=24
      (local.get $l4)
      (local.get $p0))
    (i32.store offset=20
      (local.get $l4)
      (i32.const 23))
    (i32.store offset=16
      (local.get $l4)
      (i32.const 1048994))
    (call $f79
      (i32.add
        (local.get $l4)
        (i32.const 8))
      (i32.add
        (local.get $l4)
        (i32.const 16)))
    (call $f96
      (i32.load offset=8
        (local.get $l4))
      (i32.load offset=12
        (local.get $l4)))
    (unreachable))
  (func $f99 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f78
      (local.get $p1)
      (i32.load
        (local.get $p0))
      (i32.const 32))
    (i32.store offset=8
      (local.get $l2)
      (i32.const 0))
    (call $f100
      (i32.add
        (local.get $l2)
        (i32.const 8)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f100 (type $t6) (param $p0 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (i32.load
            (local.get $p0))))
      (call $f92
        (local.get $p0))))
  (func $f101 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (call $f102
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (call $f103
      (i32.add
        (local.get $l2)
        (i32.const 16))
      (i64.extend_i32_u
        (local.get $p0)))
    (call $f78
      (local.get $p1)
      (i32.load offset=16
        (local.get $l2))
      (i32.load offset=24
        (local.get $l2)))
    (call $f69
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (i32.store offset=8
      (local.get $l2)
      (i32.const 0))
    (call $f100
      (i32.add
        (local.get $l2)
        (i32.const 8)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32))))
  (func $f102 (type $t6) (param $p0 i32)
    (call $f104
      (local.get $p0)
      (i32.const 8)))
  (func $f103 (type $t14) (param $p0 i32) (param $p1 i64)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i64.store offset=8
      (local.get $l2)
      (i64.or
        (i64.or
          (i64.or
            (i64.shl
              (local.get $p1)
              (i64.const 56))
            (i64.and
              (i64.shl
                (local.get $p1)
                (i64.const 40))
              (i64.const 71776119061217280)))
          (i64.or
            (i64.and
              (i64.shl
                (local.get $p1)
                (i64.const 24))
              (i64.const 280375465082880))
            (i64.and
              (i64.shl
                (local.get $p1)
                (i64.const 8))
              (i64.const 1095216660480))))
        (i64.or
          (i64.or
            (i64.and
              (i64.shr_u
                (local.get $p1)
                (i64.const 8))
              (i64.const 4278190080))
            (i64.and
              (i64.shr_u
                (local.get $p1)
                (i64.const 24))
              (i64.const 16711680)))
          (i64.or
            (i64.and
              (i64.shr_u
                (local.get $p1)
                (i64.const 40))
              (i64.const 65280))
            (i64.shr_u
              (local.get $p1)
              (i64.const 56))))))
    (block $B0
      (block $B1
        (br_if $B1
          (i64.eqz
            (local.get $p1)))
        (local.set $l3
          (i32.const 0))
        (loop $L2
          (br_if $B0
            (i32.eq
              (local.get $l3)
              (i32.const 8)))
          (block $B3
            (br_if $B3
              (i32.load8_u
                (local.tee $l4
                  (i32.add
                    (i32.add
                      (local.get $l2)
                      (i32.const 8))
                    (local.get $l3)))))
            (local.set $l3
              (i32.add
                (local.get $l3)
                (i32.const 1)))
            (br $L2)))
        (call $f58
          (local.get $p0)
          (local.get $l4)
          (i32.sub
            (i32.const 8)
            (local.get $l3))))
      (global.set $g0
        (i32.add
          (local.get $l2)
          (i32.const 16)))
      (return))
    (call $f35
      (i32.const 8)
      (i32.const 8))
    (unreachable))
  (func $f104 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f59
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (local.get $p1)
      (i32.const 0))
    (local.set $l3
      (i64.load offset=8
        (local.get $l2)))
    (i32.store offset=8
      (local.get $p0)
      (i32.const 0))
    (i64.store align=4
      (local.get $p0)
      (local.get $l3))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f105 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f78
      (local.get $p1)
      (select
        (i32.load
          (local.get $p0))
        (i32.const 1048990)
        (local.tee $p0
          (i32.load offset=4
            (local.get $p0))))
      (select
        (local.get $p0)
        (i32.const 4)
        (local.get $p0)))
    (i32.store offset=8
      (local.get $l2)
      (i32.const 0))
    (call $f100
      (i32.add
        (local.get $l2)
        (i32.const 8)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 16))))
  (func $f106 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (call $f83
      (i32.add
        (local.get $l2)
        (i32.const 16))
      (local.get $p0))
    (call $f78
      (local.get $p1)
      (i32.load offset=16
        (local.get $l2))
      (i32.load offset=24
        (local.get $l2)))
    (call $f69
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (i32.store offset=8
      (local.get $l2)
      (i32.const 0))
    (call $f100
      (i32.add
        (local.get $l2)
        (i32.const 8)))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32))))
  (func $f107 (type $t9) (result i32)
    (call $env.bigIntNew
      (i64.const 0)))
  (func $f108 (type $t6) (param $p0 i32)
    (block $B0
      (br_if $B0
        (i32.eq
          (call $env.getNumArguments)
          (local.get $p0)))
      (call $f96
        (i32.const 1049020)
        (i32.const 25))
      (unreachable)))
  (func $f109 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i64) (local $l11 i64) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 160))))
    (drop
      (call $f139
        (i32.add
          (local.get $l2)
          (i32.const 16))
        (local.get $p1)
        (i32.const 48)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.tee $l3
              (i32.load
                (i32.add
                  (i32.add
                    (local.get $l2)
                    (i32.const 16))
                  (i32.const 8))))))
        (i64.store
          (local.tee $l4
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 64))
              (i32.const 16)))
          (i64.const 0))
        (i64.store offset=72
          (local.get $l2)
          (i64.const 4294967296))
        (i64.store offset=64
          (local.get $l2)
          (i64.const 4))
        (call $f78
          (i32.add
            (local.get $l2)
            (i32.const 64))
          (i32.load offset=20
            (local.get $l2))
          (local.get $l3))
        (call $f83
          (i32.add
            (local.get $l2)
            (i32.const 136))
          (i32.load offset=28
            (local.get $l2)))
        (call $f78
          (i32.add
            (local.get $l2)
            (i32.const 64))
          (i32.load offset=136
            (local.get $l2))
          (i32.load offset=144
            (local.get $l2)))
        (call $f69
          (i32.add
            (local.get $l2)
            (i32.const 136)))
        (call $f78
          (i32.add
            (local.get $l2)
            (i32.const 64))
          (i32.load offset=32
            (local.get $l2))
          (i32.load
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 16))
              (i32.const 20))))
        (local.set $l3
          (i32.load offset=16
            (local.get $l2)))
        (local.set $l5
          (call $f107))
        (call $f110
          (i32.add
            (local.get $l2)
            (i32.const 8))
          (i32.const 1049045)
          (i32.const 12))
        (local.set $l6
          (i32.load offset=8
            (local.get $l2)))
        (local.set $l7
          (i32.load offset=12
            (local.get $l2)))
        (i64.store
          (local.tee $l8
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 112))
              (i32.const 16)))
          (i64.load
            (local.get $l4)))
        (i64.store
          (local.tee $l4
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 112))
              (i32.const 8)))
          (i64.load offset=72
            (local.get $l2)))
        (i64.store offset=112
          (local.get $l2)
          (i64.load offset=64
            (local.get $l2)))
        (i64.store
          (i32.add
            (i32.add
              (local.get $l2)
              (i32.const 136))
            (i32.const 16))
          (i64.load
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 16))
              (i32.const 40))))
        (i64.store
          (local.tee $l9
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 136))
              (i32.const 8)))
          (local.tee $l10
            (i64.load
              (i32.add
                (i32.add
                  (local.get $l2)
                  (i32.const 16))
                (i32.const 32)))))
        (i64.store offset=136
          (local.get $l2)
          (local.tee $l11
            (i64.load offset=40
              (local.get $l2))))
        (call $f67
          (i32.add
            (local.get $l2)
            (i32.const 112))
          (local.tee $l12
            (i32.wrap_i64
              (local.get $l10))))
        (drop
          (call $f139
            (i32.add
              (i32.load offset=112
                (local.get $l2))
              (i32.shl
                (local.tee $l13
                  (i32.load
                    (local.get $l4)))
                (i32.const 2)))
            (i32.wrap_i64
              (local.get $l11))
            (i32.shl
              (local.get $l12)
              (i32.const 2))))
        (i32.store
          (local.get $l9)
          (i32.const 0))
        (i32.store
          (local.get $l4)
          (i32.add
            (local.get $l13)
            (local.get $l12)))
        (local.set $l9
          (i32.load offset=148
            (local.get $l2)))
        (call $f52
          (i32.add
            (i32.add
              (local.get $l2)
              (i32.const 112))
            (i32.const 12))
          (local.tee $l12
            (i32.load
              (local.tee $l13
                (i32.add
                  (i32.add
                    (local.get $l2)
                    (i32.const 136))
                  (i32.const 20))))))
        (drop
          (call $f139
            (i32.add
              (i32.load offset=124
                (local.get $l2))
              (local.tee $l15
                (i32.load
                  (local.tee $l14
                    (i32.add
                      (i32.add
                        (local.get $l2)
                        (i32.const 112))
                      (i32.const 20))))))
            (local.get $l9)
            (local.get $l12)))
        (i32.store
          (local.get $l14)
          (i32.add
            (local.get $l15)
            (local.get $l12)))
        (i32.store
          (local.get $l13)
          (i32.const 0))
        (i64.store
          (local.tee $l12
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 88))
              (i32.const 8)))
          (i64.load
            (local.get $l4)))
        (i64.store
          (local.tee $l4
            (i32.add
              (i32.add
                (local.get $l2)
                (i32.const 88))
              (i32.const 16)))
          (i64.load
            (local.get $l8)))
        (i64.store offset=88
          (local.get $l2)
          (i64.load offset=112
            (local.get $l2)))
        (call $f70
          (i32.add
            (local.get $l2)
            (i32.const 136)))
        (call $f69
          (i32.add
            (i32.add
              (local.get $l2)
              (i32.const 136))
            (i32.const 12)))
        (i32.store
          (i32.add
            (local.get $p1)
            (i32.const 20))
          (local.get $l7))
        (i32.store offset=16
          (local.get $p1)
          (local.get $l6))
        (i32.store offset=12
          (local.get $p1)
          (local.get $l5))
        (i64.store offset=4 align=4
          (local.get $p1)
          (i64.const 1))
        (i32.store
          (local.get $p1)
          (local.get $l3))
        (i64.store offset=24 align=4
          (local.get $p1)
          (i64.load offset=88
            (local.get $l2)))
        (i64.store align=4
          (i32.add
            (local.get $p1)
            (i32.const 32))
          (i64.load
            (local.get $l12)))
        (i64.store align=4
          (i32.add
            (local.get $p1)
            (i32.const 40))
          (i64.load
            (local.get $l4)))
        (call $f92
          (i32.or
            (i32.add
              (local.get $l2)
              (i32.const 16))
            (i32.const 4)))
        (call $f92
          (i32.add
            (i32.add
              (local.get $l2)
              (i32.const 16))
            (i32.const 16)))
        (br $B0))
      (local.set $l7
        (i32.load
          (i32.add
            (local.tee $l3
              (call $f139
                (local.get $p1)
                (i32.add
                  (local.get $l2)
                  (i32.const 16))
                (i32.const 48)))
            (i32.const 20))))
      (local.set $l6
        (i32.load offset=16
          (local.get $l3)))
      (local.set $l5
        (i32.load offset=12
          (local.get $l3)))
      (local.set $l3
        (i32.load
          (local.get $l3))))
    (call $f77
      (i32.add
        (local.get $l2)
        (i32.const 136))
      (local.get $l6)
      (local.get $l7)
      (local.tee $l4
        (i32.add
          (local.get $p1)
          (i32.const 24))))
    (call $f76
      (i32.add
        (local.get $l2)
        (i32.const 16))
      (i32.const 1049196)
      (i32.const 0))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l5))
    (i32.store
      (local.get $p0)
      (local.get $l3))
    (i64.store offset=8 align=4
      (local.get $p0)
      (i64.load offset=136
        (local.get $l2)))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 16))
      (i32.load
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 136))
          (i32.const 8))))
    (i64.store offset=20 align=4
      (local.get $p0)
      (i64.load offset=16
        (local.get $l2)))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 28))
      (i32.load
        (i32.add
          (i32.add
            (local.get $l2)
            (i32.const 16))
          (i32.const 8))))
    (call $f92
      (i32.add
        (local.get $p1)
        (i32.const 4)))
    (call $f92
      (i32.add
        (local.get $p1)
        (i32.const 16)))
    (call $f111
      (local.get $l4))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 160))))
  (func $f110 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    (global.set $g0
      (local.tee $l3
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f60
      (i32.add
        (local.get $l3)
        (i32.const 8))
      (local.get $p1)
      (local.get $p2))
    (i32.store
      (local.get $p0)
      (i32.load offset=8
        (local.get $l3)))
    (i32.store offset=4
      (local.get $p0)
      (i32.load offset=12
        (local.get $l3)))
    (global.set $g0
      (i32.add
        (local.get $l3)
        (i32.const 16))))
  (func $f111 (type $t6) (param $p0 i32)
    (call $f70
      (local.get $p0))
    (call $f69
      (i32.add
        (local.get $p0)
        (i32.const 12))))
  (func $f112 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i64)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 32))))
    (call $f102
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (call $f103
      (i32.add
        (local.get $l2)
        (i32.const 16))
      (i64.extend_i32_u
        (local.get $p1)))
    (call $f73
      (i32.add
        (local.get $l2)
        (i32.const 8))
      (i32.load offset=16
        (local.get $l2))
      (i32.load offset=24
        (local.get $l2)))
    (local.set $l3
      (i64.load offset=8
        (local.get $l2)))
    (call $f68
      (i32.const 1)
      (i32.const 0)
      (i32.const 1))
    (call $f69
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (i64.store
      (local.get $p0)
      (local.get $l3))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 32))))
  (func $f113 (type $t4) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (global.set $g0
      (local.tee $l2
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (call $f71
      (i32.add
        (local.get $l2)
        (i32.const 40))
      (local.get $p1))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.tee $l3
              (i32.load offset=40
                (local.get $l2)))))
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (i32.eqz
                  (i32.and
                    (local.tee $l4
                      (i32.load offset=44
                        (local.get $l2)))
                    (i32.const 1))))
              (call $f73
                (i32.add
                  (local.get $l2)
                  (i32.const 32))
                (i32.const 1048784)
                (i32.const 75))
              (local.set $p1
                (i32.load offset=32
                  (local.get $l2)))
              (local.set $l5
                (i32.load offset=36
                  (local.get $l2)))
              (br $B3))
            (call $f66
              (i32.add
                (local.get $l2)
                (i32.const 48))
              (local.tee $l5
                (i32.shr_u
                  (local.get $l4)
                  (i32.const 1))))
            (local.set $p1
              (i32.const 0))
            (block $B5
              (block $B6
                (loop $L7
                  (br_if $B2
                    (i32.eqz
                      (local.get $l5)))
                  (block $B8
                    (br_if $B8
                      (i32.ge_u
                        (local.get $p1)
                        (local.get $l4)))
                    (br_if $B6
                      (i32.ge_u
                        (i32.add
                          (local.get $p1)
                          (i32.const 1))
                        (local.get $l4)))
                    (call $f74
                      (i32.add
                        (local.get $l2)
                        (i32.const 24))
                      (i32.load8_u
                        (local.tee $l6
                          (i32.add
                            (local.get $l3)
                            (local.get $p1)))))
                    (br_if $B5
                      (i32.eqz
                        (i32.and
                          (i32.load8_u offset=24
                            (local.get $l2))
                          (i32.const 1))))
                    (local.set $l7
                      (i32.load8_u offset=25
                        (local.get $l2)))
                    (call $f74
                      (i32.add
                        (local.get $l2)
                        (i32.const 16))
                      (i32.load8_u
                        (i32.add
                          (local.get $l6)
                          (i32.const 1))))
                    (br_if $B5
                      (i32.eqz
                        (i32.and
                          (i32.load8_u offset=16
                            (local.get $l2))
                          (i32.const 1))))
                    (call $f75
                      (i32.add
                        (local.get $l2)
                        (i32.const 48))
                      (i32.or
                        (i32.load8_u offset=17
                          (local.get $l2))
                        (i32.shl
                          (local.get $l7)
                          (i32.const 4))))
                    (local.set $l5
                      (i32.add
                        (local.get $l5)
                        (i32.const -1)))
                    (local.set $p1
                      (i32.add
                        (local.get $p1)
                        (i32.const 2)))
                    (br $L7)))
                (call $f35
                  (local.get $p1)
                  (local.get $l4))
                (unreachable))
              (call $f35
                (i32.add
                  (local.get $p1)
                  (i32.const 1))
                (local.get $l4))
              (unreachable))
            (call $f73
              (i32.add
                (local.get $l2)
                (i32.const 8))
              (i32.const 1048859)
              (i32.const 49))
            (local.set $l5
              (i32.load offset=12
                (local.get $l2)))
            (local.set $p1
              (i32.load offset=8
                (local.get $l2)))
            (call $f69
              (i32.add
                (local.get $l2)
                (i32.const 48))))
          (call $f96
            (local.get $p1)
            (local.get $l5))
          (unreachable))
        (br_if $B0
          (local.tee $p1
            (i32.load offset=48
              (local.get $l2)))))
      (call $f96
        (i32.const 1049020)
        (i32.const 25))
      (unreachable))
    (local.set $l5
      (i32.load offset=52
        (local.get $l2)))
    (i32.store offset=8
      (local.get $p0)
      (i32.load offset=56
        (local.get $l2)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $l5))
    (i32.store
      (local.get $p0)
      (local.get $p1))
    (global.set $g0
      (i32.add
        (local.get $l2)
        (i32.const 64))))
  (func $f114 (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i64)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 128))))
    (i64.store
      (local.tee $l6
        (i32.add
          (i32.add
            (local.get $l5)
            (i32.const 64))
          (i32.const 16)))
      (i64.const 0))
    (i64.store offset=72
      (local.get $l5)
      (i64.const 4294967296))
    (i64.store offset=64
      (local.get $l5)
      (i64.const 4))
    (call $f78
      (i32.add
        (local.get $l5)
        (i32.const 64))
      (i32.const 1049083)
      (i32.const 20))
    (call $f99
      (local.get $p1)
      (i32.add
        (local.get $l5)
        (i32.const 64)))
    (call $f105
      (local.get $p2)
      (i32.add
        (local.get $l5)
        (i32.const 64)))
    (call $f106
      (local.get $p3)
      (i32.add
        (local.get $l5)
        (i32.const 64)))
    (call $f112
      (i32.add
        (local.get $l5)
        (i32.const 24))
      (local.get $p4))
    (i32.store offset=36
      (local.get $l5)
      (local.tee $l7
        (i32.load offset=28
          (local.get $l5))))
    (i32.store offset=32
      (local.get $l5)
      (local.tee $l8
        (i32.load offset=24
          (local.get $l5))))
    (call $f84
      (i32.add
        (local.get $l5)
        (i32.const 64))
      (local.get $l8)
      (local.get $l7))
    (call $f92
      (i32.add
        (local.get $l5)
        (i32.const 32)))
    (call $f111
      (i32.add
        (local.get $l5)
        (i32.const 64)))
    (block $B0
      (br_if $B0
        (local.tee $l7
          (call $f19
            (i32.const 32)
            (i32.const 1))))
      (call $f29)
      (unreachable))
    (i64.store align=1
      (local.get $l7)
      (i64.load align=1
        (local.tee $l8
          (i32.load
            (local.get $p1)))))
    (i64.store align=1
      (i32.add
        (local.get $l7)
        (i32.const 8))
      (i64.load align=1
        (i32.add
          (local.get $l8)
          (i32.const 8))))
    (i64.store align=1
      (i32.add
        (local.get $l7)
        (i32.const 16))
      (i64.load align=1
        (i32.add
          (local.get $l8)
          (i32.const 16))))
    (i64.store align=1
      (i32.add
        (local.get $l7)
        (i32.const 24))
      (i64.load align=1
        (i32.add
          (local.get $l8)
          (i32.const 24))))
    (i32.store offset=76
      (local.get $l5)
      (call $f107))
    (i64.store offset=68 align=4
      (local.get $l5)
      (i64.const 1))
    (i32.store offset=64
      (local.get $l5)
      (local.get $l7))
    (local.set $l9
      (i32.load
        (local.get $p2)))
    (call $f104
      (i32.add
        (local.get $l5)
        (i32.const 32))
      (local.tee $l8
        (i32.load offset=4
          (local.get $p2))))
    (drop
      (call $f139
        (i32.load offset=32
          (local.get $l5))
        (local.get $l9)
        (local.get $l8)))
    (i32.store offset=40
      (local.get $l5)
      (local.get $l8))
    (call $f57
      (i32.add
        (local.get $l5)
        (i32.const 16))
      (i32.add
        (local.get $l5)
        (i32.const 32)))
    (local.set $l10
      (i64.load offset=16
        (local.get $l5)))
    (call $env.bigIntAdd
      (local.tee $l8
        (call $env.bigIntNew
          (i64.const 0)))
      (local.get $l8)
      (local.get $p3))
    (call $f92
      (i32.or
        (i32.add
          (local.get $l5)
          (i32.const 64))
        (i32.const 4)))
    (call $f110
      (i32.add
        (local.get $l5)
        (i32.const 8))
      (i32.const 1049071)
      (i32.const 12))
    (i64.store
      (i32.add
        (local.get $l5)
        (i32.const 104))
      (i64.const 0))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l5)
          (i32.const 64))
        (i32.const 32))
      (i64.const 4294967296))
    (i64.store offset=88
      (local.get $l5)
      (i64.const 4))
    (i32.store offset=76
      (local.get $l5)
      (local.get $l8))
    (i64.store offset=68 align=4
      (local.get $l5)
      (local.get $l10))
    (i32.store offset=64
      (local.get $l5)
      (local.get $l7))
    (i64.store offset=80
      (local.get $l5)
      (i64.load offset=8
        (local.get $l5)))
    (call $f109
      (i32.add
        (local.get $l5)
        (i32.const 32))
      (i32.add
        (local.get $l5)
        (i32.const 64)))
    (i64.store
      (local.get $l6)
      (i64.const 0))
    (i64.store offset=72
      (local.get $l5)
      (i64.const 4294967296))
    (i64.store offset=64
      (local.get $l5)
      (i64.const 4))
    (call $f99
      (local.get $p1)
      (i32.add
        (local.get $l5)
        (i32.const 64)))
    (call $f105
      (local.get $p2)
      (i32.add
        (local.get $l5)
        (i32.const 64)))
    (call $f106
      (local.get $p3)
      (i32.add
        (local.get $l5)
        (i32.const 64)))
    (call $f101
      (local.get $p4)
      (i32.add
        (local.get $l5)
        (i32.const 64)))
    (call $f77
      (i32.add
        (local.get $l5)
        (i32.const 112))
      (i32.const 1049103)
      (i32.const 29)
      (i32.add
        (local.get $l5)
        (i32.const 64)))
    (call $f111
      (i32.add
        (local.get $l5)
        (i32.const 64)))
    (i64.store align=4
      (local.get $p0)
      (i64.load offset=32
        (local.get $l5)))
    (i64.store offset=8 align=4
      (local.get $p0)
      (i64.load offset=40
        (local.get $l5)))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 16))
      (i32.load
        (i32.add
          (i32.add
            (local.get $l5)
            (i32.const 32))
          (i32.const 16))))
    (i64.store offset=20 align=4
      (local.get $p0)
      (i64.load offset=112
        (local.get $l5)))
    (i32.store
      (i32.add
        (local.get $p0)
        (i32.const 28))
      (i32.load
        (i32.add
          (i32.add
            (local.get $l5)
            (i32.const 112))
          (i32.const 8))))
    (call $f69
      (i32.add
        (i32.add
          (local.get $l5)
          (i32.const 32))
        (i32.const 20)))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 128))))
  (func $f115 (type $t6) (param $p0 i32)
    (call $f87
      (i32.load offset=20
        (local.get $p0))
      (i32.load
        (i32.add
          (local.get $p0)
          (i32.const 28))))
    (call $f86
      (local.get $p0)
      (i32.load offset=4
        (local.get $p0))
      (i32.load offset=8
        (local.get $p0))
      (i32.load
        (i32.add
          (local.get $p0)
          (i32.const 16))))
    (unreachable))
  (func $f116 (type $t6) (param $p0 i32)
    (call $f93
      (local.get $p0)
      (i32.const 32)))
  (func $init (export "init") (type $t11)
    (call $env.checkNoPayment)
    (call $f108
      (i32.const 0)))
  (func $recursive_send_funds (export "recursive_send_funds") (type $t11)
    (call $f119)
    (unreachable))
  (func $f119 (type $t11)
    (local $l0 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 64))))
    (call $f120)
    (call $f108
      (i32.const 4))
    (i32.store offset=20
      (local.get $l0)
      (call $f121))
    (call $f122
      (i32.add
        (local.get $l0)
        (i32.const 8)))
    (i64.store offset=24
      (local.get $l0)
      (i64.load offset=8
        (local.get $l0)))
    (call $f114
      (i32.add
        (local.get $l0)
        (i32.const 32))
      (i32.add
        (local.get $l0)
        (i32.const 20))
      (i32.add
        (local.get $l0)
        (i32.const 24))
      (call $f123)
      (call $f124))
    (call $f115
      (i32.add
        (local.get $l0)
        (i32.const 32)))
    (unreachable))
  (func $f120 (type $t11)
    (call $env.checkNoPayment))
  (func $f121 (type $t9) (result i32)
    (local $l0 i32) (local $l1 i32)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f91
      (i32.add
        (local.get $l0)
        (i32.const 8))
      (i32.const 0))
    (block $B0
      (br_if $B0
        (i32.eq
          (i32.load offset=12
            (local.get $l0))
          (i32.const 32)))
      (call $f95
        (i32.const 1049186)
        (i32.const 2)
        (i32.const 1048975)
        (i32.const 15))
      (unreachable))
    (local.set $l1
      (i32.load offset=8
        (local.get $l0)))
    (global.set $g0
      (i32.add
        (local.get $l0)
        (i32.const 16)))
    (local.get $l1))
  (func $f122 (type $t6) (param $p0 i32)
    (local $l1 i32)
    (global.set $g0
      (local.tee $l1
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (call $f91
      (i32.add
        (local.get $l1)
        (i32.const 8))
      (i32.const 1))
    (call $f94
      (local.get $l1)
      (i32.load offset=8
        (local.get $l1))
      (i32.load offset=12
        (local.get $l1)))
    (i32.store
      (local.get $p0)
      (i32.load
        (local.get $l1)))
    (i32.store offset=4
      (local.get $p0)
      (i32.load offset=4
        (local.get $l1)))
    (global.set $g0
      (i32.add
        (local.get $l1)
        (i32.const 16))))
  (func $f123 (type $t9) (result i32)
    (local $l0 i32)
    (call $env.bigIntGetUnsignedArgument
      (i32.const 2)
      (local.tee $l0
        (call $env.bigIntNew
          (i64.const 0))))
    (local.get $l0))
  (func $f124 (type $t9) (result i32)
    (local $l0 i64)
    (block $B0
      (br_if $B0
        (i64.lt_u
          (local.tee $l0
            (call $env.smallIntGetUnsignedArgument
              (i32.const 3)))
          (i64.const 4294967296)))
      (call $f95
        (i32.const 1049188)
        (i32.const 7)
        (i32.const 1049057)
        (i32.const 14))
      (unreachable))
    (i32.wrap_i64
      (local.get $l0)))
  (func $callBack (export "callBack") (type $t11)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i64)
    (global.set $g0
      (local.tee $l0
        (i32.sub
          (global.get $g0)
          (i32.const 224))))
    (call $env.getOriginalTxHash
      (local.tee $l1
        (call $f81)))
    (call $f80
      (i32.add
        (local.get $l0)
        (i32.const 64))
      (local.tee $l2
        (call $env.storageLoadLength
          (local.get $l1)
          (i32.const 32))))
    (local.set $l3
      (i32.load offset=68
        (local.get $l0)))
    (local.set $l4
      (i32.load offset=64
        (local.get $l0)))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $l2)))
      (drop
        (call $env.storageLoad
          (local.get $l1)
          (i32.const 32)
          (local.get $l4))))
    (i32.store offset=72
      (local.get $l0)
      (local.get $l4))
    (i32.store offset=76
      (local.get $l0)
      (local.get $l3))
    (drop
      (call $env.storageStore
        (local.get $l1)
        (i32.const 32)
        (i32.const 1049196)
        (i32.const 0)))
    (i32.store
      (i32.add
        (local.get $l0)
        (i32.const 96))
      (i32.const 0))
    (i32.store offset=92
      (local.get $l0)
      (i32.const 1049196))
    (i32.store offset=88
      (local.get $l0)
      (i32.const 0))
    (i32.store offset=84
      (local.get $l0)
      (local.get $l3))
    (i32.store offset=80
      (local.get $l0)
      (local.get $l4))
    (call $f71
      (i32.add
        (local.get $l0)
        (i32.const 56))
      (i32.add
        (local.get $l0)
        (i32.const 80)))
    (block $B1
      (block $B2
        (br_if $B2
          (local.tee $l4
            (i32.load offset=56
              (local.get $l0))))
        (local.set $l3
          (i32.load offset=96
            (local.get $l0)))
        (local.set $l4
          (i32.load offset=92
            (local.get $l0)))
        (br $B1))
      (local.set $l3
        (i32.load offset=60
          (local.get $l0)))
      (i32.store offset=92
        (local.get $l0)
        (local.get $l4))
      (i32.store offset=96
        (local.get $l0)
        (local.get $l3)))
    (drop
      (call $env.getNumArguments))
    (block $B3
      (block $B4
        (block $B5
          (block $B6
            (block $B7
              (block $B8
                (br_if $B8
                  (i32.eqz
                    (local.get $l3)))
                (br_if $B6
                  (i32.ne
                    (local.get $l3)
                    (i32.const 29)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u
                      (local.get $l4))
                    (i32.const 114)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=1
                      (local.get $l4))
                    (i32.const 101)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=2
                      (local.get $l4))
                    (i32.const 99)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=3
                      (local.get $l4))
                    (i32.const 117)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=4
                      (local.get $l4))
                    (i32.const 114)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=5
                      (local.get $l4))
                    (i32.const 115)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=6
                      (local.get $l4))
                    (i32.const 105)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=7
                      (local.get $l4))
                    (i32.const 118)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=8
                      (local.get $l4))
                    (i32.const 101)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=9
                      (local.get $l4))
                    (i32.const 95)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=10
                      (local.get $l4))
                    (i32.const 115)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=11
                      (local.get $l4))
                    (i32.const 101)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=12
                      (local.get $l4))
                    (i32.const 110)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=13
                      (local.get $l4))
                    (i32.const 100)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=14
                      (local.get $l4))
                    (i32.const 95)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=15
                      (local.get $l4))
                    (i32.const 102)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=16
                      (local.get $l4))
                    (i32.const 117)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=17
                      (local.get $l4))
                    (i32.const 110)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=18
                      (local.get $l4))
                    (i32.const 100)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=19
                      (local.get $l4))
                    (i32.const 115)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=20
                      (local.get $l4))
                    (i32.const 95)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=21
                      (local.get $l4))
                    (i32.const 99)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=22
                      (local.get $l4))
                    (i32.const 97)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=23
                      (local.get $l4))
                    (i32.const 108)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=24
                      (local.get $l4))
                    (i32.const 108)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=25
                      (local.get $l4))
                    (i32.const 98)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=26
                      (local.get $l4))
                    (i32.const 97)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=27
                      (local.get $l4))
                    (i32.const 99)))
                (br_if $B6
                  (i32.ne
                    (i32.load8_u offset=28
                      (local.get $l4))
                    (i32.const 107)))
                (i32.store
                  (i32.add
                    (i32.add
                      (local.get $l0)
                      (i32.const 104))
                    (i32.const 16))
                  (i32.load
                    (i32.add
                      (i32.add
                        (local.get $l0)
                        (i32.const 80))
                      (i32.const 16))))
                (i64.store
                  (i32.add
                    (i32.add
                      (local.get $l0)
                      (i32.const 104))
                    (i32.const 8))
                  (i64.load
                    (i32.add
                      (i32.add
                        (local.get $l0)
                        (i32.const 80))
                      (i32.const 8))))
                (i64.store offset=104
                  (local.get $l0)
                  (i64.load offset=80
                    (local.get $l0)))
                (call $f113
                  (i32.add
                    (local.get $l0)
                    (i32.const 136))
                  (i32.add
                    (local.get $l0)
                    (i32.const 104)))
                (i32.store
                  (local.tee $l4
                    (i32.add
                      (i32.add
                        (local.get $l0)
                        (i32.const 176))
                      (i32.const 8)))
                  (i32.load
                    (local.tee $l3
                      (i32.add
                        (i32.add
                          (local.get $l0)
                          (i32.const 136))
                        (i32.const 8)))))
                (i64.store offset=176
                  (local.get $l0)
                  (i64.load offset=136
                    (local.get $l0)))
                (call $f62
                  (i32.add
                    (local.get $l0)
                    (i32.const 48))
                  (i32.add
                    (local.get $l0)
                    (i32.const 176)))
                (br_if $B5
                  (i32.ne
                    (i32.load offset=52
                      (local.get $l0))
                    (i32.const 32)))
                (i32.store offset=124
                  (local.get $l0)
                  (local.tee $l5
                    (i32.load offset=48
                      (local.get $l0))))
                (call $f113
                  (i32.add
                    (local.get $l0)
                    (i32.const 136))
                  (i32.add
                    (local.get $l0)
                    (i32.const 104)))
                (i32.store
                  (local.get $l4)
                  (i32.load
                    (local.get $l3)))
                (i64.store offset=176
                  (local.get $l0)
                  (i64.load offset=136
                    (local.get $l0)))
                (call $f62
                  (i32.add
                    (local.get $l0)
                    (i32.const 40))
                  (i32.add
                    (local.get $l0)
                    (i32.const 176)))
                (call $f94
                  (i32.add
                    (local.get $l0)
                    (i32.const 32))
                  (i32.load offset=40
                    (local.get $l0))
                  (i32.load offset=44
                    (local.get $l0)))
                (i64.store offset=128
                  (local.get $l0)
                  (i64.load offset=32
                    (local.get $l0)))
                (call $f113
                  (i32.add
                    (local.get $l0)
                    (i32.const 136))
                  (i32.add
                    (local.get $l0)
                    (i32.const 104)))
                (i32.store
                  (local.get $l4)
                  (i32.load
                    (local.get $l3)))
                (i64.store offset=176
                  (local.get $l0)
                  (i64.load offset=136
                    (local.get $l0)))
                (call $f62
                  (i32.add
                    (local.get $l0)
                    (i32.const 24))
                  (i32.add
                    (local.get $l0)
                    (i32.const 176)))
                (i32.store offset=172
                  (local.get $l0)
                  (local.tee $l6
                    (i32.load offset=28
                      (local.get $l0))))
                (i32.store offset=168
                  (local.get $l0)
                  (local.tee $l7
                    (i32.load offset=24
                      (local.get $l0))))
                (call $env.bigIntSetUnsignedBytes
                  (local.tee $l2
                    (call $env.bigIntNew
                      (i64.const 0)))
                  (local.get $l7)
                  (local.get $l6))
                (call $f92
                  (i32.add
                    (local.get $l0)
                    (i32.const 168)))
                (call $f113
                  (i32.add
                    (local.get $l0)
                    (i32.const 136))
                  (i32.add
                    (local.get $l0)
                    (i32.const 104)))
                (i32.store
                  (local.get $l4)
                  (i32.load
                    (local.get $l3)))
                (i64.store offset=176
                  (local.get $l0)
                  (i64.load offset=136
                    (local.get $l0)))
                (call $f62
                  (i32.add
                    (local.get $l0)
                    (i32.const 16))
                  (i32.add
                    (local.get $l0)
                    (i32.const 176)))
                (i32.store offset=172
                  (local.get $l0)
                  (local.tee $l4
                    (i32.load offset=20
                      (local.get $l0))))
                (i32.store offset=168
                  (local.get $l0)
                  (local.tee $l3
                    (i32.load offset=16
                      (local.get $l0))))
                (local.set $l8
                  (call $f61
                    (local.get $l3)
                    (local.get $l4)))
                (call $f92
                  (i32.add
                    (local.get $l0)
                    (i32.const 168)))
                (br_if $B4
                  (i64.ge_u
                    (local.get $l8)
                    (i64.const 4294967296)))
                (br_if $B3
                  (i32.le_u
                    (i32.load offset=112
                      (local.get $l0))
                    (i32.load offset=108
                      (local.get $l0))))
                (i64.store
                  (i32.add
                    (local.get $l0)
                    (i32.const 192))
                  (i64.const 0))
                (i64.store offset=184
                  (local.get $l0)
                  (i64.const 4294967296))
                (i64.store offset=176
                  (local.get $l0)
                  (i64.const 4))
                (call $f78
                  (i32.add
                    (local.get $l0)
                    (i32.const 176))
                  (i32.const 1049103)
                  (i32.const 29))
                (call $f99
                  (i32.add
                    (local.get $l0)
                    (i32.const 124))
                  (i32.add
                    (local.get $l0)
                    (i32.const 176)))
                (call $f105
                  (i32.add
                    (local.get $l0)
                    (i32.const 128))
                  (i32.add
                    (local.get $l0)
                    (i32.const 176)))
                (call $f106
                  (local.get $l2)
                  (i32.add
                    (local.get $l0)
                    (i32.const 176)))
                (call $f112
                  (i32.add
                    (local.get $l0)
                    (i32.const 8))
                  (local.tee $l4
                    (i32.wrap_i64
                      (local.get $l8))))
                (i32.store offset=140
                  (local.get $l0)
                  (local.tee $l3
                    (i32.load offset=12
                      (local.get $l0))))
                (i32.store offset=136
                  (local.get $l0)
                  (local.tee $l6
                    (i32.load offset=8
                      (local.get $l0))))
                (call $f84
                  (i32.add
                    (local.get $l0)
                    (i32.const 176))
                  (local.get $l6)
                  (local.get $l3))
                (call $f92
                  (i32.add
                    (local.get $l0)
                    (i32.const 136)))
                (call $f111
                  (i32.add
                    (local.get $l0)
                    (i32.const 176)))
                (block $B9
                  (block $B10
                    (br_if $B10
                      (i32.lt_u
                        (local.get $l4)
                        (i32.const 2)))
                    (call $env.getSCAddress
                      (local.tee $l3
                        (call $f81)))
                    (local.set $l6
                      (call $f107))
                    (call $f110
                      (local.get $l0)
                      (i32.const 1049083)
                      (i32.const 20))
                    (i64.store
                      (i32.add
                        (local.get $l0)
                        (i32.const 216))
                      (i64.const 0))
                    (i64.store
                      (i32.add
                        (local.get $l0)
                        (i32.const 208))
                      (i64.const 4294967296))
                    (i64.store offset=200
                      (local.get $l0)
                      (i64.const 4))
                    (i32.store offset=188
                      (local.get $l0)
                      (local.get $l6))
                    (i64.store offset=180 align=4
                      (local.get $l0)
                      (i64.const 1))
                    (i32.store offset=176
                      (local.get $l0)
                      (local.get $l3))
                    (i64.store offset=192
                      (local.get $l0)
                      (i64.load
                        (local.get $l0)))
                    (call $f99
                      (i32.add
                        (local.get $l0)
                        (i32.const 124))
                      (local.tee $l3
                        (i32.add
                          (local.get $l0)
                          (i32.const 200))))
                    (call $f105
                      (i32.add
                        (local.get $l0)
                        (i32.const 128))
                      (local.get $l3))
                    (call $f106
                      (local.get $l2)
                      (local.get $l3))
                    (call $f101
                      (i32.add
                        (local.get $l4)
                        (i32.const -1))
                      (local.get $l3))
                    (call $f109
                      (i32.add
                        (local.get $l0)
                        (i32.const 136))
                      (i32.add
                        (local.get $l0)
                        (i32.const 176)))
                    (br_if $B9
                      (i32.eqz
                        (i32.load offset=136
                          (local.get $l0))))
                    (call $f115
                      (i32.add
                        (local.get $l0)
                        (i32.const 136)))
                    (unreachable))
                  (i32.store offset=136
                    (local.get $l0)
                    (i32.const 0)))
                (call $f92
                  (i32.add
                    (local.get $l0)
                    (i32.const 128)))
                (call $f116
                  (local.get $l5))
                (call $f92
                  (i32.add
                    (local.get $l0)
                    (i32.const 72)))
                (br $B7))
              (call $f92
                (i32.add
                  (local.get $l0)
                  (i32.const 72))))
            (call $f116
              (local.get $l1))
            (global.set $g0
              (i32.add
                (local.get $l0)
                (i32.const 224)))
            (return))
          (call $f96
            (i32.const 1049132)
            (i32.const 54))
          (unreachable))
        (call $f98
          (i32.const 1049186)
          (i32.const 2)
          (i32.const 1048975)
          (i32.const 15))
        (unreachable))
      (call $f98
        (i32.const 1049188)
        (i32.const 7)
        (i32.const 1049057)
        (i32.const 14))
      (unreachable))
    (call $f96
      (i32.const 1049020)
      (i32.const 25))
    (unreachable))
  (func $f126 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32)
    (global.set $g0
      (local.tee $l4
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l4)
      (i32.load
        (local.tee $p1
          (i32.load
            (local.get $p1)))))
    (local.set $p2
      (call $f127
        (local.tee $l5
          (select
            (local.tee $p2
              (i32.mul
                (local.tee $p2
                  (i32.add
                    (local.get $p2)
                    (i32.const 2)))
                (local.get $p2)))
            (i32.const 2048)
            (i32.gt_u
              (local.get $p2)
              (i32.const 2048))))
        (i32.const 4)
        (i32.add
          (local.get $l4)
          (i32.const 12))
        (i32.const 1049196)
        (i32.const 1049196)))
    (i32.store
      (local.get $p1)
      (i32.load offset=12
        (local.get $l4)))
    (block $B0
      (block $B1
        (br_if $B1
          (local.get $p2))
        (local.set $p1
          (i32.const 1))
        (br $B0))
      (i64.store offset=4 align=4
        (local.get $p2)
        (i64.const 0))
      (i32.store
        (local.get $p2)
        (i32.or
          (i32.add
            (local.get $p2)
            (i32.shl
              (local.get $l5)
              (i32.const 2)))
          (i32.const 2)))
      (local.set $p1
        (i32.const 0)))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p2))
    (i32.store
      (local.get $p0)
      (local.get $p1))
    (global.set $g0
      (i32.add
        (local.get $l4)
        (i32.const 16))))
  (func $f127 (type $t15) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32)
    (global.set $g0
      (local.tee $l5
        (i32.sub
          (global.get $g0)
          (i32.const 16))))
    (block $B0
      (br_if $B0
        (local.tee $l6
          (call $f128
            (local.get $p0)
            (local.get $p1)
            (local.get $p2)
            (local.get $p3)
            (local.get $p4))))
      (call_indirect $T0 (type $t2)
        (i32.add
          (local.get $l5)
          (i32.const 8))
        (local.get $p3)
        (local.get $p0)
        (local.get $p1)
        (i32.load offset=12
          (local.get $p4)))
      (local.set $l6
        (i32.const 0))
      (br_if $B0
        (i32.load offset=8
          (local.get $l5)))
      (i32.store offset=8
        (local.tee $l6
          (i32.load offset=12
            (local.get $l5)))
        (i32.load
          (local.get $p2)))
      (i32.store
        (local.get $p2)
        (local.get $l6))
      (local.set $l6
        (call $f128
          (local.get $p0)
          (local.get $p1)
          (local.get $p2)
          (local.get $p3)
          (local.get $p4))))
    (global.set $g0
      (i32.add
        (local.get $l5)
        (i32.const 16)))
    (local.get $l6))
  (func $f128 (type $t15) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    (local.set $l5
      (i32.add
        (local.get $p1)
        (i32.const -1)))
    (local.set $l6
      (i32.const 0))
    (local.set $l7
      (i32.sub
        (i32.const 0)
        (local.get $p1)))
    (local.set $l8
      (i32.shl
        (local.get $p0)
        (i32.const 2)))
    (local.set $l9
      (i32.load
        (local.get $p2)))
    (block $B0
      (loop $L1
        (br_if $B0
          (i32.eqz
            (local.get $l9)))
        (local.set $p1
          (local.get $l9))
        (block $B2
          (block $B3
            (loop $L4
              (block $B5
                (br_if $B5
                  (i32.and
                    (local.tee $l9
                      (i32.load offset=8
                        (local.get $p1)))
                    (i32.const 1)))
                (br_if $B3
                  (i32.lt_u
                    (i32.sub
                      (local.tee $l10
                        (i32.and
                          (i32.load
                            (local.get $p1))
                          (i32.const -4)))
                      (local.tee $l11
                        (i32.add
                          (local.get $p1)
                          (i32.const 8))))
                    (local.get $l8)))
                (block $B6
                  (br_if $B6
                    (i32.gt_u
                      (i32.add
                        (i32.add
                          (local.get $l11)
                          (i32.shl
                            (call_indirect $T0 (type $t1)
                              (local.get $p3)
                              (local.get $p0)
                              (i32.load offset=16
                                (local.get $p4)))
                            (i32.const 2)))
                        (i32.const 8))
                      (local.tee $l9
                        (i32.and
                          (i32.sub
                            (local.get $l10)
                            (local.get $l8))
                          (local.get $l7)))))
                  (i32.store
                    (local.get $l9)
                    (i32.const 0))
                  (i64.store align=4
                    (local.tee $l9
                      (i32.add
                        (local.get $l9)
                        (i32.const -8)))
                    (i64.const 0))
                  (i32.store
                    (local.get $l9)
                    (i32.and
                      (i32.load
                        (local.get $p1))
                      (i32.const -4)))
                  (block $B7
                    (br_if $B7
                      (i32.eqz
                        (local.tee $l11
                          (i32.and
                            (local.tee $p2
                              (i32.load
                                (local.get $p1)))
                            (i32.const -4)))))
                    (br_if $B7
                      (i32.eqz
                        (local.tee $p2
                          (select
                            (i32.const 0)
                            (local.get $l11)
                            (i32.and
                              (local.get $p2)
                              (i32.const 2))))))
                    (i32.store offset=4
                      (local.get $p2)
                      (i32.or
                        (i32.and
                          (i32.load offset=4
                            (local.get $p2))
                          (i32.const 3))
                        (local.get $l9))))
                  (i32.store offset=4
                    (local.get $l9)
                    (i32.or
                      (i32.and
                        (i32.load offset=4
                          (local.get $l9))
                        (i32.const 3))
                      (local.get $p1)))
                  (i32.store offset=8
                    (local.get $p1)
                    (i32.and
                      (i32.load offset=8
                        (local.get $p1))
                      (i32.const -2)))
                  (i32.store
                    (local.get $p1)
                    (local.tee $l11
                      (i32.or
                        (i32.and
                          (local.tee $p2
                            (i32.load
                              (local.get $p1)))
                          (i32.const 3))
                        (local.get $l9))))
                  (block $B8
                    (br_if $B8
                      (i32.eqz
                        (i32.and
                          (local.get $p2)
                          (i32.const 2))))
                    (i32.store
                      (local.get $p1)
                      (i32.and
                        (local.get $l11)
                        (i32.const -3)))
                    (i32.store
                      (local.get $l9)
                      (i32.or
                        (i32.load
                          (local.get $l9))
                        (i32.const 2))))
                  (i32.store
                    (local.get $l9)
                    (i32.or
                      (i32.load
                        (local.get $l9))
                      (i32.const 1)))
                  (br $B2))
                (local.set $l9
                  (i32.load
                    (local.get $l11)))
                (br_if $B3
                  (i32.and
                    (local.get $l5)
                    (local.get $l11)))
                (i32.store
                  (local.get $p2)
                  (i32.and
                    (local.get $l9)
                    (i32.const -4)))
                (i32.store
                  (local.get $p1)
                  (i32.or
                    (i32.load
                      (local.get $p1))
                    (i32.const 1)))
                (local.set $l9
                  (local.get $p1))
                (br $B2))
              (i32.store offset=8
                (local.get $p1)
                (i32.and
                  (local.get $l9)
                  (i32.const -2)))
              (block $B9
                (block $B10
                  (br_if $B10
                    (local.tee $l9
                      (i32.and
                        (i32.load offset=4
                          (local.get $p1))
                        (i32.const -4))))
                  (local.set $l9
                    (i32.const 0))
                  (br $B9))
                (local.set $l9
                  (select
                    (i32.const 0)
                    (local.get $l9)
                    (i32.and
                      (i32.load8_u
                        (local.get $l9))
                      (i32.const 1)))))
              (call $f129
                (local.get $p1))
              (block $B11
                (br_if $B11
                  (i32.eqz
                    (i32.and
                      (i32.load8_u
                        (local.get $p1))
                      (i32.const 2))))
                (i32.store
                  (local.get $l9)
                  (i32.or
                    (i32.load
                      (local.get $l9))
                    (i32.const 2))))
              (i32.store
                (local.get $p2)
                (local.get $l9))
              (local.set $p1
                (local.get $l9))
              (br $L4)))
          (i32.store
            (local.get $p2)
            (local.get $l9))
          (br $L1)))
      (local.set $l6
        (i32.add
          (local.get $l9)
          (i32.const 8))))
    (local.get $l6))
  (func $f129 (type $t6) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l2
            (i32.and
              (local.tee $l1
                (i32.load
                  (local.get $p0)))
              (i32.const -4)))))
      (br_if $B0
        (i32.eqz
          (local.tee $l1
            (select
              (i32.const 0)
              (local.get $l2)
              (i32.and
                (local.get $l1)
                (i32.const 2))))))
      (i32.store offset=4
        (local.get $l1)
        (i32.or
          (i32.and
            (i32.load offset=4
              (local.get $l1))
            (i32.const 3))
          (i32.and
            (i32.load offset=4
              (local.get $p0))
            (i32.const -4)))))
    (block $B1
      (br_if $B1
        (i32.eqz
          (local.tee $l2
            (i32.and
              (local.tee $l1
                (i32.load offset=4
                  (local.get $p0)))
              (i32.const -4)))))
      (i32.store
        (local.get $l2)
        (i32.or
          (i32.and
            (i32.load
              (local.get $l2))
            (i32.const 3))
          (i32.and
            (i32.load
              (local.get $p0))
            (i32.const -4))))
      (local.set $l1
        (i32.load offset=4
          (local.get $p0))))
    (i32.store offset=4
      (local.get $p0)
      (i32.and
        (local.get $l1)
        (i32.const 3)))
    (i32.store
      (local.get $p0)
      (i32.and
        (i32.load
          (local.get $p0))
        (i32.const 3))))
  (func $f130 (type $t6) (param $p0 i32))
  (func $f131 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ne
            (local.tee $p3
              (memory.grow
                (i32.shr_u
                  (local.tee $l4
                    (i32.add
                      (select
                        (local.tee $p2
                          (i32.shl
                            (local.get $p2)
                            (i32.const 2)))
                        (local.tee $p3
                          (i32.add
                            (i32.shl
                              (local.get $p3)
                              (i32.const 3))
                            (i32.const 16384)))
                        (i32.gt_u
                          (local.get $p2)
                          (local.get $p3)))
                      (i32.const 65543)))
                  (i32.const 16))))
            (i32.const -1)))
        (local.set $p2
          (i32.const 1))
        (br $B0))
      (i64.store
        (local.tee $p3
          (i32.shl
            (local.get $p3)
            (i32.const 16)))
        (i64.const 0))
      (local.set $p2
        (i32.const 0))
      (i32.store offset=8
        (local.get $p3)
        (i32.const 0))
      (i32.store
        (local.get $p3)
        (i32.or
          (i32.add
            (local.get $p3)
            (i32.and
              (local.get $l4)
              (i32.const -65536)))
          (i32.const 2))))
    (i32.store offset=4
      (local.get $p0)
      (local.get $p3))
    (i32.store
      (local.get $p0)
      (local.get $p2)))
  (func $f132 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (i32.const 512))
  (func $f133 (type $t3) (param $p0 i32) (result i32)
    (i32.const 1))
  (func $f134 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local.get $p1))
  (func $f135 (type $t3) (param $p0 i32) (result i32)
    (i32.const 0))
  (func $f136 (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (local.set $l2
      (i32.const 1))
    (block $B0
      (br_if $B0
        (i32.le_u
          (i32.add
            (select
              (i32.const -1)
              (i32.ne
                (local.get $p0)
                (local.get $p1))
              (i32.lt_u
                (local.get $p0)
                (local.get $p1)))
            (i32.const 1))
          (i32.const 1)))
      (local.set $l2
        (i32.const 0)))
    (local.get $l2))
  (func $f137 (type $t6) (param $p0 i32))
  (func $f138 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32)
    (i32.store
      (local.tee $l4
        (i32.load
          (local.get $p0)))
      (i32.const 0))
    (i32.store
      (local.tee $p0
        (i32.add
          (local.get $l4)
          (i32.const -8)))
      (i32.and
        (i32.load
          (local.get $p0))
        (i32.const -2)))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (call_indirect $T0 (type $t3)
              (local.get $p2)
              (i32.load offset=20
                (local.get $p3)))))
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eqz
                (local.tee $p2
                  (i32.and
                    (i32.load
                      (i32.add
                        (local.get $l4)
                        (i32.const -4)))
                    (i32.const -4)))))
            (br_if $B2
              (i32.eqz
                (i32.and
                  (i32.load8_u
                    (local.get $p2))
                  (i32.const 1)))))
          (br_if $B1
            (i32.eqz
              (local.tee $p3
                (i32.and
                  (local.tee $p2
                    (i32.load
                      (local.get $p0)))
                  (i32.const -4)))))
          (br_if $B1
            (i32.eqz
              (local.tee $p2
                (select
                  (i32.const 0)
                  (local.get $p3)
                  (i32.and
                    (local.get $p2)
                    (i32.const 2))))))
          (br_if $B1
            (i32.and
              (i32.load8_u
                (local.get $p2))
              (i32.const 1)))
          (i32.store
            (local.get $l4)
            (i32.and
              (i32.load offset=8
                (local.get $p2))
              (i32.const -4)))
          (i32.store offset=8
            (local.get $p2)
            (i32.or
              (local.get $p0)
              (i32.const 1)))
          (return))
        (call $f129
          (local.get $p0))
        (br_if $B0
          (i32.eqz
            (i32.and
              (i32.load8_u
                (local.get $p0))
              (i32.const 2))))
        (i32.store
          (local.get $p2)
          (i32.or
            (i32.load
              (local.get $p2))
            (i32.const 2)))
        (return))
      (i32.store
        (local.get $l4)
        (i32.load
          (local.get $p1)))
      (i32.store
        (local.get $p1)
        (local.get $p0))))
  (func $f139 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p2)))
      (local.set $l3
        (local.get $p0))
      (loop $L1
        (i32.store8
          (local.get $l3)
          (i32.load8_u
            (local.get $p1)))
        (local.set $p1
          (i32.add
            (local.get $p1)
            (i32.const 1)))
        (local.set $l3
          (i32.add
            (local.get $l3)
            (i32.const 1)))
        (br_if $L1
          (local.tee $p2
            (i32.add
              (local.get $p2)
              (i32.const -1))))))
    (local.get $p0))
  (func $f140 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p2)))
      (local.set $l3
        (local.get $p0))
      (loop $L1
        (i32.store8
          (local.get $l3)
          (local.get $p1))
        (local.set $l3
          (i32.add
            (local.get $l3)
            (i32.const 1)))
        (br_if $L1
          (local.tee $p2
            (i32.add
              (local.get $p2)
              (i32.const -1))))))
    (local.get $p0))
  (table $T0 19 19 funcref)
  (memory $memory (export "memory") 17)
  (global $g0 (mut i32) (i32.const 1048576))
  (global $__data_end (export "__data_end") i32 (i32.const 1050304))
  (global $__heap_base (export "__heap_base") i32 (i32.const 1050304))
  (elem $e0 (i32.const 1) func $f33 $f37 $f45 $f46 $f47 $f48 $f49 $f50 $f64 $f51 $f130 $f131 $f132 $f133 $f137 $f126 $f134 $f135)
  (data $d0 (i32.const 1048576) "capacity overflowcalled `Option::unwrap()` on a `None` value:      {  {\0a\02\00\00\00\0c\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00,\0a\00\00\02\00\00\00\04\00\00\00\04\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00} }()LayoutErrorprivatecalled `Result::unwrap()` on an `Err` value\00\00\09\00\00\00\00\00\00\00\01\00\00\00\0a\00\00\00call data deserialization error: odd number of digits in hex representationcall data deserialization error: not a valid bytebig uint as_bytes exceed target sliceallocation errorpanic occurredbad H256 lengthREWAargument decode error (): wrong number of argumentsDCDTTransferinput too longaccept_fundsrecursive_send_fundsrecursive_send_funds_callbackno callback function with that name exists in contracttocounter\00\0b\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00\0d\00\00\00\0e\00\00\00\0f\00\00\00\04\00\00\00\04\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00")
  (data $d1 (i32.const 1049244) "uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu"))
