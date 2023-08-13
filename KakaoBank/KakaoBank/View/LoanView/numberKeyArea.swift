//
//  numberKeyArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

struct numberKeyArea: View {
    let gridItem: [GridItem] = [GridItem(), GridItem(), GridItem()]
    var body: some View {
                VStack (spacing: 0){
                    HStack (spacing: 0){
                        numberBtn(btnNumberText: "1", btnNumberAlignment: .leading)
        
                        numberBtn(btnNumberText: "2", btnNumberAlignment: .center)
        
                        numberBtn(btnNumberText: "3", btnNumberAlignment: .trailing)
                    } // HStack1
        
                    HStack (spacing: 0){
                        numberBtn(btnNumberText: "4", btnNumberAlignment: .leading)
        
                        numberBtn(btnNumberText: "5", btnNumberAlignment: .center)
        
                        numberBtn(btnNumberText: "6", btnNumberAlignment: .trailing)
                    } // HStack2
        
        
                    HStack (spacing: 0){
                        numberBtn(btnNumberText: "7", btnNumberAlignment: .leading)
        
                        numberBtn(btnNumberText: "8", btnNumberAlignment: .center)
        
                        numberBtn(btnNumberText: "9", btnNumberAlignment: .trailing)
                    } // HStack3
        
                    HStack (spacing: 0){
                        numberBtn(btnNumberText: "00", btnNumberAlignment: .leading)
        
                        numberBtn(btnNumberText: "0", btnNumberAlignment: .center)
        
                        numberBtn(btnNumberText: "←", btnNumberAlignment: .trailing)
                    } // HStack4
                } // VStack
                .padding(.horizontal, 29.5 )
     
        
    }
}

struct numberKeyArea_Previews: PreviewProvider {
    static var previews: some View {
        numberKeyArea()
    }
}
