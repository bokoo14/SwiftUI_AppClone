//
//  TransferModalArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/15.
//

import SwiftUI

struct TransferModalArea: View {
    //@EnvironmentObject var
    @Environment(\.presentationMode) var presentaionMode
    @EnvironmentObject var userVM: UserViewModel
    @EnvironmentObject var bankbookVM: BankbookViewModel
    @EnvironmentObject var transactionVM: TransactionViewModel

    
    @Binding var isLoanOk: Bool // 대출 완료 뷰로 넘어가기 위한 변수
    @Binding var inputNumber: String
    
    var userProfileTitle: String
    var userName: String
    var bankAccount: String
    
    var body: some View {
        let currentUserBankAccount: String = bankbookVM.bankbook.userBankAccount // 현재 유저의 계좌번호
        let lastTotalMoney: Int = bankbookVM.bankbook.totalMoney // 현재 유저의 거래 전 가장 최근의 통장 잔액
        
        VStack (spacing: 0){
            Image(userProfileTitle)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .frame(width: 50)
            HStack (spacing: 0){
                Text(userName).font(.pretendard(.medium, size: 20))
                Text("님에게 ").font(.pretendard(.light, size: 20))
                Text("\(Int(inputNumber) ?? 0)원").font(.pretendard(.medium, size: 20))
            }
            .padding(.top, 20)
            
            Text("이체하시겠습니까?")
                .font(.pretendard(.light, size: 20))
                .padding(.top, 14)
            
            Text("받는 계좌: \(bankAccount)")
                .foregroundColor(Color.kakaoGray300)
                .font(.pretendard(.light, size: 13))
                .padding(.top, 4)
            
            // MARK: 취소, 이체하기 Button
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
                
                // MARK: inputNumber를 UserViewModel의 user의 totalMoney를 - 해줘야 함!
                // MARK: AccountViewModel에 transferMoney함수 실행(account에 )
                Button {
                    presentaionMode.wrappedValue.dismiss()
                    isLoanOk = true
                    bankbookVM.TransferUpdateData(transferMoney: Int(inputNumber) ?? 0)
                    transactionVM.UpdateData(userBankAccount: currentUserBankAccount, senderAccountNumber: bankAccount, senderName: userName, transactionType: "#이체", totalMoney: lastTotalMoney - (Int(inputNumber) ?? 0), transactionMoney: Int(inputNumber) ?? 0)
                } label: {
                    Text("이체하기")
                        .foregroundColor(Color.kakaoBlack300)
                        .font(.pretendard(.light, size: 16))
                        .padding(.vertical, 20)
                        .frame(maxWidth: .infinity)
                        .background(Color.kakaoYellow.cornerRadius(10))
                }
            } // Button HStack
            .padding(.top, 43)
            .padding(.bottom, 34)
        } // VStack
        .padding(.top, 50)
        .padding(.horizontal, 16)
    }

}

struct TransferModalArea_Previews: PreviewProvider {
    static var previews: some View {
        TransferModalArea(isLoanOk: .constant(true), inputNumber: .constant("1000000"), userProfileTitle: "ImgProfile02", userName: "엠케이", bankAccount: "123456")
            .environmentObject(UserViewModel())
            .environmentObject(BankbookViewModel())
            .environmentObject(TransactionViewModel())
    }
}
