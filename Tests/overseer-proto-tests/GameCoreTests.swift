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

/*
 func gameLoop() {
 func initializeGame() {
 func printTurnHeader() {
 func printEvnet(event: String) {
 func drawWorldEvent() -> String {
 func getPlayerInput() -> String {
 func applyPlayerAction(event: String) {
 func resolveEvent(event: String) {
 func applyWorldReaction() {
 func checkGrowthTrigger() {
 func checkEndCondition() {
 func increamentTurn() {
 func endGameResult() {
 */

final class GameCoreTests: XCTestCase {
    
//    let game: GameCore = {
//        let device = ConsoleGameDevice()
//        return GameCore(device: device)
//    }()
    
    func getGameCore() -> GameCore {
        let device = ConsoleGameDevice()
        return GameCore(device: device)
    }
    
    /**
     월드 초기화
     
     게임 스테이지를 초기화 한다
    */
    func testWorldInitialize() {
        let game = getGameCore()
        
        // TODO: 메서드 추가
//        XCTAssertTrue(game.worldInitialize())
        guard game.worldInitialize() else {
            XCTFail("worldInitialize failed")
            return
        }

        // TODO: 스테이지 변수 초기화 확인
        XCTAssertEqual(game.world.stage.count, 0)
        
        // TODO: 대기열 변수 초기화 확인
        XCTAssertEqual(game.world.next.count, 1)
        
        // TODO: 월드 로그라인 변수 초기화 확인
        XCTAssertEqual(game.world.logline.count, 0)
    }
    
    /**
     플레이어 초기화
    */
    func testPlayerInitialize() {
        let game = getGameCore()
        
        // TODO: 메서드 추가
//        XCTAssertTrue(game.playerInitialize())
        guard game.playerInitialize() else {
            XCTFail("playerInitialize failed")
            return
        }
        
        // TODO: 플레이어 초기화 확인
        XCTAssertEqual(game.player.count, 1)
        let player = game.player[0] as Player
        
        // TODO: 덱 변수 초기화 확인
        XCTAssertEqual(player.deck.count, 8)
        
        // TODO: 영웅 변수 초기화 확인
        XCTAssertEqual(player.hero.count, 1)

        // TODO: 플레이어 로그라인 변수 초기화 확인
        XCTAssertEqual(player.logline.count, 0)
    }

    /**
     월드 이벤트 가져오기
    */
    func testDrawWorldEvent() {
        let game = getGameCore()
        
        // 게임 초기화
        guard game.worldInitialize() || game.playerInitialize()  else {
            XCTFail("Initialize failed")
            return
        }
        
        // TODO: 카드 가져오기
        let event = game.drawWorldEvent()
        
        
        // TODO: required_stat
        // TODO: required_value
        // TODO: success_effect
        // TODO: fatal_effect
    }

    /**
     플레이어 선택 반영
     func applyPlayerAction(event: String) {
    */
    func testApplyPlaterAction() {
        let game = getGameCore()
        
        // 게임 초기화
        guard game.worldInitialize() || game.playerInitialize()  else {
            XCTFail("Initialize failed")
            return
        }
        
        // TODO: 이벤트 가져오기
        let event = game.drawWorldEvent()
        
        // TODO: 플레이어 상태 가져오기1
        let hero = game.getHero() as Hero
        let stat = [hero.atk, hero.int, hero.inf]
        
        // TODO: 선택지 결과 : choice1
        game.applyPlayerAction(hero: hero, event: event, choice: Card(type: CardType.choice1))
        XCTAssertEqual(stat[0] + 1, hero.atk)
        
        // TODO: 선택지 결과 : choice2
        game.applyPlayerAction(hero: hero, event: event, choice: Card(type: CardType.choice1))
        XCTAssertEqual(stat[1] + 1, hero.int)
        
        // TODO: 선택지 결과 : choice3
        game.applyPlayerAction(hero: hero, event: event, choice: Card(type: CardType.choice1))
        XCTAssertEqual(stat[2] + 1, hero.inf)
        
        // TODO: 선택지 결과 : choice4
//        game.applyPlayerAction(hero: game.getHero(), event: event, choice: Card(type: CardType.choice1))
//        XCTAssertEqual(hero.atk, hero.atk + 1)
    }
    
    /**
     월드 이벤트 반영
     func resolveEvent(event: String) {
    */
    func testResolveEvent() {
        XCTAssertNotNil(nil)
        
        // TODO: required_stat
        // TODO: required_value
        // TODO: success_effect
        // TODO: fatal_effect
    }
    
    /**
     월드 리액션 반영
     func applyWorldReaction() {
    */
    func testApplyWorldReaction() {
        XCTAssertNotNil(nil)
    }
    
    /**
     성장 트리거 체크
     func checkGrowthTrigger() {
    */
    func testCheckGrowthTrigger() {
        XCTAssertNotNil(nil)
    }
    
    /**
     종료조건 체크
     func checkEndCondition() {
    */
    func testCheckEndCondition() {
        XCTAssertNotNil(nil)
    }
    
    /**
     턴 넘어가기
     func increamentTurn() {
    */
    func testIncreamentTurn() {
        XCTAssertNotNil(nil)
    }

    
    //    func testHello() {
    ////        XCTAssertEqual(1 + 1, 2)
    //
    //        let game = GameCore()
    //
    //        game.gameLoop()
    //    }

}
