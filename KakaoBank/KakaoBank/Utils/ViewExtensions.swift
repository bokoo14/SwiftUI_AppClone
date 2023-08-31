//
//  ViewExtensions.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/31.
//

import SwiftUI

struct ViewExtensions: View {
    var body: some View {
        Text("Hello, World!")
    }
}

extension View {
    func makeRedCapsuleBackground() -> some View {
        self
            .padding()
            .background(
                Capsule()
                    .foregroundColor(.red)
            )
    }
}


struct ViewExtensions_Previews: PreviewProvider {
    static var previews: some View {
        ViewExtensions()
    }
}
