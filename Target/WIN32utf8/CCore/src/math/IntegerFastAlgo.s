# IntegerFastAlgo.s
#-----------------------------------------------------------------------------------------
#
#  Project: CCore 3.50
#
#  Tag: Target/WIN32utf8
#
#  License: Boost Software License - Version 1.0 - August 17th, 2003
#
#            see http://www.boost.org/LICENSE_1_0.txt or the local copy
#
#  Copyright (c) 2017 Sergey Strukov. All rights reserved.
#
#-----------------------------------------------------------------------------------------

        .text

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo12CountZeroMSBEj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo12CountZeroMSBEj:       #  unsigned CCore::Math::IntegerFastAlgo::CountZeroMSB(Unit a)

        pushl   %ebp
        movl    %esp, %ebp

        movl    8(%ebp), %eax       # a

        testl   %eax, %eax
        je      1f

        bsrl    %eax, %eax
        subl    $31, %eax
        negl    %eax

        popl    %ebp
        ret

1:
        movl    $32, %eax

        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo12CountZeroLSBEj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo12CountZeroLSBEj:       #  unsigned CCore::Math::IntegerFastAlgo::CountZeroLSB(Unit a)

        pushl   %ebp
        movl    %esp, %ebp

        movl    8(%ebp), %eax       # a

        testl   %eax, %eax
        je      1f

        bsfl    %eax, %eax

        popl    %ebp
        ret

1:
        movl    $32, %eax

        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo10DoubleUDivEjjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo10DoubleUDivEjjj:       #  Unit CCore::Math::IntegerFastAlgo::DoubleUDiv(Unit hi,Unit lo,Unit den)

        pushl   %ebp
        movl    %esp, %ebp

        movl     8(%ebp), %edx      # hi
        movl    12(%ebp), %eax      # lo

        divl    16(%ebp)            # den

        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo4UAddEPjPKjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo4UAddEPjPKjj:           #  Unit CCore::Math::IntegerFastAlgo::UAdd(Unit *restrict b,const Unit *a,ulen nab)

        pushl   %ebp
        movl    %esp, %ebp

        pushl   %ebx
        pushl   %edi

        movl     8(%ebp), %edi      # b
        movl    12(%ebp), %edx      # a
        subl        %edi, %edx
        movl    16(%ebp), %ecx      # nab

        shrl    $1, %ecx
        jnc     1f

        movl    (%edi), %eax

        addl    (%edi,%edx), %eax

        movl    %eax,  (%edi)

        leal    4(%edi), %edi
1:
        setc    %al
        shrl    $1, %ecx
        jnc     2f
        shrb    $1, %al

        movl     (%edi), %eax
        movl    4(%edi), %ebx

        adcl     (%edi,%edx), %eax
        adcl    4(%edi,%edx), %ebx

        movl    %eax,  (%edi)
        movl    %ebx, 4(%edi)

        leal    8(%edi), %edi
        setc    %al
2:
        shrl    $1, %ecx
        jnc     3f
        shrb    $1, %al

        movl     (%edi), %eax
        movl    4(%edi), %ebx

        adcl     (%edi,%edx), %eax
        adcl    4(%edi,%edx), %ebx

        movl    %eax,  (%edi)
        movl    %ebx, 4(%edi)

        movl     8(%edi), %eax
        movl    12(%edi), %ebx

        adcl     8(%edi,%edx), %eax
        adcl    12(%edi,%edx), %ebx

        movl    %eax,  8(%edi)
        movl    %ebx, 12(%edi)

        leal    16(%edi), %edi
        setc    %al
3:
        shrb    $1, %al
        jecxz   5f
4:
        movl     (%edi), %eax
        movl    4(%edi), %ebx

        adcl     (%edi,%edx), %eax
        adcl    4(%edi,%edx), %ebx

        movl    %eax,  (%edi)
        movl    %ebx, 4(%edi)

        movl     8(%edi), %eax
        movl    12(%edi), %ebx

        adcl     8(%edi,%edx), %eax
        adcl    12(%edi,%edx), %ebx

        movl    %eax,  8(%edi)
        movl    %ebx, 12(%edi)

        movl    16(%edi), %eax
        movl    20(%edi), %ebx

        adcl    16(%edi,%edx), %eax
        adcl    20(%edi,%edx), %ebx

        movl    %eax, 16(%edi)
        movl    %ebx, 20(%edi)

        movl    24(%edi), %eax
        movl    28(%edi), %ebx

        adcl    24(%edi,%edx), %eax
        adcl    28(%edi,%edx), %ebx

        movl    %eax, 24(%edi)
        movl    %ebx, 28(%edi)

        leal    32(%edi), %edi

        loop    4b
