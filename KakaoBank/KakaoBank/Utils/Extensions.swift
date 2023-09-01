//
//  Extensions.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/31.
//

import SwiftUI

// MARK: 모든 extension들의 모음

// MARK: LoanView
extension LoanView {
    // 금액 String을 Int로 변환
    func StringToInt(StringMoney: String) -> Int {
        var IntMoney: Int
        IntMoney = Int(StringMoney) ?? 0
        return IntMoney
    }
}

// MARK: numberKeyArea
extension numberKeyArea {
    // MARK: 금액 String을 Int로 변환
    func StringToInt(StringMoney: String) -> Int {
        var IntMoney: Int
        IntMoney = Int(StringMoney) ?? 0
        return IntMoney
    }
    
    // MARK: 버튼을 눌렀을때
    // 0) 최대 금액은 9자까지 입력됩니다. (억까지)
    // 1) 빈 배열이 아니라면 ←를 눌렀을때 배열의 마지막 값 삭제
    // 2) 빈 배열이라면? ←를 눌렀을때 아무런 변화가 없어야 함
    // 3) 빈 배열이라면? "00" 혹은 "0"을 눌렀을때 아무런 변화가 없어야 함
    func btnPressed(_ btnNumberText: String, _ inputNumber: Binding<String>) {
        // 최대 금액 9자까지 입력 가능
        if inputNumber.wrappedValue.count <= 8 {
            if inputNumber.wrappedValue == "" { // 빈 배열이라면
                if btnNumberText == "←" {
                    print("빈 배열이라면? ←를 눌렀을때 아무런 변화가 없어야 함")
                } else if (btnNumberText == "00" || btnNumberText == "0") {
                    print("빈 배열이라면? 00 혹은 0을 눌렀을때 아무런 변화가 없어야 함")
                }
                else {
                    inputNumber.wrappedValue += btnNumberText
                }
            }
            else { // 빈 배열이 아니라면
                if btnNumberText == "←" {
                    inputNumber.wrappedValue.removeLast()
                } else {
                    if (inputNumber.wrappedValue.count == 8 && btnNumberText == "00") {
                        print("이미 8개라면, 00은 추가안됨")
                    } else {
                        inputNumber.wrappedValue += btnNumberText
                    }
                }
            }
        } // 8개 이하
        else if (inputNumber.wrappedValue.count == 9 && btnNumberText == "←") {
            inputNumber.wrappedValue.removeLast()
        }

    } // func btnPressed
} // extension numberKeyArea
