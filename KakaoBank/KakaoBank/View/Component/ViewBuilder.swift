//
//  ViewBuilder.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

// MARK: LoanView
@ViewBuilder
func nextBtn(isButtonActive: Bool, actionFunc: @escaping ()->Void ) -> some View {
    Button {
        // action
        actionFunc()
    } label: {
        Text("다음")
            .foregroundColor(isButtonActive ? Color.kakaoBlack300 : Color.kakaoGray200)
            .font(.pretendard(.light, size: 16))
            .padding(.vertical, 20)
            .frame(maxWidth: .infinity)
            .background(isButtonActive ? Color.kakaoYellow : Color.kakaoWhite100)
            .cornerRadius(10)
            .padding(.horizontal, 16)
    }
    .disabled(!isButtonActive) // isCorrectNumber가 false일 때 버튼 비활성화
}

// MARK: frame을 infinity로 주고, spacing을 주자 -> OK
@ViewBuilder
func addValueBtn(inputNumber: Binding<String>) -> some View {
    let inputNumberInt = Int(inputNumber.wrappedValue) ?? 0
    HStack (spacing: 48){
        Button {
            // action
            let result = inputNumberInt + 10000
            if result <= 999999999{
                inputNumber.wrappedValue = String(result)
            }
        } label: {
            Text("+1만")
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.kakaoGray300)
                .font(.pretendard(.semibold, size: 12))
                .padding(.vertical, 8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.kakaoGray100, lineWidth: 0.5)
                )
        }
        
        Button {
            // action
            let result = inputNumberInt + 50000
            if result <= 999999999{
                inputNumber.wrappedValue = String(result)
            }
        } label: {
            Text("+5만")
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.kakaoGray300)
                .font(.pretendard(.semibold, size: 12))
                .padding(.vertical, 8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.kakaoGray100, lineWidth: 0.5)
                )
        }
        
        Button {
            // action
            let result = inputNumberInt + 100000
            if result <= 999999999{
                inputNumber.wrappedValue = String(result)
            }
        } label: {
            Text("+10만")
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.kakaoGray300)
                .font(.pretendard(.semibold, size: 12))
                .padding(.vertical, 8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.kakaoGray100, lineWidth: 0.5)
                )
        }
    } // HStack
    .padding(.horizontal, 30)
}



// MARK: LoanView, TransferView -> numberKeyArea
// MARK: 변수명 btnNumberAlignment -> alignment
// MARK: btnPressed ->  isbtnPressed
@ViewBuilder
func numberBtn(btnNumberText: String, btnNumberAlignment: Alignment, inputNumber: Binding<String>, btnPressed: @escaping (String, Binding<String>)->Void) -> some View {
    
    Button {
        btnPressed(btnNumberText, inputNumber)
    } label: {
        Text(btnNumberText)
            .foregroundColor(Color.kakaoGray300)
            .font(.pretendard(.bold, size: 22))
            .frame(width: 70)
        //.border(.blue)
            .padding(.top, 27)
            .padding(.bottom, 7)
            .frame(maxWidth: .infinity, alignment: btnNumberAlignment)
        //.border(.red)
    }
}

// MARK: LoanComplete
@ViewBuilder
func completeBtn(actionFunc: @escaping ()->Void) -> some View {
    Button {
        // action
        actionFunc()
    } label: {
        Text("확인")
            .foregroundColor(Color.kakaoBlack300)
            .font(.pretendard(.medium, size: 16))
            .padding(.vertical, 20)
            .frame(maxWidth: .infinity)
            .background(Color.kakaoYellow.cornerRadius(10))
            .padding(.horizontal, 16)
    }
}


// MARK: TransferView
// 1만원, 5만원, 10만원, 전액
@ViewBuilder
func addValueBtn2(inputNumber: Binding<String>, totalMoney: Int) -> some View {
    let inputNumberInt = Int(inputNumber.wrappedValue) ?? 0
    HStack (spacing: 6.33){
        Button {
            // action
            let result = inputNumberInt + 10000
            if result <= 999999999{
                inputNumber.wrappedValue = String(result)
            }
        } label: {
            Text("+1만")
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.kakaoGray300)
                .font(.pretendard(.semibold, size: 12))
                .padding(.vertical, 8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.kakaoGray100, lineWidth: 0.5)
                )
        }
        
        Button {
            // action
            let result = inputNumberInt + 50000
            if result <= 999999999{
                inputNumber.wrappedValue = String(result)
            }
        } label: {
            Text("+5만")
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.kakaoGray300)
                .font(.pretendard(.semibold, size: 12))
                .padding(.vertical, 8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.kakaoGray100, lineWidth: 0.5)
                )
        }
        
        Button {
            // action
            let result = inputNumberInt + 100000
            if result <= 999999999{
                inputNumber.wrappedValue = String(result)
            }
        } label: {
            Text("+10만")
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.kakaoGray300)
                .font(.pretendard(.semibold, size: 12))
                .padding(.vertical, 8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.kakaoGray100, lineWidth: 0.5)
                )
        }
        
        Button {
            // action
            // 잔액이 0원이 아닐때만 버튼이 동작해야 함
            if totalMoney != 0 {
                let result = inputNumberInt + totalMoney
                if result <= 999999999{
                    inputNumber.wrappedValue = String(result)
                }
            }
        } label: {
            Text("전액")
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.kakaoGray300)
                .font(.pretendard(.semibold, size: 12))
                .padding(.vertical, 8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.kakaoGray100, lineWidth: 0.5)
                )
        }
    } // HStack
    .padding(.horizontal, 30)
}


struct ViewBuilder_Previews: PreviewProvider {

    static var previews: some View {
        nextBtn(isButtonActive: false) {}
        
        addValueBtn(inputNumber: .constant("1"))
        
        numberBtn(btnNumberText: "1", btnNumberAlignment: .leading, inputNumber: .constant("1")) { text, binding in
            // 클로저 내부의 코드 작성
        }

        completeBtn {}
        
        addValueBtn2(inputNumber: .constant("1"), totalMoney: 10000)
    }
}
