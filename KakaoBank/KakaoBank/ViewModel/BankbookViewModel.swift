//
//  AccountViewModel.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/14.
//

import SwiftUI

class BankbookViewModel: ObservableObject {
    @Published var bankbook: BankbookModel = BankbookModel(userID: "user4", userBankAccount: "44444444", totalMoney: 0)
    
    @Published var othersBankbook: [BankbookModel] = []
    
    init() {
        MakeBankBook()
    }
    
    // MARK: CRUD
    // MARK: Create - 유저의 통장 생성 -> 통장을 개설할때 생성
    func MakeBankBook() {
        print("통장 개설")
        let user1 = BankbookModel(userID: "user1", userBankAccount: "11111111", totalMoney: 100000000)
        let user2 = BankbookModel(userID: "user2", userBankAccount: "22222222", totalMoney: 100000000)
        let user3 = BankbookModel(userID: "user3", userBankAccount: "33333333", totalMoney: 100000000)
        let user4 = BankbookModel(userID: "user4", userBankAccount: "44444444", totalMoney: 100000000)
        let user5 = BankbookModel(userID: "user5", userBankAccount: "55555555", totalMoney: 100000000)
        let user6 = BankbookModel(userID: "user6", userBankAccount: "66666666", totalMoney: 100000000)
        let user7 = BankbookModel(userID: "user7", userBankAccount: "77777777", totalMoney: 100000000)
        let user8 = BankbookModel(userID: "user8", userBankAccount: "88888888", totalMoney: 100000000)
        let user9 = BankbookModel(userID: "user9", userBankAccount: "99999999", totalMoney: 100000000)
        let user10 = BankbookModel(userID: "user10", userBankAccount: "10101010", totalMoney: 100000000)
        othersBankbook = [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10]
    }
    
    
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