5:
        sbbl    %eax, %eax
        negl    %eax

        popl    %edi
        popl    %ebx

        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo4USubEPjPKjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo4USubEPjPKjj:           #  Unit CCore::Math::IntegerFastAlgo::USub(Unit *restrict b,const Unit *a,ulen nab)

        pushl   %ebp
        movl    %esp, %ebp

        pushl   %ebx
        pushl   %edi

        movl     8(%ebp), %edi      # b
        movl    12(%ebp), %edx      # a
        subl        %edi, %edx
        movl    16(%ebp), %ecx      # nab

        shrl    $1, %ecx
        jnc     1f

        movl    (%edi), %eax

        subl    (%edi,%edx), %eax

        movl    %eax,  (%edi)

        leal    4(%edi), %edi
1:
        setc    %al
        shrl    $1, %ecx
        jnc     2f
        shrb    $1, %al

        movl     (%edi), %eax
        movl    4(%edi), %ebx

        sbbl     (%edi,%edx), %eax
        sbbl    4(%edi,%edx), %ebx

        movl    %eax,  (%edi)
        movl    %ebx, 4(%edi)

        leal    8(%edi), %edi
        setc    %al
2:
        shrl    $1, %ecx
        jnc     3f
        shrb    $1, %al

        movl     (%edi), %eax
        movl    4(%edi), %ebx

        sbbl     (%edi,%edx), %eax
        sbbl    4(%edi,%edx), %ebx

        movl    %eax,  (%edi)
        movl    %ebx, 4(%edi)

        movl     8(%edi), %eax
        movl    12(%edi), %ebx

        sbbl     8(%edi,%edx), %eax
        sbbl    12(%edi,%edx), %ebx

        movl    %eax,  8(%edi)
        movl    %ebx, 12(%edi)

        leal    16(%edi), %edi
        setc    %al
3:
        shrb    $1, %al
        jecxz   5f
4:
        movl     (%edi), %eax
        movl    4(%edi), %ebx

        sbbl     (%edi,%edx), %eax
        sbbl    4(%edi,%edx), %ebx

        movl    %eax,  (%edi)
        movl    %ebx, 4(%edi)

        movl     8(%edi), %eax
        movl    12(%edi), %ebx

        sbbl     8(%edi,%edx), %eax
        sbbl    12(%edi,%edx), %ebx

        movl    %eax,  8(%edi)
        movl    %ebx, 12(%edi)

        movl    16(%edi), %eax
        movl    20(%edi), %ebx

        sbbl    16(%edi,%edx), %eax
        sbbl    20(%edi,%edx), %ebx

        movl    %eax, 16(%edi)
        movl    %ebx, 20(%edi)

        movl    24(%edi), %eax
        movl    28(%edi), %ebx

        sbbl    24(%edi,%edx), %eax
        sbbl    28(%edi,%edx), %ebx

        movl    %eax, 24(%edi)
        movl    %ebx, 28(%edi)

        leal    32(%edi), %edi

        loop    4b
5:
        sbbl    %eax, %eax
        negl    %eax

        popl    %edi
        popl    %ebx

        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo7URevSubEPjPKjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo7URevSubEPjPKjj:        #  Unit CCore::Math::IntegerFastAlgo::URevSub(Unit *restrict b,const Unit *a,ulen nab)

        pushl   %ebp
        movl    %esp, %ebp

        pushl   %ebx
        pushl   %edi

        movl     8(%ebp), %edi      # b
        movl    12(%ebp), %edx      # a
        subl        %edi, %edx
        movl    16(%ebp), %ecx      # nab

        shrl    $1, %ecx
        jnc     1f

        movl    (%edi,%edx), %eax

        subl    (%edi), %eax

        movl    %eax,  (%edi)

        leal    4(%edi), %edi
1:
        setc    %al
        shrl    $1, %ecx
        jnc     2f
        shrb    $1, %al

        movl     (%edi,%edx), %eax
        movl    4(%edi,%edx), %ebx

        sbbl     (%edi), %eax
        sbbl    4(%edi), %ebx

        movl    %eax,  (%edi)
        movl    %ebx, 4(%edi)

        leal    8(%edi), %edi
        setc    %al
