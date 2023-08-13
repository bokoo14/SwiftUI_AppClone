//
//  InputArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

struct InputArea: View {
    @State var currentMoney: Int = 50000
    var body: some View {
        HStack (spacing: 2){
            Text("\(currentMoney)")
                .foregroundColor(Color.kakaoBlack200)
                .font(.pretendard(.semibold, size: 48))
            Text("원")
                .foregroundColor(Color.kakaoBlack200)
                .font(.pretendard(.semibold, size: 38))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 118)
        .border(.red)
        
    }
}

struct InputArea_Previews: PreviewProvider {
    static var previews: some View {
        InputArea()
    }
}
