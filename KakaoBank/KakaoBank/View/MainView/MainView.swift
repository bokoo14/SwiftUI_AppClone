//
//  MainView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct MainView: View {
    @State var mainStack = NavigationPath()
    
    // TODO: NavigationStack에 대해 공부하고, 잘 적용시키기
    var body: some View {
        NavigationStack(path: $mainStack) {
            // FIXME: 상단의 HeaderArea부분 스크롤하지 않았을떄는 그림자가 없고, 스크롤시에만 그림자가 생겨야 한다
            // FIXME: ZStack으로 하고, height값을 받아와서 그것으로 padding값 지정해줘야 함!
            VStack (spacing: 0){
                HeaderArea()
                
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
            .environmentObject(BankbookViewModel())
            .environmentObject(TransactionViewModel())
            .tint(.black)
    }
}