2:
        shrl    $1, %ecx
        jnc     3f
        shrb    $1, %al

        movl     (%edi,%edx), %eax
        movl    4(%edi,%edx), %ebx

        sbbl     (%edi), %eax
        sbbl    4(%edi), %ebx

        movl    %eax,  (%edi)
        movl    %ebx, 4(%edi)

        movl     8(%edi,%edx), %eax
        movl    12(%edi,%edx), %ebx

        sbbl     8(%edi), %eax
        sbbl    12(%edi), %ebx

        movl    %eax,  8(%edi)
        movl    %ebx, 12(%edi)

        leal    16(%edi), %edi
        setc    %al
3:
        shrb    $1, %al
        jecxz   5f
4:
        movl     (%edi,%edx), %eax
        movl    4(%edi,%edx), %ebx

        sbbl     (%edi), %eax
        sbbl    4(%edi), %ebx

        movl    %eax,  (%edi)
        movl    %ebx, 4(%edi)

        movl     8(%edi,%edx), %eax
        movl    12(%edi,%edx), %ebx

        sbbl     8(%edi), %eax
        sbbl    12(%edi), %ebx

        movl    %eax,  8(%edi)
        movl    %ebx, 12(%edi)

        movl    16(%edi,%edx), %eax
        movl    20(%edi,%edx), %ebx

        sbbl    16(%edi), %eax
        sbbl    20(%edi), %ebx

        movl    %eax, 16(%edi)
        movl    %ebx, 20(%edi)

        movl    24(%edi,%edx), %eax
        movl    28(%edi,%edx), %ebx

        sbbl    24(%edi), %eax
        sbbl    28(%edi), %ebx

        movl    %eax, 24(%edi)
        movl    %ebx, 28(%edi)

        leal    32(%edi), %edi

        loop    4b
5:
        sbbl    %eax, %eax
        negl    %eax

        popl    %edi
        popl    %ebx

        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo7ULShiftEPjjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo7ULShiftEPjjj:          #  Unit CCore::Math::IntegerFastAlgo::ULShift(Unit *a,ulen na,unsigned shift)

        pushl   %ebp
        movl    %esp, %ebp

        movl    12(%ebp), %edx      # na

        testl   %edx, %edx
        je      6f

        pushl   %ebx
        pushl   %esi

        movl     8(%ebp), %ebx      # a
        movl    16(%ebp), %ecx      # shift

        xorl    %esi, %esi
        shrl    $1, %edx
        jnc     1f

        movl    (%ebx), %eax
        movl    %eax, %esi
        shll    %cl, %eax
        movl    %eax, (%ebx)

        leal    4(%ebx), %ebx
1:
        testl   %edx, %edx
        je      5f

        movd    %esi, %mm0
        psllq   $32, %mm0
        movd    %ecx, %mm6
        movl    $64, %eax
        subl    %ecx, %eax
        movd    %eax, %mm7

        shrl    $1, %edx
        jnc     2f

        movq    (%ebx), %mm1
        movq    %mm1, %mm2
        psllq   %mm6, %mm2
        psrlq   %mm7, %mm0
        por     %mm0, %mm2
        movq    %mm2, (%ebx)
        movq    %mm1, %mm0

        leal    8(%ebx), %ebx
2:
        testl   %edx, %edx
        je      4f
3:
        movq     (%ebx), %mm1
        movq    8(%ebx), %mm3
        movq    %mm1, %mm2
        psllq   %mm6, %mm2
        psrlq   %mm7, %mm0
        por     %mm0, %mm2
        movq    %mm2, (%ebx)

        movq    %mm3, %mm2
        psllq   %mm6, %mm2
        psrlq   %mm7, %mm1
        por     %mm1, %mm2
        movq    %mm2, 8(%ebx)
        movq    %mm3, %mm0

        leal    16(%ebx), %ebx

        subl    $1, %edx
        jne     3b
4:
        psrlq   $32, %mm0
        movd    %mm0, %esi
        emms
5:
        shld    %cl, %esi, %edx
        movl    %edx, %eax

        popl    %esi
        popl    %ebx

        popl    %ebp
        ret
6:
        xorl    %eax, %eax

        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo6LShiftEPjPKjjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo6LShiftEPjPKjjj:        #  Unit CCore::Math::IntegerFastAlgo::LShift(Unit *restrict b,const Unit *a,ulen nab,unsigned shift)

        pushl   %ebp
        movl    %esp, %ebp

        movl    16(%ebp), %edx      # nab

        testl   %edx, %edx
        je      6f

        pushl   %ebx
        pushl   %esi
        pushl   %edi

        movl     8(%ebp), %ebx      # b
        movl    12(%ebp), %edi      # a
        subl    %ebx, %edi
        movl    20(%ebp), %ecx      # shift

        xorl    %esi, %esi
        shrl    $1, %edx
        jnc     1f

        movl    (%ebx,%edi), %eax
        movl    %eax, %esi
        shll    %cl, %eax
        movl    %eax, (%ebx)

        leal    4(%ebx), %ebx
