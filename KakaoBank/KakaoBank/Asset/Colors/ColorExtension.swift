//
//  ColorExtension.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

extension Color {
    // MARK: Black
    static let kakaoBlack100 = Color("kakaoBlack100")
    static let kakaoBlack200 = Color("kakaoBlack200")
    static let kakaoBlack300 = Color("kakaoBlack300")
    
    // MARK: Blue
    static let kakaoBlue100 = Color("kakaoBlue100")
    static let kakaoBlue200 = Color("kakaoBlue200")
    static let kakaoBlue300 = Color("kakaoBlue300")
    
    // MARK: Gray
    static let kakaoGray100 = Color("kakaoGray100")
    static let kakaoGray200 = Color("kakaoGray200")
    static let kakaoGray300 = Color("kakaoGray300")
    
    // MARK: White
    static let kakaoWhite100 = Color("kakaoWhite100")
    static let kakaoWhite200 = Color("kakaoWhite200")
    static let kakaoWhite300 = Color("kakaoWhite300")
    
    // MARK: Yellow
    static let kakaoYellow = Color("kakaoYellow")
}


// hex 코드를 사용하기 위한 Color Extension
extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

