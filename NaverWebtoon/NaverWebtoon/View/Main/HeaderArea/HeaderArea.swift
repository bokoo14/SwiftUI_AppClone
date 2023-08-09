//
//  HeaderArea.swift
//  NaverWebtoon
//
//  Created by Bokyung on 2023/08/07.
//

import SwiftUI

struct HeaderArea: View {
    @State var currentIndex: Int = 1
    @GestureState var dragOffset: CGFloat = .zero
    
    var body: some View {
        let width: CGFloat = UIScreen.main.bounds.width // 현재 디스플레이의 width값
        let sideSpacing: CGFloat = 10 // 배너 좌우의 padding값 하나
        let totalSpacing: CGFloat = 16*2 // 배너를 제외한 전체 padding값
        
        GeometryReader { geo in
        ZStack (alignment: .bottomLeading){
            // MARK: 뒤의 큰 background Banner
            HStack {
            ForEach(Banners) { banner in
                Image(banner.backBannerTitle)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: width)
//                    .opacity(banner.index == currentIndex ? 1 : 0)
                
            }
        }
                
                
                // MARK: 하단의 line Banner
                HStack (spacing: sideSpacing){
                    ForEach(Banners) { banner in
                        Image(banner.lineBannerTitle)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: width - totalSpacing)
                    }
                } // HStack
                .padding(.horizontal, 16)
//                .offset(x: CGFloat(currentIndex-1) * (-width) + dragOffset)
            
            } // ZStack
            .fixedSize()
            .modifier(GetHeightModifier())
            .gesture(
                DragGesture()
                    .updating($dragOffset, body: { value, state, transaction in
                        state = value.translation.width
                    })
                    .onEnded({ value in
                        let offsetWidth = value.translation.width
                        let changePercent = (offsetWidth).magnitude / width // 전체 넓이에서 얼마만큼 변했는지
                        let ifNext = changePercent.rounded() // 0.5를 넘으면 1, 아니면 0
                        
                        currentIndex = max(min(currentIndex + Int(ifNext), Banners.count), 1) // 1~8까지의 index범위를 넘지 않도록
                    })
        )
        }.border(.blue)
    }
    
    func getOpacity() {
        
    }
}

struct HeaderArea_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArea()
    }
}
