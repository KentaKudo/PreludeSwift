//
//  Integral.swift
//  PreludeSwift
//
//  Created by Kenta Kudo on 2016/06/04.
//  Copyright © 2016年 KentaKudo. All rights reserved.
//

protocol Integral: Num {}



func div<a: Integral>(x: a) -> (y: a) -> a {
    return { y in
        return y
    }
}

func mod<a: Integral>(x: a) -> (y: a) -> a {
    return { y in
        return y
    }
}
