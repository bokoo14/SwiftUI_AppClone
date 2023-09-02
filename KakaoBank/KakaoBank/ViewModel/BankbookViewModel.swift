//
//  AccountViewModel.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/14.
//

import SwiftUI

class BankbookViewModel: ObservableObject {
    @Published var bankbook: BankbookModel = BankbookModel(userID: "user4", userBankAccount: "44444444", totalMoney: 0)
    
    init() { }
    
    // MARK: Update - 유저 데이터값 변경
    // MARK: Update - 대출 받기
    func LoanUpdateData(loanedMoney: Int) {
        bankbook.totalMoney += loanedMoney
    }
    
    // MARK: Update - 이체하기
    func TransferUpdateData(transferMoney: Int) {
        bankbook.totalMoney -= transferMoney
    }
}
