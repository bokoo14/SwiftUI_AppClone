//
//  CardArea.swift
//  Chulsseuk
//
//  Created by Bokyung on 2023/08/04.
//

import SwiftUI

struct CardArea: View {
    var body: some View {
        ZStack {
            Color.BackgroundColor
            CardFront()
        }
        
    }
}

struct CardFront: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.white)
            .frame(width: 343, height: 463)
            .cornerRadius(24)
            .shadow(color: .black.opacity(0.05), radius: 8.5, x: 0, y: 4)
            .overlay(alignment: .top) {
                VStack(spacing: 0) {
                    Image("ImageMain")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 151, height: 226)
                        .padding(.top, 85)
                        //.frame(maxWidth: .infinity)
                    
                    Text("오늘은 아카데미 휴일!\n푹 쉬고 다음에 만나요.")
                        .multilineTextAlignment(.center)
                        .lineSpacing(6)
                        .foregroundColor(.TextColor)
                        .font(.pretendard(.medium, size: 20))
                        .padding(.top, 42)
                    
                    HStack (spacing: 1){
                        Text("출석 규정 보러가기")
                            .font(.pretendard(.medium, size: 13))
                            .foregroundColor(.NavigationColor)
                        Image(systemName: "chevron.right")
                            .font(.pretendard(.medium, size: 13))
                            .foregroundColor(.NavigationColor)
                    }
                    .padding(.top, 16)
                    
                } // VStack
            } // overlay
    }
}




struct CardBack: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.white)
            .frame(width: 343, height: 463)
            .cornerRadius(24)
            .shadow(color: .black.opacity(0.05), radius: 8.5, x: 0, y: 4)
            .overlay(alignment: .top) {
                VStack(spacing: 0) {
                    Text("한눈에 보는 출석 규정")
                        .foregroundColor(.TextColor)
                        .font(.pretendard(.medium, size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 32)
                        .padding(.leading, 40)
                        .padding(.bottom, 34)
                    Image("ImgageCalendar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 164, height: 309)
                        //.frame(maxWidth: .infinity)
                } // VStack
            } // overlay
        
    }
}



struct CardArea_Previews: PreviewProvider {
    static var previews: some View {
        CardArea()
        CardFront()
        CardBack()
    }
}
