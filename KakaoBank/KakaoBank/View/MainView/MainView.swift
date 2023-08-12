//
//  MainView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack (spacing: 0){
                HeaderArea()
                    .padding(.bottom, 10)
                
                ScrollView{
                    VStack (spacing: 8){
                        BannerArea()
                        PassbookArea()
                        PassbookArea2()
                        BottomOptionArea()
                    }
                } // ScrollView
            }
        } // NavigationView
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
