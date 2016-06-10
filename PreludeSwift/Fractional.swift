//
//  Fractional.swift
//  PreludeSwift
//
//  Created by Kenta Kudo on 2016/06/04.
//  Copyright © 2016年 KentaKudo. All rights reserved.
//

protocol Fractional: Num {}


func recip<a: Fractional>(x: a) -> a {
    return x
}
