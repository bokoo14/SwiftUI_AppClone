//
//  FightingArea.swift
//  Chulsseuk
//
//  Created by Bokyung on 2023/08/04.
//

import SwiftUI

struct FightingArea: View {
    @State var userName: String = "Malty"
    
    var body: some View {
        HStack (spacing: 0) {
            VStack (spacing: 8){
                Text("월클 디벨로퍼 \(userName).")
                    .font(.system(size: 18))
                    .border(.red)
                Text("오늘도 화이팅하세요!")
                    .border(.red)
            } // VStack
            .border(.red)
            Spacer()
        } // HStack
        .border(.red)
    }
}

struct FightingArea_Previews: PreviewProvider {
    static var previews: some View {
        FightingArea()
    }
}
