//
//  ViewBuilder.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

// MARK: LoanView
@ViewBuilder
func nextBtn(isCorrectNumber: Bool, actionFunc: @escaping ()->Void) -> some View {
    Button {
        // action
        actionFunc()
    } label: {
        Text("다음")
            .foregroundColor(Color.kakaoGray200)
            .font(.pretendard(.light, size: 16))
            .padding(.vertical, 20)
            .frame(maxWidth: .infinity)
            .background(isCorrectNumber ? Color.kakaoYellow : Color.kakaoWhite100)
            .cornerRadius(10)
            .padding(.horizontal, 16)
    }
    .disabled(!isCorrectNumber) // isCorrectNumber가 false일 때 버튼 비활성화
}

// MARK: frame을 infinity로 주고, spacing을 주자
@ViewBuilder
func addValueBtn() -> some View {
    HStack (spacing: 0){
        Button {
            // action
        } label: {
            Text("+1만")
                .foregroundColor(Color.kakaoGray300)
                .font(.pretendard(.regular, size: 12))
                .padding(.vertical, 8)
                .padding(.horizontal, 27)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.kakaoGray100, lineWidth: 0.5)
                )
        }
        Spacer()
        Button {
            // action
        } label: {
            Text("+5만")
                .foregroundColor(Color.kakaoGray300)
                .font(.pretendard(.regular, size: 12))
                .padding(.vertical, 8)
                .padding(.horizontal, 26)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.kakaoGray100, lineWidth: 0.5)
                )
        }
        Spacer()
        Button {
            // action
        } label: {
            Text("+10만")
                .foregroundColor(Color.kakaoGray300)
                .font(.pretendard(.regular, size: 12))
                .padding(.vertical, 8)
                .padding(.horizontal, 24)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.kakaoGray100, lineWidth: 0.5)
                )
        }
    } // HStack
    .padding(.horizontal, 30)
}


// MARK: LoanView -> numberKeyArea
@ViewBuilder
func numberBtn(btnNumberText: String, btnNumberAlignment: Alignment) -> some View {
    Button {
        // action
    } label: {
        Text(btnNumberText)
            .foregroundColor(Color.kakaoGray300)
            .font(.pretendard(.medium, size: 22))
            .frame(width: 70)
        .border(.blue)
            .padding(.top, 27)
            .padding(.bottom, 7)
            .frame(maxWidth: .infinity, alignment: btnNumberAlignment)
        .border(.red)
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



struct ViewBuilder_Previews: PreviewProvider {
    static var previews: some View {
        nextBtn(isCorrectNumber: false) {
            
        }
        addValueBtn()
        numberBtn(btnNumberText: "1", btnNumberAlignment: .leading)
        completeBtn {
            
        }
    }
}
