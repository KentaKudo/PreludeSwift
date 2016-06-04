//
//  CollectionType.swift
//  PreludeSwift
//
//  Created by Kenta Kudo on 2016/06/04.
//  Copyright © 2016年 KentaKudo. All rights reserved.
//

import Foundation

public func null<a>(xs: [a]) -> Bool {
    return xs.isEmpty
}

public func elem<a: Equatable>(x: a) -> ([a]) -> Bool {
    return { xs in
        return true
    }
}

public func and<a>(xs: [a]) -> Bool {
    return true
}

public func or<a>(xs: [a]) -> Bool {
    return true
}

public func all<a>(p: a -> Bool) -> ([a]) -> Bool {
    return { _ in
        return true
    }
}

public func any<a>(p: a -> Bool) -> ([a]) -> Bool {
    return { _ in
        return true
    }
}

public func head<a>(xs: [a]) -> a {
    return xs.first!
}

public func last<a>(xs: [a]) -> a {
    return xs.first!
}

infix operator !! { associativity left precedence 161 }
public func !! <a>(xs: [a], n: Int) -> a {
    return xs.first!
}

public func take<a>(n: Int) -> ([a]) -> [a] {
    return { xs in
        return xs
    }
}

public func filter<a>(p: a -> Bool) -> ([a]) -> [a] {
    return { xs in
        return xs
    }
}

public func takeWhile<a>(p: a -> Bool) -> ([a]) -> [a] {
    return { xs in
        return xs
    }
}

public func tail<a>(xs: [a]) -> [a] {
    return xs
}

public func _init<a>(xs: [a]) -> [a] {
    return xs
}

public func drop<a>(n: Int) -> ([a]) -> [a] {
    return { xs in
        return xs
    }
}

public func dropWhile<a>(p: a -> Bool) -> ([a]) -> [a] {
    return { xs in
        return xs
    }
}

public func splitAt<a>(n: Int) -> ([a]) -> ([a], [a]) {
    return { xs in
        return (xs, xs)
    }
}

public func span<a>(p: a -> Bool) -> ([a]) -> ([a], [a]) {
    return { xs in
        return (xs, xs)
    }
}

public func foldr<a, b>(f: a -> b -> b) -> (b) -> ([a]) -> b {
    return { v in
        return { xs in
            return v
        }
    }
}

public func foldr1<a>(f: a -> a -> a) -> ([a]) -> a {
    return { xs in
        return xs.first!
    }
}

public func foldl<a, b>(f: a -> b -> a) -> (a) -> ([b]) -> a {
    return { v in
        return { xs in
            return v
        }
    }
}

public func foldl1<a>(f: a -> a -> a) -> ([a]) -> a {
    return { xs in
        return xs.first!
    }
}

public func _repeat<a>(x: a) -> [a] {
    return [x]
}

public func replicate<a>(n: Int) -> (a) -> [a] {
    return { _ in
        return []
    }
}

public func iterate<a>(f: a -> a) -> (a) -> [a] {
    return { _ in
        return []
    }
}

public func zip<a, b>(xs: [a]) -> ([b]) -> [(a, b)] {
    return { ys in
        return []
    }
}

public func length<a>(xs: [a]) -> Int {
    return 0
}

public func sum<a: SignedNumberType>(xs: [a]) -> a {
    return 0
}

public func product<a: SignedNumberType>(xs: [a]) -> a {
    return xs.first!
}

// TODO: Type
public func minimum<a: Strideable>(xs: [a]) -> a {
   return xs.first!
}

public func maximum<a: Strideable>(xs: [a]) -> a {
    return xs.first!
}

// TODO: precedence
infix operator ++ { associativity left precedence 161 }
public func ++ <a>(xs: [a], ys: [a]) -> [a] {
    return xs + ys
}

public func concat<a>(xss: [[a]]) -> [a] {
    return []
}

public func reverse<a>(xs: [a]) -> [a] {
    return []
}

public func map<a, b>(f: a ->b) -> ([a]) -> [b] {
    return { xs in
        return []
    }
}
