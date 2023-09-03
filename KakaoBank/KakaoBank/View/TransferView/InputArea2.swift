//
//  InputArea2.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/09/03.
//

import SwiftUI

struct InputArea2: View {
    @EnvironmentObject var bankbookVM: BankbookViewModel
    @Binding var inputNumber: String
    
    var body: some View {
        VStack (spacing: 0){
            Spacer()
            HStack (spacing: 2){
                if inputNumber == "" { // 빈 문자열이라면 대출금액
                    Text("보낼금액")
                        .foregroundColor(Color.kakaoGray100)
                        .font(.pretendard(.medium, size: 36))
                } else { // 빈 문자열이 아니라면, 금액을 보여줌
                    // MARK: 현재 잔약보다 높은 금액 입력시, 폰트의 색이 변함과 동시에 "출금 계죄 잔고 부족"이라는 에러 메시지 표시
                    if bankbookVM.bankbook.totalMoney < Int(inputNumber) ?? 0 {
                        Text("\(Int(inputNumber) ?? 0)")
                            .foregroundColor(Color(hex: 0xEB4D39))
                            .font(.pretendard(.semibold, size: 48))
                        Text("원")
                            .foregroundColor(Color.kakaoBlack200)
                            .font(.pretendard(.semibold, size: 38))
                    } else {
                        Text("\(Int(inputNumber) ?? 0)")
                            .foregroundColor(Color.kakaoBlack200)
                            .font(.pretendard(.semibold, size: 48))
                        Text("원")
                            .foregroundColor(Color.kakaoBlack200)
                            .font(.pretendard(.semibold, size: 38))
                    }
                }
            } // HStack
            .frame(maxWidth: .infinity)
            Spacer()
        } // VStack
        //.border(.red)
    }
}

struct InputArea2_Previews: PreviewProvider {
    static var previews: some View {
        InputArea2(inputNumber: .constant(""))
            .environmentObject(BankbookViewModel())
    }
}
