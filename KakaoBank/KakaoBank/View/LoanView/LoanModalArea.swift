//
//  LoanModalArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

struct LoanModalArea: View {
    @Environment(\.presentationMode) var presentaionMode
    @State var loanTarget: String = "일론머스크"
    @State var loanMoney: Int = 500000000
    
    @Binding var isLoanOk: Bool // 대출 완료 뷰로 넘어가기 위한 변수
    
    var body: some View {
        VStack (spacing: 0){
            Image("ImgProfile02")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
            HStack (spacing: 0){
                Text(loanTarget).font(.pretendard(.medium, size: 20))
                Text("님에게 ").font(.pretendard(.light, size: 20))
                Text("\(loanMoney)원").font(.pretendard(.medium, size: 20))
            }
            .padding(.top, 20)
            
            Text("대출 받으시겠습니까?")
                .font(.pretendard(.light, size: 20))
                .padding(.top, 4)
            
            Text("받는 계좌: 3333-07-6239583")
                .foregroundColor(Color.kakaoGray300)
                .font(.pretendard(.light, size: 13))
                .padding(.top, 14)
            
            // MARK: 취소, 대출받기 Button
            HStack (spacing: 9){
                Button {
                    presentaionMode.wrappedValue.dismiss()
                } label: {
                    Text("취소")
                        .foregroundColor(Color.kakaoBlack300)
                        .font(.pretendard(.light, size: 16))
                        .padding(.vertical, 20)
                        .padding(.horizontal, 56)
                        .background(Color.kakaoWhite100.cornerRadius(10))
                }
                
                Button {
                    presentaionMode.wrappedValue.dismiss()
                    isLoanOk = true
                } label: {
                    Text("대출받기")
                        .foregroundColor(Color.kakaoBlack300)
                        .font(.pretendard(.light, size: 16))
                        .padding(.vertical, 20)
                        .frame(maxWidth: .infinity)
                        .background(Color.kakaoYellow.cornerRadius(10))
                }

//                Button {
//                    presentaionMode.wrappedValue.dismiss()
//                } label: {
//                    Text("대출받기")
//                        .foregroundColor(Color.kakaoBlack300)
//                        .font(.pretendard(.light, size: 16))
//                        .padding(.vertical, 20)
//                        .frame(maxWidth: .infinity)
//                        .background(Color.kakaoYellow.cornerRadius(10))
//                }
            } // Button HStack
            .padding(.top, 43)
            Spacer()
        } // VStack
        .padding(.top, 50)
        .padding(.horizontal, 16)
    }
}

struct LoaㄴnModalArea_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoanModalArea(isLoanOk: .constant(true))
        }
    }
}
