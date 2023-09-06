//
//  LoanView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI


struct LoanView: View {
    @EnvironmentObject var userVm: UserViewModel
    @State var isShowModal: Bool = false
    @State var isButtonActive: Bool = false
    @State var isLoanOk: Bool = false
    @Binding var mainStack: NavigationPath
    
    @State var inputNumber: String = "" // 버튼을 눌렀을때 저장되는 값
    
    var body: some View {
        VStack (spacing: 12){
            InputArea(inputNumber: $inputNumber) // 대출 금액
                .overlay { // alignment: .center
                    if (StringToInt(StringMoney: inputNumber) >= 10000) { // 1만원 이상이라면 만원대의 금액부터 단위 문구를 나타냄
                        Text("\(StringToInt(StringMoney: inputNumber)/10000)만 \(StringToInt(StringMoney: inputNumber)%10000)원")
                            .font(.pretendard(.medium, size: 13))
                            .foregroundColor(.kakaoGray200)
                            .offset(y: 24 + 20)
                        // (Text의 크기 48)/2 + (spacing값 20)
                    }
                } // overlay
            
            // 여기서 preview 오류남 -> preview에서 .environmentObject(UserViewModel()) 해줘야 함
            BalanceArea() // 잔액
            
            
            addValueBtn(inputNumber: $inputNumber) // +1만, +5만, +10만
            numberKeyArea(inputNumber: $inputNumber) // 키패드
            
            // MARK: 하단의 다음 버튼
            nextBtn(isButtonActive: isButtonActive) {
                isShowModal = true
            }
            .onChange(of: inputNumber) { newValue in
                isButtonActive = !newValue.isEmpty
            }
            
            // MARK: 대출이 가능하다면
            // MARK: 변수명 바꿔라 isLoanOk -> isLoanAble
            NavigationLink("", isActive: $isLoanOk, destination: {
                LoanCompleteView(mainStack: $mainStack, inputNumber: $inputNumber)
            })
        }
        .sheet(isPresented: $isShowModal, content: {
            LoanModalArea(isLoanOk: $isLoanOk, inputNumber: $inputNumber)
                .presentationDetents([.sheetSize])
        })
        .navigationTitle("대출받기")
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
    
    // 버튼을 눌렀을때 isShowModal를 true로 바꿔줌
    func showModal() {
        isShowModal = true
    }
}


struct LoanView_Previews: PreviewProvider {
    static var previews: some View {
        LoanView(mainStack: .constant(NavigationPath()))
            .environmentObject(UserViewModel())
            .environmentObject(BankbookViewModel())
    }
}
