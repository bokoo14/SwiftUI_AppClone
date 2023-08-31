//
//  InputArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

struct InputArea: View {
    @Binding var inputNumber: String
    
    var body: some View {
        VStack (spacing: 0){
            Spacer()
            HStack (spacing: 2){
                if inputNumber == "" { // 빈 문자열이라면 대출금액
                    Text("대출금액")
                        .foregroundColor(Color.kakaoGray100)
                        .font(.pretendard(.medium, size: 36))
                } else { // 빈 문자열이 아니라면, 금액을 보여줌
                    Text("\(Int(inputNumber) ?? 0)")
                        .foregroundColor(Color.kakaoBlack200)
                        .font(.pretendard(.semibold, size: 48))
                    Text("원")
                        .foregroundColor(Color.kakaoBlack200)
                        .font(.pretendard(.semibold, size: 38))
                }
            } // HStack
            .frame(maxWidth: .infinity)
            Spacer()
        } // VStack
        .border(.red)
    }
}

struct InputArea_Previews: PreviewProvider {
    static var previews: some View {
        InputArea(inputNumber: .constant(""))
    }
}