1:
        testl   %edx, %edx
        je      5f

        movd    %esi, %mm0
        psllq   $32, %mm0
        movd    %ecx, %mm6
        movl    $64, %eax
        subl    %ecx, %eax
        movd    %eax, %mm7

        shrl    $1, %edx
        jnc     2f

        movq    (%ebx,%edi), %mm1
        movq    %mm1, %mm2
        psllq   %mm6, %mm2
        psrlq   %mm7, %mm0
        por     %mm0, %mm2
        movq    %mm2, (%ebx)
        movq    %mm1, %mm0

        leal    8(%ebx), %ebx
2:
        testl   %edx, %edx
        je      4f
3:
        movq     (%ebx,%edi), %mm1
        movq    8(%ebx,%edi), %mm3
        movq    %mm1, %mm2
        psllq   %mm6, %mm2
        psrlq   %mm7, %mm0
        por     %mm0, %mm2
        movq    %mm2, (%ebx)

        movq    %mm3, %mm2
        psllq   %mm6, %mm2
        psrlq   %mm7, %mm1
        por     %mm1, %mm2
        movq    %mm2, 8(%ebx)
        movq    %mm3, %mm0

        leal    16(%ebx), %ebx

        subl    $1, %edx
        jne     3b
4:
        psrlq   $32, %mm0
        movd    %mm0, %esi
        emms
5:
        movl    %esi, %eax
        cdq
        shld    %cl, %eax, %edx
        movl    %edx, %eax

        popl    %edi
        popl    %esi
        popl    %ebx

        popl    %ebp
        ret
6:
        xorl    %eax, %eax

        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo8UShiftUpEPjjjj
        .global __ZN5CCore4Math15IntegerFastAlgo7ShiftUpEPjjjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo8UShiftUpEPjjjj:        #  Unit CCore::Math::IntegerFastAlgo::UShiftUp(Unit *a,ulen na,ulen delta,unsigned shift)

        pushl   %ebp
        movl    %esp, %ebp

        movl    12(%ebp), %edx      # na

        testl   %edx, %edx
        je     1f

        pushl   %ebx
        pushl   %esi
        pushl   %edi

        movl     8(%ebp), %ebx      # a
        movl    16(%ebp), %edi      # delta
        movl    20(%ebp), %ecx      # shift
        shll    $2, %edi

        leal    -4(%ebx,%edx,4), %ebx
        movl    (%ebx), %eax
        movl    %edx, %esi
        xorl    %edx, %edx
        shld    %cl, %eax, %edx
        movl    %edx, %eax
        movl    %esi, %edx

        jmp     ShiftUp
1:
        xorl    %eax, %eax

        popl    %ebp
        ret

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo7ShiftUpEPjjjj:         #  Unit CCore::Math::IntegerFastAlgo::ShiftUp(Unit *a,ulen na,ulen delta,unsigned shift)

        pushl   %ebp
        movl    %esp, %ebp

        movl    12(%ebp), %edx      # na

        testl   %edx, %edx
        jne     1f

        xorl    %eax, %eax

        popl    %ebp
        ret
1:
        pushl   %ebx
        pushl   %esi
        pushl   %edi

        movl     8(%ebp), %ebx      # a
        movl    16(%ebp), %edi      # delta
        movl    20(%ebp), %ecx      # shift
        shll    $2, %edi

        leal    -4(%ebx,%edx,4), %ebx
        movl    (%ebx), %eax
        movl    %edx, %esi
        cdq
        shld    %cl, %eax, %edx
        movl    %edx, %eax
        movl    %esi, %edx

ShiftUp:

        subl    $2, %edx
        jb      5f
        movq    -4(%ebx), %mm0
        movd    %ecx, %mm6
        movl    $64, %esi
        subl    %ecx, %esi
        movd    %esi, %mm7

        subl    $4, %edx
        jb      2f
1:
        movq    -20(%ebx), %mm2
        movq    -12(%ebx), %mm1

        movq    %mm1, %mm3
        psllq   %mm6, %mm0
        psrlq   %mm7, %mm1
        por     %mm1, %mm0
        movq    %mm0, -4(%ebx,%edi)

        movq    %mm2, %mm0
        psllq   %mm6, %mm3
        psrlq   %mm7, %mm2
        por     %mm2, %mm3
        movq    %mm3, -12(%ebx,%edi)

        leal    -16(%ebx), %ebx

        subl    $4, %edx
        jnb     1b
