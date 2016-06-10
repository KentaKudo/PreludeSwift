//
//  Monad.swift
//  PreludeSwift
//
//  Created by Kenta Kudo on 2016/06/04.
//  Copyright © 2016年 KentaKudo. All rights reserved.
//

protocol Monad {
    associatedtype Element
}

func _return<m: Monad>(x: m.Element) -> m? {
    return nil
}
