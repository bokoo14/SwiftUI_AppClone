//
//  MainView.swift
//  Chulsseuk
//
//  Created by Bokyung on 2023/08/04.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 0) {
            HeaderArea()
                .padding(.horizontal, 30)
            FightingArea()
                .padding(.horizontal, 25)
                .padding(.bottom, 38)
            CardArea()
            ButtonArea()
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}