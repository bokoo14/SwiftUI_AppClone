//
//  BankbookModel.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/09/03.
//

import Foundation

// MARK: 통장(현재 앱을 실행 중인 유저의 통장, 여러개 개설 가능)
struct BankbookModel: Identifiable {
    var id: UUID = UUID() // 사용자의 고유한 아이디 -> 후보키, 대체키
    var userID: String // 사용자의 고유한 아이디 -> 외래키⭐️
    var userBankAccount: String // 사용자의 통장 계좌번호 -> 후보키, 기본키⭐️
    var totalMoney: Int // 현재 사용자의 총 잔고
}

