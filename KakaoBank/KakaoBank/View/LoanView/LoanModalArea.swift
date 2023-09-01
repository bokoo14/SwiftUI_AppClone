//
//  LoanModalArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

struct LoanModalArea: View {
    @Environment(\.presentationMode) var presentaionMode
    
    @EnvironmentObject var userVM: UserViewModel
    
    @State var loanTarget: String = "김예현"
    
    @Binding var isLoanOk: Bool // 대출 완료 뷰로 넘어가기 위한 변수
    @Binding var inputNumber: String
    
    var body: some View {
        VStack (spacing: 0){
            Image("ImgProfile10")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
            HStack (spacing: 0){
                Text(loanTarget).font(.pretendard(.medium, size: 20))
                Text("님에게 ").font(.pretendard(.light, size: 20))
                Text("\(Int(inputNumber) ?? 0)원").font(.pretendard(.medium, size: 20))
            }
            .padding(.top, 20)
            
            Text("대출 받으시겠습니까?")
                .font(.pretendard(.light, size: 20))
                .padding(.top, 4)
            
            Text("받는 계좌: \(userVM.user.bankAccount)")
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
                
                // MARK: 대출받기 버튼을 눌렀을때
                // MARK: inputNumber를 UserViewModel의 user의 totalMoney를 +해줘야 함!
                Button {
                    // action
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
            LoanModalArea(isLoanOk: .constant(true), inputNumber: .constant("1000000"))
                .environmentObject(UserViewModel())
        }
    }
}