2:
        addl    $4, %edx
3:
        movq    %mm0, %mm1
        psllq   %mm6, %mm0

        testl   %edx, %edx
        je      4f

        psrlq   $32, %mm0
        movd    %mm0, (%ebx,%edi)

        movd    -8(%ebx), %mm0
        punpckldq %mm1, %mm0

        leal    -4(%ebx), %ebx
        decl    %edx

        jmp     3b
4:
        movq    %mm0, -4(%ebx,%edi)
        emms

        popl    %edi
        popl    %esi
        popl    %ebx

        popl    %ebp
        ret
5:
        movl    (%ebx), %esi
        shll    %cl, %esi
        movl    %esi, (%ebx,%edi)

        popl    %edi
        popl    %esi
        popl    %ebx

        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo7URShiftEPjjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo7URShiftEPjjj:          #  void CCore::Math::IntegerFastAlgo::URShift(Unit *a,ulen na,unsigned shift)

        pushl   %ebp
        movl    %esp, %ebp

        movl    12(%ebp), %edx      # na
        testl   %edx, %edx
        je      6f

        pushl   %ebx

        movl     8(%ebp), %ebx      # a
        movl    16(%ebp), %ecx      # shift

        subl    $2, %edx
        jb      5f

        movq    (%ebx), %mm0
        movd    %ecx, %mm6
        movl    $64, %eax
        subl    %ecx, %eax
        movd    %eax, %mm7

        subl    $4, %edx
        jb      2f
1:
        movq     8(%ebx), %mm1
        movq    16(%ebx), %mm2

        movq    %mm1, %mm3
        psrlq   %mm6, %mm0
        psllq   %mm7, %mm1
        por     %mm1, %mm0
        movq    %mm0, (%ebx)

        movq    %mm2, %mm0
        psrlq   %mm6, %mm3
        psllq   %mm7, %mm2
        por     %mm2, %mm3
        movq    %mm3, 8(%ebx)

        leal    16(%ebx), %ebx

        subl    $4, %edx
        jnb     1b
2:
        addl    $4, %edx
3:
        psrlq   %mm6, %mm0

        testl   %edx, %edx
        je      4f

        movd    %mm0, (%ebx)
        movq    4(%ebx), %mm0
        leal    4(%ebx), %ebx
        decl    %edx

        jmp     3b
4:
        movq    %mm0, (%ebx)
        emms

        popl    %ebx

        popl    %ebp
        ret
5:
        movl    (%ebx), %eax
        shrl    %cl, %eax
        movl    %eax, (%ebx)

        popl    %ebx
6:
        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo6RShiftEPjPKjjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo6RShiftEPjPKjjj:        #  void CCore::Math::IntegerFastAlgo::RShift(Unit *restrict b,const Unit *a,ulen nab,unsigned shift)

        pushl   %ebp
        movl    %esp, %ebp

        movl    16(%ebp), %edx      # nab

        testl   %edx, %edx
        je      6f

        pushl   %ebx
        pushl   %edi

        movl     8(%ebp), %edi      # b
        movl    12(%ebp), %ebx      # a
        subl    %ebx, %edi
        movl    20(%ebp), %ecx      # shift

        subl    $2, %edx
        jb      5f

        movq    (%ebx), %mm0
        movd    %ecx, %mm6
        movl    $64, %eax
        subl    %ecx, %eax
        movd    %eax, %mm7

        subl    $4, %edx
        jb      2f
1:
        movq     8(%ebx), %mm1
        movq    16(%ebx), %mm2

        movq    %mm1, %mm3
        psrlq   %mm6, %mm0
        psllq   %mm7, %mm1
        por     %mm1, %mm0
        movq    %mm0, (%ebx,%edi)

        movq    %mm2, %mm0
        psrlq   %mm6, %mm3
        psllq   %mm7, %mm2
        por     %mm2, %mm3
        movq    %mm3, 8(%ebx,%edi)

        leal    16(%ebx), %ebx

        subl    $4, %edx
        jnb     1b
2:
        addl    $4, %edx
3:
        testl   %edx, %edx
        je      4f

        psrlq   %mm6, %mm0
        movd    %mm0, (%ebx,%edi)
        movq    4(%ebx), %mm0
        leal    4(%ebx), %ebx
        decl    %edx

        jmp     3b
