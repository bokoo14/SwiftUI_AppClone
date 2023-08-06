//
//  MainView.swift
//  Chulsseuk
//
//  Created by Bokyung on 2023/08/04.
//

import SwiftUI

struct MainView: View {
    var body: some View {
            ZStack {
                Color.BackgroundColor.ignoresSafeArea()
                
                VStack(spacing: 0) {
                    HeaderArea()
                        .padding(.horizontal, 30)
                        .padding(.bottom, 20)
                        .padding(.top, DeviceSize.width > DeviceSize.iPhoneSE ? 0 : 20)
                    FightingArea()
                        .padding(.horizontal, 25)
                        .padding(.bottom, 38)
                    
                    CardArea()
                        .padding(.bottom, 30)
                    
                    ChulsseukButton()
                        .padding(.horizontal, 25)
                        .padding(.bottom, DeviceSize.width > DeviceSize.iPhoneSE ? 0 : 20)
                } // VStack
            } // ZStack
            .ignoresSafeArea()
        
    }
}

// 375 SE

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
