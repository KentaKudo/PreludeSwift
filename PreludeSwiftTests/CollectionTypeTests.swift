//
//  CollectionTypeTests.swift
//  PreludeSwiftTests
//
//  Created by Kenta Kudo on 2016/06/04.
//  Copyright © 2016年 KentaKudo. All rights reserved.
//

import XCTest
@testable import PreludeSwift

class CollectionTypeTests: XCTestCase {
    
    let testArray  = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    let emptyArray = [Int]()
    let evenArray  = [0, 2, 4, 6, 8]
    let halfEvenArray = [0, 2, 4, 1, 3, 5]
    
    let trueArray  = [true, true, true, true]
    let falseArray = [false, false, false, false]
    let mixArray   = [true, false, true, false]
    
    let isEven: Int -> Bool = { $0 % 2 == 0 }
    let isOdd: Int -> Bool = { $0 % 2 == 1 }
    
    let intToString: Int -> String -> String = { x in
        return { str in
            return str + "test"
        }
    }
    
    func testNull() {
        
        XCTAssertFalse(null(testArray))
        XCTAssertTrue(null(emptyArray))
    }
    
    func testElem() {
        
        XCTAssertTrue(elem(5)(testArray))
        XCTAssertFalse(elem(10)(testArray))
    }
    
    func testAnd() {
        
        XCTAssertTrue(and(trueArray))
        XCTAssertFalse(and(mixArray))
    }
    
    func testOr() {
        
        XCTAssertFalse(or(falseArray))
        XCTAssertTrue(or(mixArray))
    }
    
    func testAll() {
        
        XCTAssertFalse(all(isEven)(testArray))
        XCTAssertTrue(all(isEven)(evenArray))
    }
    
    func testAny() {
        
        XCTAssertTrue(any(isOdd)(testArray))
        XCTAssertFalse(any(isOdd)(evenArray))
    }
    
    func testHead() {
        
        XCTAssertEqual(head(testArray), 0)
        
        // there is no XCTAssertThrows function in swift...
        // XCTAssertThrows(head(emptyArray))
    }
    
    func testLast() {
        
        XCTAssertEqual(last(testArray), 9)
        
        // there is no XCTAssertThrows function in swift...
        // XCTAssertThrows(last(emptyArray))
    }
    
    func testExclamation() {
        
        XCTAssertEqual(testArray !! 0, testArray)
        XCTAssertEqual(testArray !! 3, 2)
        
        // there is no XCTAssertThrows function in swift...
        // XCTAssertThrows(emptyArray !! 5)
    }
    
    func testTake() {
        
        XCTAssertEqual(take(0)(testArray), [])
        XCTAssertEqual(take(5)(emptyArray), [])
        XCTAssertEqual(take(3)(testArray), [0, 1, 2])
    }
    
    func testFilter() {
        
        XCTAssertEqual(filter(isEven)(emptyArray), [])
        XCTAssertEqual(filter(isEven)(testArray), [0, 2, 4, 6, 8])
    }
    
    func testTakeWhile() {
        
        XCTAssertEqual(takeWhile(isEven)(emptyArray), [])
        XCTAssertEqual(takeWhile(isEven)(halfEvenArray), [0, 2, 4])
    }
    
    func testTail() {
        
        // there is no XCTAssertThrows function in swift...
        // XCTAssertThrows(tail(emptyArray))
        XCTAssertEqual(tail(testArray), [1, 2, 3, 4, 5, 6, 7, 8, 9])
    }
    
    func testInit() {
        
        // there is no XCTAssertThrows function in swift...
        // XCTAssertThrows(_init(emptyArray))
        XCTAssertEqual(_init(testArray), [0, 1, 2, 3, 4, 5, 6, 7, 8])
    }
    
    func testDrop() {
        
        XCTAssertEqual(drop(0)(testArray), testArray)
        XCTAssertEqual(drop(5)(emptyArray), [])
        XCTAssertEqual(drop(5)(testArray), [5, 6, 7, 8, 9])
    }
    
    func testDropWhile() {
        
        XCTAssertEqual(dropWhile(isEven)(emptyArray), [])
        XCTAssertEqual(dropWhile(isEven)(halfEvenArray), [1, 3, 5])
    }
    
    func testSplitAt() {
        
        XCTAssertEqual(splitAt(5)(emptyArray).0, [])
        XCTAssertEqual(splitAt(5)(emptyArray).1, [])
        
        XCTAssertEqual(splitAt(0)(testArray).0, [])
        XCTAssertEqual(splitAt(0)(testArray).1, testArray)
        
        XCTAssertEqual(splitAt(5)(testArray).0, [0, 1, 2, 3, 4])
        XCTAssertEqual(splitAt(5)(testArray).1, [5, 6, 7, 8, 9])
    }
    
    func testSpan() {
        
        XCTAssertEqual(span(isEven)(emptyArray).0, [])
        XCTAssertEqual(span(isEven)(emptyArray).1, [])
        
        XCTAssertEqual(span(isEven)(halfEvenArray).0, [0, 2, 4])
        XCTAssertEqual(span(isEven)(halfEvenArray).1, [1, 3,5])
    }
    
    func testFoldr() {
        
        XCTAssertEqual(foldr(intToString)("foldr")(emptyArray), "foldr")
        XCTAssertEqual(foldr(intToString)("foldr")(testArray), "") // ここから
    }
}
