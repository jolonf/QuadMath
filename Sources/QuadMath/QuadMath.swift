//
//  QuadMath.swift
//  
//
//  Created by Jolon Faichney on 28/8/2022.
//

import Foundation

import CQuadMath

// Conversions

public func QFloat(_ n: Int32) -> QFloat {
    return to_qfloati(n)
}

public func QFloat(_ n: Int64) -> QFloat {
    return to_qfloatl(n)
}

public func QFloat(_ n: Float) -> QFloat {
    return to_qfloatf(n)
}

public func QFloat(_ n: Double) -> QFloat {
    return to_qfloatd(n)
}

public func QFloat(_ s: String) -> QFloat {
    return strtoqfloat(s)
}

public func Int32(_ q: QFloat) -> Int32 {
    return to_int(q)
}

public func Float(_ q: QFloat) -> Float {
    return to_float(q)
}

public func Double(_ q: QFloat) -> Double {
    return to_double(q)
}


// Arithmetic

public func +(a: QFloat, b: QFloat) -> QFloat {
    return addqf(a, b)
}

public func -(a: QFloat, b: QFloat) -> QFloat {
    return subqf(a, b)
}

public func *(a: QFloat, b: QFloat) -> QFloat {
    return mulqf(a, b)
}

public func /(a: QFloat, b: QFloat) -> QFloat {
    return divqf(a, b)
}

public prefix func -(q: QFloat) -> QFloat {
    return negqf(q)
}


// Comparisons

public func <(a: QFloat, b: QFloat) -> Bool {
    return ltqf(a, b) != 0
}

public func >(a: QFloat, b: QFloat) -> Bool {
    return gtqf(a, b) != 0
}


// libquadmath functions
// These simply pass through and saves having to import CQuadMath as well,
// and use slightly simpler function names.

public func acos(q: QFloat) -> QFloat {
    return acosqf(q)
}

public func acosh(q: QFloat) -> QFloat {
    return acoshqf(q)
}

public func asin(q: QFloat) -> QFloat {
    return asinqf(q)
}

public func asinh(q: QFloat) -> QFloat {
    return asinhqf(q)
}

public func atan(q: QFloat) -> QFloat {
    return atanqf(q)
}

public func atanh(q: QFloat) -> QFloat {
    return atanhqf(q)
}

public func atan2(a: QFloat, b: QFloat) -> QFloat {
    return atan2qf(a, b)
}

public func cbrt(q: QFloat) -> QFloat {
    return cbrtqf(q)
}

public func ceil(q: QFloat) -> QFloat {
    return ceilqf(q)
}

public func copysign(a: QFloat, b: QFloat) -> QFloat {
    return copysignqf(a, b)
}

public func cosh(q: QFloat) -> QFloat {
    return coshqf(q)
}

public func cos(q: QFloat) -> QFloat {
    return cosqf(q)
}

public func erf(q: QFloat) -> QFloat {
    return erfqf(q)
}

public func erfc(q: QFloat) -> QFloat {
    return erfcqf(q)
}

public func exp2(q: QFloat) -> QFloat {
    return exp2qf(q)
}

public func exp(q: QFloat) -> QFloat {
    return expqf(q)
}

public func expm1(q: QFloat) -> QFloat {
    return expm1qf(q)
}

public func abs(q: QFloat) -> QFloat {
    return fabsqf(q)
}

public func dim(a: QFloat, b: QFloat) -> QFloat {
    return fdimqf(a, b)
}

public func finite(q: QFloat) -> Int32 {
    return finiteqf(q)
}

public func floor(q: QFloat) -> QFloat {
    return floorqf(q)
}

public func ma(a: QFloat, b: QFloat, c: QFloat) -> QFloat {
    return fmaqf(a, b, c)
}

public func max(a: QFloat, b: QFloat) -> QFloat {
    return fmaxqf(a, b)
}

public func min(a: QFloat, b: QFloat) -> QFloat {
    return fminqf(a, b)
}

public func mod(a: QFloat, b: QFloat) -> QFloat {
    return fmodqf(a, b)
}

public func hypot(a: QFloat, b: QFloat) -> QFloat {
    return hypotqf(a, b)
}

public func isinf(q: QFloat) -> Int32 {
    return isinfqf(q)
}

public func ilogb(q: QFloat) -> Int32 {
    return ilogbqf(q)
}

public func isnan(q: QFloat) -> Int32 {
    return isnanqf(q)
}

public func issignaling(q: QFloat) -> Int32 {
    return issignalingqf(q)
}

public func j0(q: QFloat) -> QFloat {
    return j0qf(q)
}

public func j1(q: QFloat) -> QFloat {
    return j1qf(q)
}

public func lgamma(q: QFloat) -> QFloat {
    return lgammaqf(q)
}

public func llrint(q: QFloat) -> Int64 {
    return llrintqf(q)
}

public func llround(q: QFloat) -> Int64 {
    return llroundqf(q)
}

public func logb(q: QFloat) -> QFloat {
    return logbqf(q)
}

public func log(q: QFloat) -> QFloat {
    return logqf(q)
}

public func log10(q: QFloat) -> QFloat {
    return log10qf(q)
}

public func log2(q: QFloat) -> QFloat {
    return log2qf(q)
}

public func log1p(q: QFloat) -> QFloat {
    return log1pqf(q)
}

public func nearbyint(q: QFloat) -> QFloat {
    return nearbyintqf(q)
}

public func nextafter(a: QFloat, b: QFloat) -> QFloat {
    return nextafterqf(a, b)
}

public func pow(a: QFloat, b: QFloat) -> QFloat {
    return powqf(a, b)
}

public func remainder(a: QFloat, b: QFloat) -> QFloat {
    return  remainderqf(a, b)
}

public func rint(q: QFloat) -> QFloat {
    return rintqf(q)
}

public func round(q: QFloat) -> QFloat {
    return roundqf(q)
}

public func signbit(q: QFloat) -> Int32 {
    return signbitqf(q)
}

public func sinh(q: QFloat) -> QFloat {
    return sinhqf(q)
}

public func sin(q: QFloat) -> QFloat {
    return sinqf(q)
}

public func tan(q: QFloat) -> QFloat {
    return tanqf(q)
}

public func tanh(q: QFloat) -> QFloat {
    return tanhqf(q)
}

public func tgamma(q: QFloat) -> QFloat {
    return tgammaqf(q)
}

public func trunc(q: QFloat) -> QFloat {
    return truncqf(q)
}

public func y0(q: QFloat) -> QFloat {
    return y0qf(q)
}

public func y1(q: QFloat) -> QFloat {
    return y1qf(q)
}

// String conversions


