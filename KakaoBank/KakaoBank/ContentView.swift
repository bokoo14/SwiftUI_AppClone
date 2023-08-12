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
                    Image(systemName: "heart")
                })
                .tag(0)
            
            TestView()
                .tabItem({
                    Image(systemName: "heart")
                })
                .tag(1)
            
            TestView()
                .tabItem({
                    Image(systemName: "heart")
                })
                .tag(2)
            
            TestView()
                .tabItem({
                    Image(systemName: "heart")
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
