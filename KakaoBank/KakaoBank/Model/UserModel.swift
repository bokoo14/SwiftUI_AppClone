//
//  UserModel.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct User: Identifiable{
    var id: UUID = UUID()
    var userName: String // 사용자의 이름
    var bankAccount: String // 계좌번호
    var bankName: String // 은행 이름
    var totalMoney: Int // 현재 사용자의 총 잔고
}

