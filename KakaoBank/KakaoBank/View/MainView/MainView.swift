//
//  MainView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct MainView: View {
    @State var mainStack = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $mainStack) {
            VStack (spacing: 0){
                HeaderArea()
                    .padding(.bottom, 10)
                
                ScrollView{
                    VStack (spacing: 8){
                        BannerArea()
                        PassbookArea(mainStack: $mainStack)
                        PassbookArea2()
                        BottomOptionArea()
                    }
                } // ScrollView
            } // VStack
        } // NavigationStack
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .tint(.black)
    }
}
