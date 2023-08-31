//
//  numberKeyArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

struct numberKeyArea: View {
    @Binding var inputNumber: String // 버튼을 눌렀을때 저장되는 값
    
    let gridItems: [GridItem] = [
        GridItem(.flexible(), spacing: 0, alignment: .center),
        GridItem(.flexible(), spacing: 0, alignment: .center),
        GridItem(.flexible(), spacing: 0, alignment: .center)
    ]
    
    let keyPad: [(String, Alignment)] = [
        ("1", .leading), ("2", .center), ("3", .trailing),
        ("4", .leading), ("5", .center), ("6", .trailing),
        ("7", .leading), ("8", .center), ("9", .trailing),
        ("00", .leading), ("0", .center), ("←", .trailing)
    ]
    
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 0) {
            // array값에 enumerated()함수를 사용하면, (index, value) 튜플형식으로 구현된 리스트형이 리턴
            // id: \.element.0은 각 원소의 첫 번째 요소를 고유 식별자로 사용하겠다는 의미
            ForEach(Array(keyPad.enumerated()), id: \.element.0) { index, keyValuePair in
                numberBtn(btnNumberText: keyValuePair.0, btnNumberAlignment: keyValuePair.1,
                          inputNumber: $inputNumber, btnPressed: btnPressed)
            } // ForEach
        } // LazyVGrid
        .border(.red)
        .padding(.horizontal, 29.5)
    }
}


struct numberKeyArea_Previews: PreviewProvider {
    static var previews: some View {
        numberKeyArea(inputNumber: .constant(""))
    }
}
