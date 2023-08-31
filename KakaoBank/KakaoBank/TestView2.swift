//
//  numberKeyArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

struct Test2: View {
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
    
    let keyPad2: [[String: Alignment]] = [
        ["1": .leading], ["2": .center], ["3": .trailing],
        ["4": .leading], ["5": .center], ["6": .trailing],
        ["7": .leading], ["8": .center], ["9": .trailing],
        ["00": .leading], ["0": .center], ["←": .trailing]
    ]
    
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 0) {
            //            ForEach(keyPad2, id: \.self) { keyValuePair in
            //                let key = keyValuePair.keys.first ?? "" // Get the key from the dictionary
            //                let alignment = keyValuePair.values.first ?? .center // Get the value (Alignment) from the dictionary
            //                numberBtn(btnNumberText: key, btnNumberAlignment: alignment)
            //            }
            
            // array값에 enumerated()함수를 사용하면, (index, value) 튜플형식으로 구현된 리스트형이 리턴
            // id: \.element.0은 각 원소의 첫 번째 요소를 고유 식별자로 사용하겠다는 의미
            ForEach(Array(keyPad.enumerated()), id: \.element.0) { index, keyValuePair in
//                numberBtn(btnNumberText: keyValuePair.0, btnNumberAlignment: keyValuePair.1)
            }
        } // LazyVGrid
        .border(.red).padding(.horizontal, 29.5)
        
        //                VStack (spacing: 0){
        //                    HStack (spacing: 0){
        //                        numberBtn(btnNumberText: "1", btnNumberAlignment: .leading)
        //
        //                        numberBtn(btnNumberText: "2", btnNumberAlignment: .center)
        //
        //                        numberBtn(btnNumberText: "3", btnNumberAlignment: .trailing)
        //                    } // HStack1
        //
        //                    HStack (spacing: 0){
        //                        numberBtn(btnNumberText: "4", btnNumberAlignment: .leading)
        //
        //                        numberBtn(btnNumberText: "5", btnNumberAlignment: .center)
        //
        //                        numberBtn(btnNumberText: "6", btnNumberAlignment: .trailing)
        //                    } // HStack2
        //
        //
        //                    HStack (spacing: 0){
        //                        numberBtn(btnNumberText: "7", btnNumberAlignment: .leading)
        //
        //                        numberBtn(btnNumberText: "8", btnNumberAlignment: .center)
        //
        //                        numberBtn(btnNumberText: "9", btnNumberAlignment: .trailing)
        //                    } // HStack3
        //
        //                    // TODO:
        //                    // 1. 빈 문자열일때 00, 0, ← 을 눌렀을때 아무런 변화가 없어야 함
        //                    // 2. 빈 문자열이 아닐때, ← 을 눌렀을때 문자열의 가장 마지막 문자가 삭제되어야 함
        //                    HStack (spacing: 0){
        //                        numberBtn(btnNumberText: "00", btnNumberAlignment: .leading)
        //
        //                        numberBtn(btnNumberText: "0", btnNumberAlignment: .center)
        //
        //                        numberBtn(btnNumberText: "←", btnNumberAlignment: .trailing)
        //                    } // HStack4
        //                } // VStack
        //                .border(.red)
        //                .padding(.horizontal, 29.5 )
    }
    
    func btnPressed() {
        
    }
    
}

struct Test2_Previews: PreviewProvider {
    static var previews: some View {
        Test2(inputNumber: .constant(""))
    }
}
