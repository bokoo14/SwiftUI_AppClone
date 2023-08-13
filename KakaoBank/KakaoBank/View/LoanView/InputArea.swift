//
//  InputArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

struct InputArea: View {
    @State var currentMoney: Int = 0
    var body: some View {
        VStack (spacing: 0){
            Spacer()
            HStack (spacing: 2){
                if currentMoney <= 0 {
                    Text("대출금액")
                        .foregroundColor(Color.kakaoGray100)
                        .font(.pretendard(.medium, size: 36))
                } else {
                    Text("\(currentMoney)")
                        .foregroundColor(Color.kakaoBlack200)
                        .font(.pretendard(.semibold, size: 48))
                    Text("원")
                        .foregroundColor(Color.kakaoBlack200)
                        .font(.pretendard(.semibold, size: 38))
                }
            } // HStack
            .frame(maxWidth: .infinity)
            //.padding(.vertical, 118)
            Spacer()
        } // VStack
    }
}

struct InputArea_Previews: PreviewProvider {
    static var previews: some View {
        InputArea()
    }
}
