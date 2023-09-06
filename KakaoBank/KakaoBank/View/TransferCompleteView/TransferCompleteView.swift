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
    
    var userName: String
    var inputNumber: Int
    
    var body: some View {
        ZStack (alignment: .bottom){
            VStack (spacing: 0){
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 55)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(Color.kakaoBlack300, Color.kakaoYellow)
                
                VStack (spacing: 3){
                    Text("\(userName)님에게")
                        .foregroundColor(Color.kakaoBlack300)
                        .font(.pretendard(.semibold, size: 24))
                        .padding(.top, 35)
                    HStack (spacing: 0){
                        Text("\(inputNumber)")
                            .foregroundColor(Color.kakaoBlue300)
                            .font(.pretendard(.semibold, size: 24))
                        Text("원 보냈어요")
                            .foregroundColor(Color.kakaoBlack300)
                            .font(.pretendard(.semibold, size: 24))
                    } // HStack
                    
                    Text("카카오뱅크 1234-5678")
                        .foregroundColor(Color.kakaoGray300)
                        .font(.pretendard(.semibold, size: 13))
                        .padding(.top, 8)
                } // Text VStack
            } // Image & Text VStack
            .padding(.bottom, 84)
            .frame(maxHeight: .infinity)

            // MARK: 완료 버튼
            completeBtn {
                mainStack = .init()
            }
            .padding(.bottom, 34)
            .padding(.top, 43)
        } // ZStack
        
    }
}

struct TransferCompleteView_Previews: PreviewProvider {
    static var previews: some View {
        TransferCompleteView(mainStack: .constant(NavigationPath()), userName: "김민경", inputNumber: 100000)
    }
}
