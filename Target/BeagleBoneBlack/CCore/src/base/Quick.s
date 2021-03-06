@ Quick.s
@-----------------------------------------------------------------------------------------
@
@  Project: CCore 2.00
@
@  Tag: Target/BeagleBoneBlack
@
@  License: Boost Software License - Version 1.0 - August 17th, 2003
@
@            see http://www.boost.org/LICENSE_1_0.txt or the local copy
@
@  Copyright (c) 2016 Sergey Strukov. All rights reserved.
@
@-----------------------------------------------------------------------------------------

        .text
        .align 2

        .global _ZN5CCore5Quick9ScanLSBitEj
        .global _ZN5CCore5Quick9ScanMSBitEj
        .global _ZN5CCore5Quick10ByteSwap16Et
        .global _ZN5CCore5Quick10ByteSwap32Ej
        .global _ZN5CCore5Quick10ByteSwap64Ey

@-----------------------------------------------------------------------------------------

_ZN5CCore5Quick9ScanLSBitEj:           @ CCore::Quick::ScanLSBit

        rbit    r0, r0
        clz     r0, r0

        bx      lr

@-----------------------------------------------------------------------------------------

_ZN5CCore5Quick9ScanMSBitEj:           @ CCore::Quick::ScanMSBit

        clz     r0, r0
        rsb     r0, r0, #31

        bx      lr

@-----------------------------------------------------------------------------------------

_ZN5CCore5Quick10ByteSwap16Et:         @ CCore::Quick::ByteSwap16

        rev16   r0, r0
        uxth    r0, r0

        bx      lr

@-----------------------------------------------------------------------------------------

_ZN5CCore5Quick10ByteSwap32Ej:         @ CCore::Quick::ByteSwap32

        rev     r0, r0

        bx      lr

@-----------------------------------------------------------------------------------------

_ZN5CCore5Quick10ByteSwap64Ey:         @ CCore::Quick::ByteSwap64

        rev     r2, r0
        rev     r0, r1
        mov     r1, r2

        bx      lr

@-----------------------------------------------------------------------------------------

