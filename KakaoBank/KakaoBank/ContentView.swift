//
//  ContentView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/06.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Int = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            MainView()
                .tabItem({
                    Image("ImgIcon01")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                })
                .tag(0)
            
            TestView()
                .tabItem({
                    Image("ImgIcon02")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.red) // 원하는 색상으로 변경
                        .frame(width: 20)
                })
                .tag(1)
            
            TestView()
                .tabItem({
                    Image("ImgIcon03")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18)
                })
                .tag(2)
            
            TestView()
                .tabItem({
                    Image("ImgIcon04")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                })
                .tag(3)
            
        }
        .tint(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
