//
//  AccountModel.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/14.
//

import SwiftUI

// MARK: 현재 앱을 사용 중인 유저의 거래 내역
struct AccountModel: Identifiable {
    var id: UUID = UUID() // 통장의 고유한 아이디 -> 후보키
    var date: String // 거래 날짜
    var userBankAccount: String // 받는 사람의 계좌 번호 -> 외래키
    var userName: String // 받는 사람의 이름
    var senderAccountNumber: String // 보낸 사람의 계좌 번호
    var senderName: String // 보낸 사람의 이름
    var transactionType: String // 거래 종류 -> 대출 or 이체
    var totalMoney: Int // 현재 내 통장 잔액
    var currentMoney: Int // 현재 거래되는 돈
}
