//
//  GameCore.swift
//  overseer-proto
//
//  Created by 이현탁 on 3/1/26.
//

class GameCore {
    let isRunning = false
    
    func foo() {
        print("foobar")
    }
    
//    printTurnHeader()
//    printEvnet(event)
//    applyPlayerAction(playerChoice)
//    resolveEvent(event)
    
    func gameLoop() {
        print("gameLoop")
        
//        initializeGame()
//        
//        while isRunning {
//            printTurnHeader()
//            
//            let event = drawWorldEvent()
//            printEvnet(event: event)
//            
//            let playerChoice = getPlayerInput()
//            applyPlayerAction(event: playerChoice)
//            
//            resolveEvent(event: event)
//            applyWorldReaction()
//            
//            checkGrowthTrigger()
//            checkEndCondition()
//            
//            increamentTurn()
//        }
//        
//        endGameResult()
        
        //# 전체 게임 루프 구조
        //```pseudo
        //INITIALIZE_GAME()
        //
        //WHILE game_over == false:
        //
        //    PRINT_TURN_HEADER()
        //
        //    event = DRAW_WORLD_EVENT()
        //    PRINT_EVENT(event)
        //
        //    player_choice = GET_PLAYER_INPUT()
        //    APPLY_PLAYER_ACTION(player_choice)
        //
        //    RESOLVE_EVENT(event)
        //
        //    APPLY_WORLD_REACTION()
        //
        //    CHECK_GROWTH_TRIGGER()
        //
        //    CHECK_END_CONDITION()
        //
        //    INCREMENT_TURN()
        //
        //END_GAME_RESULT()
        //```
    }
    
    func initializeGame() {
        print("initializeGame")
        
        //# 초기화
        //```
        //FUNCTION INITIALIZE_GAME():
        //    turn = 1
        //    MAX_TURN = 15
        //
        //    hero.atk = 1
        //    hero.int = 1
        //    hero.inf = 1
        //
        //    world.stability = 5
        //    world.threat = 3
        //
        //    deck = SHUFFLE(ALL_EVENT_CARDS)
        //
        //    game_over = false
        //```
    }
    
    func printTurnHeader() {
        print("printTurnHeader")
        
        //
    }
    
    func printEvnet(event: String) {
        print("printEvnet")
        
        //
    }

    func drawWorldEvent() -> String {
        print("drawWorldEvent")
        
        //# 세계 이벤트 뽑기
        //```
        //FUNCTION DRAW_WORLD_EVENT():
        //    RETURN POP(deck)
        //```
        //이벤트 데이터 예시:
        //```
        //EVENT:
        //    name
        //    required_stat (atk / int / inf)
        //    required_value
        //    success_effect
        //    fail_effect
        //```
        
        return ""
    }
    
    func getPlayerInput() -> String {
        print("getPlayerInput")
        
        //# 플레이어 입력
        //MVP에서는 선택지를 3~4개로 고정하는 것이 좋습니다.
        //```
        //FUNCTION GET_PLAYER_INPUT():
        //
        //    PRINT("1. 전투 훈련 (+1 atk)")
        //    PRINT("2. 지능 연구 (+1 int)")
        //    PRINT("3. 영향력 확장 (+1 inf)")
        //    PRINT("4. 이벤트 해결 시도")
        //
        //    INPUT choice
        //
        //    RETURN choice
        //```
        
        return ""
    }
    
    func applyPlayerAction(event: String) {
        print("applyPlayerAction")
        
        //# 플레이어 행동 적용
        //```
        //FUNCTION APPLY_PLAYER_ACTION(choice):
        //
        //    IF choice == 1:
        //        hero.atk += 1
        //
        //    IF choice == 2:
        //        hero.int += 1
        //
        //    IF choice == 3:
        //        hero.inf += 1
        //
        //    IF choice == 4:
        //        hero.attempt_event = true
        //```
    }
    
    func resolveEvent(event: String) {
        print("resolveEvent")
        
        //# 이벤트 해결
        //```
        //FUNCTION RESOLVE_EVENT(event):
        //
        //    IF hero.attempt_event == true:
        //
        //        hero_value = GET_STAT(hero, event.required_stat)
        //
        //        IF hero_value >= event.required_value:
        //            APPLY(event.success_effect)
        //            PRINT("이벤트 성공")
        //        ELSE:
        //            APPLY(event.fail_effect)
        //            PRINT("이벤트 실패")
        //
        //    ELSE:
        //        world.threat += 1
        //        PRINT("이벤트 방치 → 위협도 증가")
        //
        //    hero.attempt_event = false
        //```
    }
    
    func applyWorldReaction() {
        print("applyWorldReaction")
        
        //# 세계 반응 시스템 (AI 대신)
        //핵심은 “편향 카운터”입니다.
        //```
        //FUNCTION APPLY_WORLD_REACTION():
        //
        //    highest_stat = MAX(hero.atk, hero.int, hero.inf)
        //
        //    IF highest_stat == hero.atk:
        //        chance = RANDOM(0,100)
        //        IF chance < 40:
        //            PRINT("정치적 반발 발생")
        //            world.threat += 1
        //
        //    IF highest_stat == hero.int:
        //        chance = RANDOM(0,100)
        //        IF chance < 40:
        //            PRINT("마법 폭주")
        //            world.threat += 1
        //
        //    IF highest_stat == hero.inf:
        //        chance = RANDOM(0,100)
        //        IF chance < 40:
        //            PRINT("권력 암투")
        //            world.threat += 1
        //```
    }
    
    func checkGrowthTrigger() {
        print("checkGrowthTrigger")
        
        //# 성장 트리거
        //이세계 감성 최소 구현
        //```
        //FUNCTION CHECK_GROWTH_TRIGGER():
        //
        //    IF hero.atk >= 5 AND hero.has_title_warrior == false:
        //        hero.has_title_warrior = true
        //        PRINT("칭호 획득: 전장의 신입")
        //        hero.atk += 1
        //```
    }
    
    func checkEndCondition() {
        print("checkEndCondition")
        
        //# 종료 조건 체크
        //```
        //FUNCTION CHECK_END_CONDITION():
        //
        //    IF world.stability >= 10:
        //        PRINT("세계가 안정되었습니다.")
        //        game_over = true
        //
        //    IF world.threat >= 10:
        //        PRINT("세계가 파국에 빠졌습니다.")
        //        game_over = true
        //
        //    IF turn >= MAX_TURN:
        //        PRINT("시간 종료")
        //        game_over = true
        //```
    }
    
    func increamentTurn() {
        print("increamentTurn")
        
        //# 턴 증가
        //```
        //FUNCTION INCREMENT_TURN():
        //    turn += 1
        //```
    }
    
    func endGameResult() {
        print("endGameResult")
        
        //# 결과 출력
        //```
        //FUNCTION END_GAME_RESULT():
        //
        //    score = hero.atk + hero.int + hero.inf
        //
        //    PRINT("최종 스탯 합:", score)
        //    PRINT("세계 안정도:", world.stability)
        //    PRINT("세계 위협도:", world.threat)
        //```
    }
    
}
