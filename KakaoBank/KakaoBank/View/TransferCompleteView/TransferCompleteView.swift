//
//  TransferCompleteView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/15.
//

import SwiftUI

struct TransferCompleteView: View {
    @State var money: Int = 500000000
    @Binding var mainStack: NavigationPath
    
//    var userProfileTitle: String
//    var userName: String
//    var bankAccount: String
    
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
                
                VStack (spacing: 0){
                    Text("김페페님에게")
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
                    .padding(.top, 3)
                    
                    Text("카카오뱅크 3333-11-7254440")
                        .foregroundColor(Color.kakaoGray300)
                        .font(.pretendard(.semibold, size: 13))
                        .padding(.top, 8)
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

struct TransferCompleteView_Previews: PreviewProvider {
    static var previews: some View {
        TransferCompleteView(mainStack: .constant(NavigationPath()))
    }
}
