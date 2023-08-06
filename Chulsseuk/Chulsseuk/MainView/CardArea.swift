//
//  CardArea.swift
//  Chulsseuk
//
//  Created by Bokyung on 2023/08/04.
//

import SwiftUI

struct CardArea: View {
    @State var isFlipped = false
    @State var frontDegree = 0.0
    @State var backDegree = 90.0
    @State var duration : CGFloat = 0.3
    
    func flip() {
        isFlipped.toggle()
        
        if isFlipped { // 앞면일때 -> 뒷면으로 Flip
            withAnimation(.linear(duration: duration)) {
                frontDegree = -90
            }
            // duration을 줘야 함! -> 동시에 withAnimation을 주게 되면 앞뒤 카드가 동시에 바뀌게 되어서 안이쁨
            withAnimation(.linear(duration: duration).delay(duration)) {
                backDegree = 0
            }
        } else { // 뒷면일때 -> 앞면으로 Flip
            withAnimation(.linear(duration: duration)) {
                backDegree = 90
            }
            withAnimation(.linear(duration: duration).delay(duration)) {
                frontDegree = 0
            }
        }
    }
    
    var body: some View {
        ZStack { // ZStack
            CardFront(frontDegree: $frontDegree)
            CardBack(backDegree: $backDegree)
        } .onTapGesture {
            flip()
        }
    }
}

struct CardFront: View {
    @Binding var frontDegree: Double
    
    var body: some View {
        VStack (spacing: 0){
            Image("ImageMain")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 90)
            
            Text("오늘은 아카데미 휴일!\n푹 쉬고 다음에 만나요.")
                .multilineTextAlignment(.center)
                .lineSpacing(6)
                .foregroundColor(.TextColor)
                .font(.pretendard(.medium, size: 20))
                .padding(.top, 42)
            
            HStack (spacing: 1) {
                Text("출석 규정 보러가기")
                    .font(.pretendard(.medium, size: 13))
                    .foregroundColor(.NavigationColor)
                Image(systemName: "chevron.right")
                    .font(.pretendard(.medium, size: 13))
                    .foregroundColor(.NavigationColor)
            } // HStack
            .padding(.top, 10)
        } // VStack
        .padding(.top, 85)
        .padding(.bottom, 30)
        .frame(maxWidth: .infinity)
        .background(Color.CardBackgroundColor)
        .cornerRadius(24)
        .shadow(color: .black.opacity(0.05), radius: 8.5, x: 0, y: 4)
        .padding(.horizontal, 30)
        .rotation3DEffect(Angle(degrees: frontDegree),axis: (x: 0, y: 1, z: 0), perspective: 0.2)
    }
}


struct CardBack: View {
    @Binding var backDegree: Double
    
    var body: some View {
        VStack (spacing: 34){
            Text("한눈에 보는 출석 규정")
                .foregroundColor(.TextColor)
                .font(.pretendard(.medium, size: 20))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 40)
                .padding(.bottom, 34)
            Image("ImgageCalendar")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 90)
        }
        .padding(.top, 32)
        .padding(.bottom, 64)
        .frame(maxWidth: .infinity)
        .background(Color.CardBackgroundColor)
        .cornerRadius(24)
        .padding(.horizontal, 30)
        .shadow(color: .black.opacity(0.05), radius: 8.5, x: 0, y: 4)
        .rotation3DEffect(Angle(degrees: backDegree),axis: (x: 0, y: 1, z: 0), perspective: 0.2)
    }
}



struct CardArea_Previews: PreviewProvider {
    static var previews: some View {
        CardArea()
        CardFront(frontDegree: .constant(0))
        CardBack(backDegree: .constant(90))
    }
}
