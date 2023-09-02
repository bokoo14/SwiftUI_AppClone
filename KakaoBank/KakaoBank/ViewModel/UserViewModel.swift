//
//  UserViewModel.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/14.
//

import SwiftUI

// ViewModel은 class로 선언해야 함!
class UserViewModel: ObservableObject {
    @Published var currentUser: User = User(userBankAccount: "44-44444444", userName: "박보경", userProfileTitle: "ImgProfile04", totalMoney: 0) // 나
    @Published var otherUsers: [User] = [] // 다른 유저
    
    init() {
        getUser()
    }
    
    // MARK: CRUD
    // MARK: Create - 유저 생성
    func getUser() {
        let user1 = User(userBankAccount: "11-11111111", userName: "김페페", userProfileTitle: "ImgProfile01", totalMoney: 100000000)
        let user2 = User(userBankAccount: "22-22222222", userName: "엠케이", userProfileTitle: "ImgProfile02", totalMoney: 100000000)
        let user3 = User(userBankAccount: "33-33333333", userName: "이채드", userProfileTitle: "ImgProfile03", totalMoney: 100000000)
        let user4 = User(userBankAccount: "44-44444444", userName: "박루나", userProfileTitle: "ImgProfile04", totalMoney: 100000000)
        let user5 = User(userBankAccount: "55-55555555", userName: "로이스", userProfileTitle: "ImgProfile05", totalMoney: 100000000)
        let user6 = User(userBankAccount: "66-66666666", userName: "하명관", userProfileTitle: "ImgProfile06", totalMoney: 100000000)
        let user7 = User(userBankAccount: "77-77777777", userName: "김래쉬", userProfileTitle: "ImgProfile07", totalMoney: 100000000)
        let user8 = User(userBankAccount: "88-88888888", userName: "김시즈", userProfileTitle: "ImgProfile08", totalMoney: 100000000)
        let user9 = User(userBankAccount: "99-99999999", userName: "멜제이", userProfileTitle: "ImgProfile09", totalMoney: 100000000)
        let user10 = User(userBankAccount: "10-10101010", userName: "김말티", userProfileTitle: "ImgProfile10", totalMoney: 100000000)

        otherUsers = [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10]
    }
    
    
    // MARK: Update - 유저 데이터값 변경
    // MARK: Update - 대출 받기
    func LoanUpdateData(loanedMoney: Int) {
        currentUser.totalMoney += loanedMoney
    }
    
    // MARK: Update - 이체하기
    func TransferUpdateData(transferMoney: Int) {
        currentUser.totalMoney -= transferMoney
    }
}
