//
//  InputNumberArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/06.
//

import SwiftUI

struct InputNumberArea: View {
    var body: some View {
        VStack (spacing: 0){
            HStack (spacing: 0){
                Text("1")
                    .padding(.vertical, 9)
                    .frame(width: 80)
                    .border(.blue)
                    .padding(.vertical, 14)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .border(.red)
                
                Text("2")
                    .padding(.vertical, 9)
                    .frame(width: 80)
                    .border(.blue)
                    .padding(.vertical, 14)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .border(.red)
                
                Text("3")
                    .padding(.vertical, 9)
                    .frame(width: 80)
                    .border(.blue)
                    .padding(.vertical, 14)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .border(.red)
            } // HStack1
            
            HStack (spacing: 0){
                Text("4")
                    .padding(.vertical, 9)
                    .frame(width: 80)
                    .border(.blue)
                    .padding(.vertical, 14)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .border(.red)
                
                Text("5")
                    .padding(.vertical, 9)
                    .frame(width: 80)
                    .border(.blue)
                    .padding(.vertical, 14)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .border(.red)
                
                Text("6")
                    .padding(.vertical, 9)
                    .frame(width: 80)
                    .border(.blue)
                    .padding(.vertical, 14)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .border(.red)
            } // HStack2
            
            HStack (spacing: 0){
                Text("7")
                    .padding(.vertical, 9)
                    .frame(width: 80)
                    .border(.blue)
                    .padding(.vertical, 14)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .border(.red)
                
                Text("8")
                    .padding(.vertical, 9)
                    .frame(width: 80)
                    .border(.blue)
                    .padding(.vertical, 14)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .border(.red)
                
                Text("9")
                    .padding(.vertical, 9)
                    .frame(width: 80)
                    .border(.blue)
                    .padding(.vertical, 14)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .border(.red)
            } // HStack3
            
            HStack (spacing: 0){
                Text("00")
                    .padding(.vertical, 9)
                    .frame(width: 80)
                    .border(.blue)
                    .padding(.vertical, 14)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .border(.red)
                
                Text("0")
                    .padding(.vertical, 9)
                    .frame(width: 80)
                    .border(.blue)
                    .padding(.vertical, 14)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .border(.red)
                
                Text("<-")
                    .padding(.vertical, 9)
                    .frame(width: 80)
                    .border(.blue)
                    .padding(.vertical, 14)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .border(.red)
            } // HStack4
        }
        .padding(.horizontal, 10)
    }
}

struct InputNumberArea_Previews: PreviewProvider {
    static var previews: some View {
        InputNumberArea()
    }
}
