//
//  LoanCompleteView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

struct LoanCompleteView: View {
    @Binding var mainStack: NavigationPath
    @Binding var inputNumber: String
    
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
                    Text("김예현님이")
                        .foregroundColor(Color.kakaoBlack300)
                        .font(.pretendard(.semibold, size: 24))
                        .padding(.top, 35)
                    HStack (spacing: 0){
                        Text("\(Int(inputNumber) ?? 0)")
                            .foregroundColor(Color.kakaoBlue300)
                            .font(.pretendard(.semibold, size: 24))
                        Text("원 보냈어요")
                            .foregroundColor(Color.kakaoBlack300)
                            .font(.pretendard(.semibold, size: 24))
                    }
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

struct LoanCompleteView_Previews: PreviewProvider {
    static var previews: some View {
        LoanCompleteView(mainStack: .constant(NavigationPath()), inputNumber: .constant("10000000"))
            .environmentObject(BankbookViewModel())
            .environmentObject(UserViewModel())
    }
}