4:
        movq    %mm0, %mm1
        psrad   %mm6, %mm1
        psrlq   %mm6, %mm0
        psrlq   $32, %mm1
        movd    %mm0, (%ebx,%edi)
        movd    %mm1, 4(%ebx,%edi)
        emms

        popl    %edi
        popl    %ebx

        popl    %ebp
        ret
5:
        movl    (%ebx), %eax
        sarl    %cl, %eax
        movl    %eax, (%ebx,%edi)

        popl    %edi
        popl    %ebx
6:
        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo10UShiftDownEPjjjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo10UShiftDownEPjjjj:     #  void CCore::Math::IntegerFastAlgo::UShiftDown(Unit *a,ulen na,ulen delta,unsigned shift)

        pushl   %ebp
        movl    %esp, %ebp

        movl    12(%ebp), %edx      # na

        testl   %edx, %edx
        je      6f

        pushl   %ebx
        pushl   %edi

        movl     8(%ebp), %ebx      # a
        movl    16(%ebp), %edi      # delta
        movl    20(%ebp), %ecx      # shift
        shll    $2, %edi

        subl    $2, %edx
        jb      5f

        movq    (%ebx,%edi), %mm0
        movd    %ecx, %mm6
        movl    $64, %eax
        subl    %ecx, %eax
        movd    %eax, %mm7

        subl    $4, %edx
        jb      2f
1:
        movq     8(%ebx,%edi), %mm1
        movq    16(%ebx,%edi), %mm2

        movq    %mm1, %mm3
        psrlq   %mm6, %mm0
        psllq   %mm7, %mm1
        por     %mm1, %mm0
        movq    %mm0, (%ebx)

        movq    %mm2, %mm0
        psrlq   %mm6, %mm3
        psllq   %mm7, %mm2
        por     %mm2, %mm3
        movq    %mm3, 8(%ebx)

        leal    16(%ebx), %ebx

        subl    $4, %edx
        jnb     1b
2:
        addl    $4, %edx
3:
        psrlq   %mm6, %mm0

        testl   %edx, %edx
        je      4f

        movd    %mm0, (%ebx)
        movq    4(%ebx,%edi), %mm0
        leal    4(%ebx), %ebx
        decl    %edx

        jmp     3b
4:
        movq    %mm0, (%ebx)
        emms

        popl    %edi
        popl    %ebx

        popl    %ebp
        ret
5:
        movl    (%ebx,%edi), %eax
        shrl    %cl, %eax
        movl    %eax, (%ebx)

        popl    %edi
        popl    %ebx

        popl    %ebp
        ret
6:
        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo9ShiftDownEPjjjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo9ShiftDownEPjjjj:       #  void CCore::Math::IntegerFastAlgo::ShiftDown(Unit *a,ulen na,ulen delta,unsigned shift)

        pushl   %ebp
        movl    %esp, %ebp

        movl    12(%ebp), %edx      # na

        testl   %edx, %edx
        je      6f

        pushl   %ebx
        pushl   %edi

        movl     8(%ebp), %ebx      # a
        movl    16(%ebp), %edi      # delta
        movl    20(%ebp), %ecx      # shift
        shll    $2, %edi

        subl    $2, %edx
        jb      5f

        movq    (%ebx,%edi), %mm0
        movd    %ecx, %mm6
        movl    $64, %eax
        subl    %ecx, %eax
        movd    %eax, %mm7

        subl    $4, %edx
        jb      2f
1:
        movq     8(%ebx,%edi), %mm1
        movq    16(%ebx,%edi), %mm2

        movq    %mm1, %mm3
        psrlq   %mm6, %mm0
        psllq   %mm7, %mm1
        por     %mm1, %mm0
        movq    %mm0, (%ebx)

        movq    %mm2, %mm0
        psrlq   %mm6, %mm3
        psllq   %mm7, %mm2
        por     %mm2, %mm3
        movq    %mm3, 8(%ebx)

        leal    16(%ebx), %ebx

        subl    $4, %edx
        jnb     1b
2:
        addl    $4, %edx
3:
        testl   %edx, %edx
        je      4f

        psrlq   %mm6, %mm0
        movd    %mm0, (%ebx)
        movq    4(%ebx,%edi), %mm0
        leal    4(%ebx), %ebx
        decl    %edx

        jmp     3b
4:
        movq    %mm0, %mm1
        psrad   %mm6, %mm1
        psrlq   %mm6, %mm0
        psrlq   $32, %mm1
        movd    %mm0, (%ebx)
        movd    %mm1, 4(%ebx)
        emms

        popl    %edi
        popl    %ebx

        popl    %ebp
        ret
