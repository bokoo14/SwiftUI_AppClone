//
//  KakaoBankApp.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/06.
//

import SwiftUI

@main
struct KakaoBankApp: App {
    // 처음 ViewModel을 초기화할때는 @StateObject로 불러오기
    @StateObject var userVM = UserViewModel()
    @StateObject var bankbookVM = BankbookViewModel()
    @StateObject var transactionVM = TransactionViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userVM)
                .environmentObject(bankbookVM)
                .environmentObject(transactionVM)
        }
    }
}


/**
 [NOTE]
 ✔️ ObservableObject: StateObject, ObservedObject, EnvironmentObject를 쓸 수 있음
 ✔️ StateObject: 상위뷰에서 값이 바뀌더라도, 현재 나의 뷰에 있는 변수값은 바뀌지 않음
 ✔️ ObservedObject: ObservableObject에 @Publish를 쓴 변수를 관찰하고, 값이 바뀌면 뷰를 새로 그려줌, 보통 초기화가 필요할때 씀
 ✔️ EnvironmentObject: .environmentObject를 사용하여 뷰에 ObservableObject에 있는 데이터를 넘겨줌
 */

