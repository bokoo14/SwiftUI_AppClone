//
//  TransactionModel.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/09/03.
//

import SwiftUI

// MARK: 현재 앱을 사용 중인 유저의 통장 하나에 대한 모든 거래내역
struct TransactionModel: Identifiable {
    let id: UUID = UUID() // 통장의 고유한 아이디 -> 후보키, 기본키
    var userBankAccount: String // 현재 앱을 사용 중인 유저의 계좌 번호 -> 후보키, 외래키⭐️
    var date: String // 거래 날짜
    var senderAccountNumber: String // 보내는 사람의 계좌 번호
    var senderName: String // 보내는 사람의 이름
    var transactionType: String // 거래 종류 -> 대출 or 이체
    var totalMoney: Int // 거래 후의 유저의 통장 잔액
    var transactionMoney: Int // 현재 거래되는 돈
}
