//
//  BannerArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct BannerArea: View {
    var body: some View {
        HStack (spacing: 0){
            VStack (alignment: .leading, spacing: 5){
                Text("이번 달까지만 혜택 드려요")
                    .font(.pretendard(.medium, size: 14))
                Text("랜덤 캐시가 쏙! 신용관리 루틴 챌린지")
                    .font(.pretendard(.semibold, size: 14))
            }
            .padding(.vertical, 12)
                .padding(.leading, 24)
            .frame(maxWidth: .infinity, alignment: .leading)
            .overlay (alignment: .trailing) {
                Image("ImgCharacter")
                    .resizable()
                    .scaledToFit()
                    .padding(.vertical, 8)
                    .padding(.trailing, 20)
            }
        }
        .frame(maxWidth: .infinity)
        .background(
            Color.kakaoWhite200.cornerRadius(20)
        )
        .padding(.horizontal, 20)
    }
}

struct BannerArea_Previews: PreviewProvider {
    static var previews: some View {
        BannerArea()
    }
}
