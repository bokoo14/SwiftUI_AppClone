//
//  TransactionViewModel.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/09/03.
//

import SwiftUI

class TransactionViewModel: ObservableObject {
    @Published var transactions: [TransactionModel] = []
    
    // 현재 시간을 return
    var date: DateFormatter = {
          let df = DateFormatter()
          df.locale = Locale(identifier: "ko_KR")
          df.timeZone = TimeZone(abbreviation: "KST")
          df.dateFormat = "MM.dd"
          return df
      }()
    
    init() { }
    
    // MARK: Update - 유저 데이터값 변경
    // MARK: Update - 대출 받기 or 이체하기
    // DB table 하나 더 생성
    func UpdateData(userBankAccount: String, senderAccountNumber: String, senderName: String, transactionType: String, totalMoney: Int, transactionMoney: Int) {
        transactions.append(TransactionModel(userBankAccount: userBankAccount, date: date.string(from: Date()), senderAccountNumber: senderAccountNumber, senderName: senderName, transactionType: transactionType, totalMoney: totalMoney, transactionMoney: transactionMoney))
    }
}

//var userBankAccount: String // 현재 앱을 사용 중인 유저의 계좌 번호 -> 후보키, 기본키⭐️
//var date: String // 거래 날짜
//var senderAccountNumber: String // 보내는 사람의 계좌 번호
//var senderName: String // 보내는 사람의 이름
//var transactionType: String // 거래 종류 -> 대출 or 이체
//var totalMoney: Int // 거래 후의 유저의 통장 잔액
//var transactionMoney: Int // 현재 거래되는 돈