5:
        movl    (%ebx,%edi), %eax
        sarl    %cl, %eax
        movl    %eax, (%ebx)

        popl    %edi
        popl    %ebx

        popl    %ebp
        ret
6:
        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo4NullEPjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo4NullEPjj:              #  void CCore::Math::IntegerFastAlgo::Null(Unit *a,ulen na)

        pushl   %ebp
        movl    %esp, %ebp

        xorl    %eax, %eax
        movl     8(%ebp), %edx      # a
        movl    12(%ebp), %ecx      # na

        shrl    $1, %ecx
        jnc     1f

        movl    %eax, (%edx)

        leal    4(%edx), %edx
1:
        shrl    $1, %ecx
        jnc     2f

        movl    %eax,  (%edx)
        movl    %eax, 4(%edx)

        leal    8(%edx), %edx
2:
        shrl    $1, %ecx
        jnc     3f

        movl    %eax,   (%edx)
        movl    %eax,  4(%edx)
        movl    %eax,  8(%edx)
        movl    %eax, 12(%edx)

        leal    16(%edx), %edx
3:
        jecxz   5f
4:
        movl    %eax,   (%edx)
        movl    %eax,  4(%edx)
        movl    %eax,  8(%edx)
        movl    %eax, 12(%edx)
        movl    %eax, 16(%edx)
        movl    %eax, 20(%edx)
        movl    %eax, 24(%edx)
        movl    %eax, 28(%edx)

        leal    32(%edx), %edx

        loop    4b
5:
        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo4CopyEPjPKjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo4CopyEPjPKjj:           # void CCore::Math::IntegerFastAlgo::Copy(Unit *restrict b,const Unit *a,ulen nab)

        pushl   %ebp
        movl    %esp, %ebp

        movl    16(%ebp), %ecx      # nab
        testl   %ecx, %ecx
        je      5f

        pushl   %ebx

        movl     8(%ebp), %edx      # b
        movl    12(%ebp), %eax      # a
        subl    %eax, %edx

        shrl    $1, %ecx
        jnc     1f

        movl    (%eax), %ebx
        movl    %ebx, (%eax,%edx)

        leal    4(%eax), %eax
1:
        shrl    $1, %ecx
        jnc     2f

        movl    (%eax), %ebx
        movl    %ebx, (%eax,%edx)

        movl    4(%eax), %ebx
        movl    %ebx, 4(%eax,%edx)

        leal    8(%eax), %eax
2:
        jecxz   4f
3:
        movups  (%eax), %xmm0
        movups  %xmm0, (%eax,%edx)

        leal    16(%eax), %eax

        loop    3b
4:
        popl    %ebx
5:
        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo6MoveUpEPjjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo6MoveUpEPjjj:           # void CCore::Math::IntegerFastAlgo::MoveUp(Unit *a,ulen na,ulen delta)

        pushl   %ebp
        movl    %esp, %ebp

        movl    12(%ebp), %edx      # na
        testl   %edx, %edx
        je      5f

        pushl   %ebx

        movl     8(%ebp), %ebx      # a
        movl    16(%ebp), %ecx      # delta
        shll    $2, %ecx

        leal    -4(%ebx,%edx,4), %ebx

        subl    $4, %edx
        jb      2f
1:
        movups  -12(%ebx), %xmm0
        movups  %xmm0, -12(%ebx,%ecx)

        leal    -16(%ebx), %ebx

        subl    $4, %edx
        jnb     1b
2:
        addl    $4, %edx
        je      4f
3:
        movl    (%ebx), %eax
        movl    %eax, (%ebx,%ecx)

        leal    -4(%ebx), %ebx

        decl    %edx
        jne     3b
4:
        popl    %ebx
5:
        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo8MoveDownEPjjj

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo8MoveDownEPjjj:         # void CCore::Math::IntegerFastAlgo::MoveDown(Unit *a,ulen na,ulen delta)

        pushl   %ebp
        movl    %esp, %ebp

        movl    12(%ebp), %edx      # na
        testl   %edx, %edx
        je      5f

        pushl   %ebx

        movl     8(%ebp), %ebx      # a
        movl    16(%ebp), %ecx      # delta
        shll    $2, %ecx

        subl    $4, %edx
        jb      2f
1:
        movups  (%ebx,%ecx), %xmm0
        movups  %xmm0, (%ebx)

        leal    16(%ebx), %ebx

        subl    $4, %edx
        jnb     1b
2:
        addl    $4, %edx
        je      4f
