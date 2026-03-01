//
//  Event.swift
//  overseer-proto
//
//  Created by 이현탁 on 3/1/26.
//

struct WorldEvent {
    let reqStat: StatusType
    let reqValue: Int
    let success: Card = Card(type: CardType.success)
    let fail: Card = Card(type: CardType.fail)
}

enum StatusType: Int {
    case none = 0
    case atk = 1 // 전투능력
    case int = 2 // 지능
    case inf = 3 // 영향력
}
