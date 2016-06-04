//
//  Show.swift
//  PreludeSwift
//
//  Created by Kenta Kudo on 2016/06/04.
//  Copyright © 2016年 KentaKudo. All rights reserved.
//

protocol Show {}

func show<a: Show>(x: a) -> String {
    return ""
}
