//
//  cquadmath.c
//  
//
//  Created by Jolon Faichney on 8/8/2022.
//
// Note this file is only here because Swift doesn't permit targets without source code

#include "CQuadMath.h"
#include <stdio.h>

void test() {
    
    printf("clang xcode test\n");

    QFloat a = to_qfloatf(1.0);
    QFloat b = to_qfloatf(3.0);
    QFloat c = divqf(a, b);

    char s[255];

    quadmath_snprintf(s, 255, "%.60Qe", c);

    printf("q = %s\n", s);
}
