//
//  TransferView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/15.
//

import SwiftUI

// MARK: 이체하기
struct TransferView: View {
    @EnvironmentObject var bankbookVM: BankbookViewModel
    
    @State var isShowModal: Bool = false
    @State var isLoanOk: Bool = false
    @Binding var mainStack: NavigationPath
    
    var userProfileTitle: String
    var userName: String
    var bankAccount: String
    
    @State var inputNumber: String = "" // 버튼을 눌렀을때 저장되는 값
    
    
//    TransferView(mainStack: $mainStack, userProfileTitle: otherUser.userProfileTitle, userName: otherUser.userName, bankAccount: bankbookVM.othersBankbook.first(where: { $0.userID == otherUser.userID })?.userBankAccount ?? "")
    var body: some View {
        VStack (spacing: 12){
            InputArea2(inputNumber: $inputNumber)
                .overlay { // alignment: .center
                    if (bankbookVM.bankbook.totalMoney < Int(inputNumber) ?? 0 ) {
                        HStack (spacing: 6){
                            Text("출금계좌 잔고 부족")
                                .font(.pretendard(.medium, size: 13))
                                .foregroundColor(.black)
                            Text("대출받기")
                                .font(.pretendard(.medium, size: 13))
                                .foregroundColor(Color(hex: 0x333333))
                                .underline()
                        } // HStack
                        .offset(y: 24 + 20)
                    } else {
                        if (StringToInt(StringMoney: inputNumber) >= 10000) { // 1만원 이상이라면 만원대의 금액부터 단위 문구를 나타냄
                            Text("\(StringToInt(StringMoney: inputNumber)/10000)만 \(StringToInt(StringMoney: inputNumber)%10000)원")
                                .font(.pretendard(.medium, size: 13))
                                .foregroundColor(.kakaoGray200)
                                .offset(y: 24 + 20)
                            // (Text의 크기 48)/2 + (spacing값 20)
                        }
                    } // 현재 잔액 한도 안이라면
                    
                } // overlay
            
            BalanceArea()
            addValueBtn2(inputNumber: $inputNumber, totalMoney: bankbookVM.bankbook.totalMoney)
            numberKeyArea(inputNumber: $inputNumber)
            nextBtn(isButtonActive: true, actionFunc: showModal)
            
            NavigationLink("", isActive: $isLoanOk, destination: {
                //TransferCompleteView(mainStack: $mainStack)
                TransferCompleteView(mainStack: $mainStack, userName: userName, inputNumber: StringToInt(StringMoney: inputNumber))
            })
            
        }
        .sheet(isPresented: $isShowModal, content: {
            TransferModalArea(isLoanOk: $isLoanOk, inputNumber: $inputNumber, userProfileTitle: userProfileTitle, userName: userName, bankAccount: bankAccount)
                .presentationDetents([.sheetSize])
        })
        .navigationTitle("이체하기")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            HStack {
                Button {
                    // action
                } label: {
                    // MARK: 이거 font로 하는게 맞을까 frame으로 하는게 맞을까?
                    Image(systemName: "gearshape")
                    //.font(.system(size: 20))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25)
                }
            }
        } // toolbar
    }
    
    func showModal() {
        isShowModal = true
    }
}


struct TransferView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TransferView(mainStack: .constant(NavigationPath()), userProfileTitle: "ImgProfile02", userName: "엠케이", bankAccount: "222222222")
                .environmentObject(UserViewModel())
                .environmentObject(BankbookViewModel())
        }
        .tint(.black)
    }
}