3:
        movl    (%ebx,%ecx), %eax
        movl    %eax, (%ebx)

        leal    4(%ebx), %ebx

        decl    %edx
        jne     3b
4:
        popl    %ebx
5:
        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

        .global __ZN5CCore4Math15IntegerFastAlgo7RawUMulEPjPKjS4_j

        .p2align 4,,15

__ZN5CCore4Math15IntegerFastAlgo7RawUMulEPjPKjS4_j:     # void CCore::Math::IntegerFastAlgo::RawUMul(Unit *restrict c,const Unit *a,const Unit *b,ulen nab)

        pushl   %ebp
        movl    %esp, %ebp

        movl    20(%ebp), %ecx  # nab
        testl   %ecx, %ecx
        jne     1f

        popl    %ebp
        ret
1:
        pushl   %ebx

        movl     8(%ebp), %edx  # c
        movl    12(%ebp), %eax  # a
        movl    16(%ebp), %ebx  # b

        cmpl    $2, %ecx
        jnc     1f

        movd    (%eax), %mm0
        movd    (%ebx), %mm1
        pmuludq %mm0, %mm1
        movq    %mm1, (%edx)

        emms
        popl    %ebx
        popl    %ebp
        ret
1:
        cmpl    $4, %ecx
        jnc     2f

        cmpl    $2, %ecx
        jne     1f

        movq    (%eax), %xmm0
        shufps  $0xD8, %xmm0, %xmm0
        movq    (%ebx), %xmm1
        shufps  $0xD8, %xmm1, %xmm1
        movaps  %xmm1, %xmm2
        shufpd  $1, %xmm2, %xmm2
        pmuludq %xmm0, %xmm1
        pmuludq %xmm0, %xmm2
        movaps  %xmm1, %xmm3
        movaps  %xmm2, %xmm4
        movaps  %xmm2, %xmm5
        shufps  $0xB4, %xmm3, %xmm3
        shufps  $0x40, %xmm4, %xmm4
        shufps  $0xC8, %xmm5, %xmm5
        psrlq   $32, %xmm3
        psrlq   $32, %xmm4
        psrlq   $32, %xmm5
        paddq   %xmm5, %xmm3
        paddq   %xmm4, %xmm3
        shufps  $0xD8, %xmm3, %xmm3
        shufps  $0x6C, %xmm1, %xmm1
        shufpd  $0, %xmm3, %xmm1
        shufps  $0x78, %xmm1, %xmm1
        movq    %xmm1, (%edx)
        paddq   %xmm3, %xmm1
        shufpd  $3, %xmm1, %xmm1
        movq    %xmm1, 8(%edx)

        popl    %ebx
        popl    %ebp
        ret
1: # 3


#        emms
#        popl    %ebx
#        popl    %ebp
#        ret
2:
        pushl   %esi
        pushl   %edi
        subl    %eax, %edx

        movd    (%ebx), %mm0
        movl    %ecx, %esi
        movl    %ecx, %edi
        pxor    %mm2, %mm2
2:
        movd    (%eax), %mm1
        pmuludq %mm0, %mm1
        paddq   %mm2, %mm1
        movd    %mm1, (%eax,%edx)
        psrlq   $32, %mm1
        movq    %mm1, %mm2
        leal    4(%eax), %eax

        loop    2b

        movd    %mm2, (%eax,%edx)
3:
        dec     %esi
        jz      5f

        movl    12(%ebp), %eax
        leal    4(%edx), %edx
        leal    4(%ebx), %ebx
        movl    %edi, %ecx

        movd    (%ebx), %mm0
        pxor    %mm2, %mm2
        pxor    %mm5, %mm5
4:
        movd    (%eax), %mm1
        movd    (%eax,%edx), %mm3
        pmuludq %mm0, %mm1
        paddq   %mm2, %mm1
        movq    %mm1, %mm4
        psrlq   $32, %mm1
        movq    %mm1, %mm2

        psllq   $32, %mm4
        psrlq   $32, %mm4

        paddq   %mm4, %mm3
        paddq   %mm5, %mm3
        movd    %mm3, (%eax,%edx)
        psrlq   $32, %mm3
        movq    %mm3, %mm5

        leal    4(%eax), %eax

        loop 4b

        paddq   %mm5, %mm2
        movd    %mm2, (%eax,%edx)

        jmp     3b
5:
        emms
        popl    %edi
        popl    %esi
        popl    %ebx

        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------

#        .global SXXX

        .p2align 4,,15

SXXX:    #

        pushl   %ebp
        movl    %esp, %ebp

        popl    %ebp
        ret

#-----------------------------------------------------------------------------------------




