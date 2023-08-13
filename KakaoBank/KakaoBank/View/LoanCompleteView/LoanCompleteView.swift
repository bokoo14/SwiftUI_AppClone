//
//  LoanCompleteView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

struct LoanCompleteView: View {
    @State var money: Int = 500000000
    @Binding var mainStack: NavigationPath
    
    var body: some View {
        VStack (spacing: 0){
            VStack (spacing: 0){
                Image(systemName: "checkmark")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 29)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 13)
                    .background(Color.kakaoYellow.cornerRadius(50))
                VStack (spacing: 3){
                    Text("일론 머스크님이")
                        .foregroundColor(Color.kakaoBlack300)
                        .font(.pretendard(.semibold, size: 24))
                        .padding(.top, 35)
                    HStack (spacing: 0){
                        Text("\(money)")
                            .foregroundColor(Color.kakaoBlue300)
                            .font(.pretendard(.semibold, size: 24))
                        Text("원 보냈어요")
                            .foregroundColor(Color.kakaoBlack300)
                            .font(.pretendard(.semibold, size: 24))
                    }
                } // Text VStack
            } // Image & Text VStack
            .padding(.top, 240)
            
            Spacer()
            
            completeBtn {
                mainStack = .init()
            }
        } // 전체 VStack
    }
}

struct LoanCompleteView_Previews: PreviewProvider {
    static var previews: some View {
        LoanCompleteView(mainStack: .constant(NavigationPath()))
    }
}
