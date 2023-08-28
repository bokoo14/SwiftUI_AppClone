//
//  UserViewModel.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/14.
//

import SwiftUI

// ViewModel은 class로 선언해야 함!
class UserViewModel: ObservableObject {
    @Published var user: User = User(userName: "박보경", userProfileTitle: "ImgProfile04", bankAccount: "3333-11-7254440", bankName: "카카오뱅크", totalMoney: 3234200) // 나
    @Published var otherUser: [User] = [] // 다른 유저
    
    init() {
        getUser()
    }
    
    // MARK: CRUD
    // MARK: Create - 유저 생성
    func getUser() {
        let user1 = User(userName: "김페페", userProfileTitle: "ImgProfile01", bankAccount: "11-11111111",bankName: "카카오", totalMoney: 1000000)
        let user2 = User(userName: "엠케이", userProfileTitle: "ImgProfile02", bankAccount: "22-22222222",bankName: "국민", totalMoney: 1000000)
        let user3 = User(userName: "이채드", userProfileTitle: "ImgProfile03", bankAccount: "33-33333333",bankName: "신한", totalMoney: 1000000)
        let user4 = User(userName: "박루나", userProfileTitle: "ImgProfile04", bankAccount: "44-44444444",bankName: "카카오", totalMoney: 1000000)
        let user5 = User(userName: "로이스", userProfileTitle: "ImgProfile05", bankAccount: "55-55555555",bankName: "국민", totalMoney: 1000000)
        let user6 = User(userName: "하명관", userProfileTitle: "ImgProfile06", bankAccount: "66-66666666",bankName: "국민", totalMoney: 1000000)
        let user7 = User(userName: "김래쉬", userProfileTitle: "ImgProfile07", bankAccount: "77-77777777",bankName: "카카오", totalMoney: 1000000)
        let user8 = User(userName: "김시즈", userProfileTitle: "ImgProfile08", bankAccount: "88-88888888",bankName: "우리", totalMoney: 1000000)
        let user9 = User(userName: "멜제이", userProfileTitle: "ImgProfile09", bankAccount: "99-99999999",bankName: "국민", totalMoney: 1000000)
        let user10 = User(userName: "김말티", userProfileTitle: "ImgProfile10", bankAccount: "10-10101010",bankName: "카카오", totalMoney: 1000000)
        
        otherUser = [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10]
    }
}
