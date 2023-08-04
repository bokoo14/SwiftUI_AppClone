//
//  ChulsseukButton.swift
//  Chulsseuk
//
//  Created by Bokyung on 2023/08/04.
//

import SwiftUI

struct ChulsseukButton: View {
    var body: some View {
        Button {
            // action
        } label: {
            Text("출쓱하기")
                .font(.pretendard(.medium, size: 20))
                .foregroundColor(.ButtonFontColor)
                .padding(.vertical, 38)
                .frame(maxWidth: .infinity)
                .background(Color.ButtonColor)
                .cornerRadius(50)
            //.background(.red) 이건 되는데
            //.background(.ButtonColor) 이건 왜 안돼? 인식을 못하나?
        } // Button
        
    }
}

struct ChulsseukButton_Previews: PreviewProvider {
    static var previews: some View {
        ChulsseukButton()
    }
}
