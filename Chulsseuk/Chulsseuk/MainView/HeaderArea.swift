//
//  HeaderArea.swift
//  Chulsseuk
//
//  Created by Bokyung on 2023/08/04.
//

import SwiftUI

struct HeaderArea: View {
    var body: some View {
        HStack (spacing: 16) {
            Spacer()
            Button {
                // action
            } label: {
                Image(systemName: "calendar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 28)
                    .foregroundColor(.IconColor)
            } // Button1

            Button {
                // action
            } label: {
                Image(systemName: "gearshape")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 28)
                    .foregroundColor(.IconColor)
            } // Button2
        } // HStack
        .padding(.vertical, 12)
        //.border(.red)
    }
}

struct HeaderArea_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArea()
    }
}
