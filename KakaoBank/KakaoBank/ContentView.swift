//
//  ContentView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/06.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Int = 0
    
    // FIXME: PassbookArea로 들어가면 하단의 TabView가 사라져야 함
    var body: some View {
        TabView(selection: $selectedTab) {
            MainView(wholeViewHeight: 100)
                .tabItem({
                    Image(selectedTab == 0 ? "ImgIcon01" : "ImgIcon01_2")
                })
                .tag(0)
                .environmentObject(UserViewModel())
            
            Text("두번째 탭이에용~")
                .tabItem({
                    Image(selectedTab == 1 ? "ImgIcon02" : "ImgIcon02_2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.red) // 원하는 색상으로 변경
                        .frame(width: 24)
                })
                .tag(1)
            
            Text("세번째 탭이에용~")
                .tabItem({
                    Image(selectedTab == 2 ? "ImgIcon03" : "ImgIcon03_2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                })
                .tag(2)
            
            Text("네번째 탭이에용~")
                .tabItem({
                    Image(selectedTab == 3 ? "ImgIcon04" : "ImgIcon04_2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                })
                .tag(3)
            
        }
        .tint(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserViewModel())
            .environmentObject(BankbookViewModel())
            .environmentObject(TransactionViewModel())
    }
}
