//
//  DeviceSize.swift
//  Chulsseuk
//
//  Created by Bokyung on 2023/08/06.
//


/**
 iPhone 디바이스별 크기
 -> https://haraj.tistory.com/859
 */

import SwiftUI

// Device의 width
struct DeviceSize {
    static let iPhoneSE: CGFloat = 375 // 375x667pt(750x1334픽셀 @2x)
    static let iPhone14: CGFloat = 390 // 390x844pt(1170x2532픽셀 @3x)
    static let iPhone14Pro: CGFloat = 393 // 393x852pt(1179x2556픽셀 @3x)
    static let iPhone14ProMax: CGFloat = 430 // 430x932pt(1290x2796픽셀 @3x)
    static let width: CGFloat = UIScreen.main.bounds.width // 현재 디바이스의 width값
}

// iPhoneSE의 크기만 신경써주면 된다!
