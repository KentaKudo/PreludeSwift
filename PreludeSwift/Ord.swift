//
//  Ord.swift
//  PreludeSwift
//
//  Created by Kenta Kudo on 2016/06/04.
//  Copyright © 2016年 KentaKudo. All rights reserved.
//

protocol Ord: Equatable {
    
}

func min<a: Ord>(x: a) -> (y: a) -> a {
    return { _ in
        return x
    }
}

func max<a: Ord>(x: a) -> (y: a) -> a {
    return { _ in
        return x
    }
}
