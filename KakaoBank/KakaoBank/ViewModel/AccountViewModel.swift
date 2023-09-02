//
//  AccountViewModel.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/14.
//

import SwiftUI

class AccountViewModel: ObservableObject {
    @Published var account: [AccountModel] = []
    
    // 현재 시간을 return
    var date: DateFormatter = {
          let df = DateFormatter()
          df.locale = Locale(identifier: "ko_KR")
          df.timeZone = TimeZone(abbreviation: "KST")
          df.dateFormat = "YY.MM"
          return df
      }()
    
    init() { }
    
    // MARK: CRUD
    // MARK: Update - 대출
    func borrowMoney(targetName: String, currentMoney: Int) {
        let dateString = date.string(from: Date()) // Convert Date to formatted String
//        account.append(AccountModel(date: dateString, targetName: targetName, describe: "#대출", currentMoney: currentMoney))
        account.append(AccountModel(date: dateString, userBankAccount: "", userName: "", senderAccountNumber: "", senderName: "", transactionType: "", totalMoney: 100, currentMoney: currentMoney))
    }
    
    // MARK: Update - 이체
    func sendMoney(targetName: String, currentMoney: Int) {
        let dateString = date.string(from: Date()) // Convert Date to formatted String
//        account.append(AccountModel(date: dateString, targetName: targetName, describe: "#이체", currentMoney: currentMoney))
        account.append(AccountModel(date: "", userBankAccount: "", userName: "", senderAccountNumber: "", senderName: "", transactionType: "", totalMoney: 100, currentMoney: 100))
    }
}
