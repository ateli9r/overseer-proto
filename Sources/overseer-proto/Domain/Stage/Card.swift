//
//  Card.swift
//  overseer-proto
//
//  Created by 이현탁 on 3/1/26.
//

struct Card {
    let type: CardType
}

enum CardType {
    case choice1 // 전투훈련 (+1 atk)
    case choice2 // 지능연구 (+1 int)
    case choice3 // 영향력 확장 (+1 inf)
    case choice4 // 이벤트 해결
    case success // 이벤트 성공
    case fail // 이벤트 실패
}


//
//세계 이벤트 카드 샘플 (12장)
//⚔ 전투계열 (4장)
//1. 고블린 습격
//요구: atk ≥ 3
//성공: stability +1
//실패: threat +1
//2. 오우거 토벌
//요구: atk ≥ 5
//성공: stability +2
//실패: threat +2
//3. 용병 반란
//요구: atk ≥ 4
//성공: threat -1
//실패: threat +1
//4. 던전 폭주
//요구: atk ≥ 6
//성공: stability +2
//실패: threat +2
//🧠 지능계열 (4장)
//5. 마법 사고
//요구: int ≥ 3
//성공: threat -1
//실패: threat +1
//6. 고대 유물 해석
//요구: int ≥ 5
//성공: stability +2
//실패: threat +1
//7. 마도 연구 실패
//요구: int ≥ 4
//성공: stability +1
//실패: threat +2
//8. 차원 균열 봉인
//요구: int ≥ 6
//성공: stability +2
//실패: threat +2
//👑 영향력계열 (4장)
//9. 귀족 분쟁
//요구: inf ≥ 3
//성공: stability +1
//실패: threat +1
//10. 왕위 계승 문제
//요구: inf ≥ 5
//성공: stability +2
//실패: threat +2
//11. 종교 갈등
//요구: inf ≥ 4
//성공: threat -1
//실패: threat +1
//12. 외교 협상
//요구: inf ≥ 6
//성공: stability +2
//실패: threat +2
//🎴 3️⃣ 플레이어 개입 카드 (6장)
//이건 “훈련 외 선택지”입니다.
//1. 집중 훈련
//선택 스탯 +2
//단, 이번 턴 이벤트 해결 불가
//2. 전면 개입
//이번 턴 요구 수치 -1
//3. 안전 우선
//이번 턴 실패 시 threat +0 (무효화 1회)
//4. 과감한 도전
//성공 시 stability +1 추가
//실패 시 threat +1 추가
//5. 정보 수집
//다음 이벤트 미리 공개
//6. 긴급 봉합
//threat -1
//단, 이번 턴 스탯 증가 불가
//🎮 이 카드 세트로 가능한 플레이 흐름
//예:
//턴1:
//이벤트: 고블린 습격 (atk 3 필요)
//플레이어 atk=1
//훈련 선택 → atk 2
//이벤트 실패 → threat +1
//턴3:
//atk=3
//이벤트 성공
//stability +1
//→ 점점 성장하며 이벤트 대응
//

