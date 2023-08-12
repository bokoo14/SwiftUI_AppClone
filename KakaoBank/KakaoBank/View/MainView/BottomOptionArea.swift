//
//  BottomOptionArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct BottomOptionArea: View {
    var body: some View {
        HStack (spacing: 33){
            Spacer()
            Text("간편 홈")
                .font(.pretendard(.light, size: 14))
                .foregroundColor(Color.kakaoGray200)
            Divider().frame(width: 1, height: 13).background(Color.kakaoWhite100)
            Text("화면 편집")
                .font(.pretendard(.light, size: 14))
                .foregroundColor(Color.kakaoGray200)
            Spacer()
        }
        .padding(.vertical, 38)
        .padding(.horizontal, 20)
    }
}

struct BottomOptionArea_Previews: PreviewProvider {
    static var previews: some View {
        BottomOptionArea()
    }
}
