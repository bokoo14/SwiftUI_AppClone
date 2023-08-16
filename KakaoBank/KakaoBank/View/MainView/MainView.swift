//
//  MainView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var userVM: UserViewModel
    @State var mainStack = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $mainStack) {
            // ZStack으로 하고, height값을 받아와서 그것으로 padding값 지정해줘야 함!
            VStack (spacing: 0){
                HeaderArea(userVM: UserViewModel())
                    //.padding(.bottom, 10)
                
                ScrollView{
                    VStack (spacing: 8){
                        BannerArea()
                            .padding(.top, 10)
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
            .environmentObject(UserViewModel())
            .tint(.black)
    }
}
