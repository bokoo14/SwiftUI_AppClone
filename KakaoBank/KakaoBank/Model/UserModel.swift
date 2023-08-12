//
//  UserModel.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct User: Identifiable{
    var id: UUID = UUID()
    var userName: String // 나의 이름
    var bankNumber: String // 계좌번호
    var totalMoney: Int // 현재 나의 총 잔고
}

