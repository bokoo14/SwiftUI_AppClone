//
//  AccountViewModel.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/14.
//

import SwiftUI

class AccountViewModel: ObservableObject {
    @Published var account: [AccountModel] = []
    
    init() {
        
    }
    
    // CRUD
    // MARK: Update - 대출
    func borrowMoney() {
        
    }
    // MARK: Update - 이체
    func sendMoney() {
        
    }
}
