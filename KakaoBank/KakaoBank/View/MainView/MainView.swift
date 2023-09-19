//
//  MainView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

/// 얼마만큼 Scroll했는지 저장
struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero
    static func reduce(value: inout CGPoint, nextValue: ()-> CGPoint){}
}

struct MainView: View {
    @State var mainStack = NavigationPath()
    @State var wholeViewHeight : CGFloat // 전체 뷰(헤더를 제외한 구역)의 높이
    
    // TODO: NavigationStack에 대해 공부하고, 잘 적용시키기
    var body: some View {
        NavigationStack(path: $mainStack) {
            // FIXME: 상단의 HeaderArea부분 스크롤하지 않았을떄는 그림자가 없고, 스크롤시에만 그림자가 생겨야 한다
            // FIXME: ZStack으로 하고, height값을 받아와서 그것으로 padding값 지정해줘야 함!
            VStack (spacing: 0){
                HeaderArea()
                    .background(
                        Color.kakaoWhite300
                            .shadow(color: Color.kakaoBlack100.opacity(0.05), radius: 2, x: 0, y: 4)
                    )
                
                ScrollView{
                    VStack (spacing: 8){
                        BannerArea()
                            .padding(.top, 10)
                        PassbookArea(mainStack: $mainStack)
                        PassbookArea2()
                        BottomOptionArea()
                    }
                } // ScrollView
                .background(
                    GeometryReader { geo -> Color in
                        DispatchQueue.main.async {
                            wholeViewHeight =  geo.size.height
                        }
                        return Color.clear
                    }
                ) // background: 전체 뷰(헤더를 제외한 구역)의 높이구하기
                
            } // VStack
        } // NavigationStack
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(wholeViewHeight: 300)
            .environmentObject(UserViewModel())
            .environmentObject(BankbookViewModel())
            .environmentObject(TransactionViewModel())
            .tint(.black)
    }
}
