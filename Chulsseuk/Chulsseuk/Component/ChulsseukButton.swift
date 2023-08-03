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
                .foregroundColor(.black)
        }

    }
}

struct ChulsseukButton_Previews: PreviewProvider {
    static var previews: some View {
        ChulsseukButton()
    }
}
