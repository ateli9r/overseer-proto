//
//  GameInput.swift
//  overseer-proto
//
//  Created by 이현탁 on 3/1/26.
//


protocol GameDevice {
    //    printTurnHeader()
    //    printEvnet(event)
    //    applyPlayerAction(playerChoice)
    //    resolveEvent(event)
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
            
    func playerSelectCard() -> Card
    
}

struct ConsoleGameDevice: GameDevice {
    func playerSelectCard() -> Card {
        fatalError("Not implemented")
    }
}
