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
            Image(systemName: "calendar")
                .font(.system(size: 22.67))
            Image(systemName: "gearshape")
                .font(.system(size: 22.67))
        }
        .padding(.vertical, 12)
        .border(.red)
    }
}

struct HeaderArea_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArea()
    }
}
