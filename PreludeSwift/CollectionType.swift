//
//  CollectionType.swift
//  PreludeSwift
//
//  Created by Kenta Kudo on 2016/06/04.
//  Copyright © 2016年 KentaKudo. All rights reserved.
//

import Foundation

func null<T: CollectionType>(xs: T) -> Bool {
    return xs.isEmpty
}

func elem<T: CollectionType where T.Generator.Element: Equatable>(x: T.Generator.Element) -> (xs: T) -> Bool {
    return { _ in
        return true
    }
}

func and<T: CollectionType where T.Generator.Element == Bool>(xs: T) -> Bool {
    return true
}

func or<T: CollectionType where T.Generator.Element == Bool>(xs: T) -> Bool {
    return true
}

func all<T: CollectionType>(p: T.Generator.Element -> Bool) -> (T) -> Bool {
    return { _ in
        return true
    }
}

func any<T: CollectionType>(p: T.Generator.Element) -> (T) -> Bool {
    return { _ in
        return true
    }
}

func head<T: CollectionType>(xs: T) -> T.Generator.Element {
    return xs.first!
}

func last<T: CollectionType>(xs: T) -> T.Generator.Element {
    return xs.first!
}

/*
infix operator !! { associativity left precedence 161 }
func !! <T: Array>(left: T, right: Int) -> T.Element {
    
}

 */

func take<T: CollectionType>(n: Int) -> (xs: T) -> T {
    return { xs in
        return xs
    }
}

func filter<T: CollectionType>(p: T.Generator.Element -> Bool) -> (xs: T) -> T {
    return { xs in
        return xs
    }
}
