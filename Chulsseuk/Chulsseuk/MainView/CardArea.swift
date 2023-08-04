//
//  CardArea.swift
//  Chulsseuk
//
//  Created by Bokyung on 2023/08/04.
//

import SwiftUI

struct CardArea: View {
    var body: some View {
        CardFront()
    }
}

struct CardFront: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.white)
            .shadow(color: .black.opacity(0.85), radius: 8.5, x: 0, y: 4)
            .overlay(alignment: .center) {
                VStack(spacing: 0) {
                    Text("한눈에 보는 출석 규정")
                    Image("ImgageCalendar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                }
            }
        
    }
}




struct CardBack: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.white)
            .shadow(color: .black.opacity(0.85), radius: 8.5, x: 0, y: 4)
            .overlay(alignment: .center) {
                VStack(spacing: 0) {
                    Text("한눈에 보는 출석 규정")
                    Image("ImgageCalendar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                }
            }
        
    }
}



struct CardArea_Previews: PreviewProvider {
    static var previews: some View {
        CardArea()
    }
}
