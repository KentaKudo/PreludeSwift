//
//  Num.swift
//  PreludeSwift
//
//  Created by Kenta Kudo on 2016/06/04.
//  Copyright © 2016年 KentaKudo. All rights reserved.
//

protocol Num: Eq, Show {}



func negate<a: Num>(x: a) -> a {
    return x
}

func abs<a: Num>(x: a) -> a {
    return x
}

func signum<a: Num>(x: a) -> a {
    return x
}
