//
//  UserViewModel.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/14.
//

import SwiftUI

// ViewModel은 class로 선언해야 함!
class UserViewModel: ObservableObject {
    @Published var currentUser: UserModel = UserModel(userID: "currentUser", userName: "박보경", userProfileTitle: "ImgProfile04", bankName: "카카오뱅크") // 현재 앱을 사용 중인 유저
    @Published var otherUsers: [UserModel] = [] // 다른 유저
    
    init() {
        getUser()
    }
    
    // MARK: CRUD
    // MARK: Create - 유저 생성 -> 회원가입할때 생성
    func getUser() {
        let user1 = UserModel(userID: "user1", userName: "김페페", userProfileTitle: "ImgProfile01", bankName: "카카오뱅크")
        let user2 = UserModel(userID: "user2", userName: "엠케이", userProfileTitle: "ImgProfile02", bankName: "국민")
        let user3 = UserModel(userID: "user3", userName: "이채드", userProfileTitle: "ImgProfile03", bankName: "신한")
        let user4 = UserModel(userID: "user4", userName: "박루나", userProfileTitle: "ImgProfile04", bankName: "카카오뱅크")
        let user5 = UserModel(userID: "user5", userName: "로이스", userProfileTitle: "ImgProfile05", bankName: "국민")
        let user6 = UserModel(userID: "user6", userName: "하명관", userProfileTitle: "ImgProfile06", bankName: "국민")
        let user7 = UserModel(userID: "user7", userName: "김래쉬", userProfileTitle: "ImgProfile07", bankName: "카카오뱅크")
        let user8 = UserModel(userID: "user8", userName: "김시즈", userProfileTitle: "ImgProfile08", bankName: "우리")
        let user9 = UserModel(userID: "user9", userName: "멜제이", userProfileTitle: "ImgProfile09", bankName: "국민")
        let user10 = UserModel(userID: "user10", userName: "김말티", userProfileTitle: "ImgProfile10", bankName: "카카오뱅크")

        otherUsers = [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10]
    }
}
