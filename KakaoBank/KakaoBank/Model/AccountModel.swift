//
//  AccountModel.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/14.
//

import SwiftUI

// 통장
struct AccountModel: Identifiable {
    var id: UUID = UUID()
    var date: String // 거래 날짜
    var targetName: String // 거래 대상
    var describe: String // 대출 or 이체
    var currentMoney: Int // 현재 거래되는 돈
}
