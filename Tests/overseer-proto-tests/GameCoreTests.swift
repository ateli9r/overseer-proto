//
//  GameCoreTest.swift
//  overseer-proto
//
//  Created by 이현탁 on 3/1/26.
//

//// Tests/MyToolTests/MyToolTests.swift
//import XCTest
//@testable import overseer_proto
//
//final class MyToolTests: XCTestCase {
//    func testHello() {
////        XCTAssertEqual(1 + 1, 2)
//        
//        let game = GameCore()
//        
//        game.gameLoop()
//    }
//}
//

import XCTest
@testable import overseer_proto

final class GameCoreTests: XCTestCase {
    func testHello() {
//        XCTAssertEqual(1 + 1, 2)

        let game = GameCore()

        game.gameLoop()
    }
}
