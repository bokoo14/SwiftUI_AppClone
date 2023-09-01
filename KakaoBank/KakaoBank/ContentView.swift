//
//  ContentView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/06.
//

import SwiftUI

struct ContentView: View {
//    @EnvironmentObject var userVM: UserViewModel
    @State var selectedTab: Int = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            MainView()
                .tabItem({
                    Image(selectedTab == 0 ? "ImgIcon01" : "ImgIcon01_2")
                })
                .tag(0)
                .environmentObject(UserViewModel())
            
            TestView()
                .tabItem({
                    Image(selectedTab == 1 ? "ImgIcon02" : "ImgIcon02_2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.red) // 원하는 색상으로 변경
                        .frame(width: 24)
                })
                .tag(1)
            
            TestView()
                .tabItem({
                    Image(selectedTab == 2 ? "ImgIcon03" : "ImgIcon03_2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                })
                .tag(2)
            
            TestView()
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
            .environmentObject(AccountViewModel())
    }
}
