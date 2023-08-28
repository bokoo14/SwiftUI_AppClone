//
//  LoanView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

struct LoanView: View {
    @State var isShowModal: Bool = false
    @State var isLoanOk: Bool = false
    @Binding var mainStack: NavigationPath
    
    @State var inputNumber: String = "" // 버튼을 눌렀을때 저장되는 값
    
    var body: some View {
        VStack (spacing: 12){
            InputArea(inputNumber: $inputNumber) // 대출 금액
            
            // 여기서 preview 오류남 -> preview에서 .environmentObject(UserViewModel()) 해줘야 함
            BalanceArea() // 잔액
                .overlay { // alignment: .center
                    if (StringToInt(StringMoney: inputNumber) >= 10000) { // 1만원 이상이라면 만원대의 금액부터 단위 문구를 나타냄
                        Text("1만원 이상~")
                            .font(.pretendard(.medium, size: 13))
                            .foregroundColor(.kakaoGray200)
                    }
                }
            
            
            addValueBtn() // +1만, +5만, +10만
            numberKeyArea(inputNumber: $inputNumber) // 키패드
            nextBtn(isCorrectNumber: isLoanOk, actionFunc: showModal)
            
            // 대출이 가능하다면?
            if isLoanOk {
                Text("대출 가능~")
            }
            
            // MARK: 대출이 가능하다면
            NavigationLink("", isActive: $isLoanOk, destination: {
                LoanCompleteView(mainStack: $mainStack)
            })
        }
        .sheet(isPresented: $isShowModal, content: {
            LoanModalArea(isLoanOk: $isLoanOk)
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
    
    // 금액 String을 Int로 변환
    func StringToInt(StringMoney: String) -> Int {
        var IntMoney: Int
        IntMoney = Int(StringMoney) ?? 0
        return IntMoney
    }
    
}

// Sheet Size Custom
// 339/852 -> 화면의 40프로만 차지
extension PresentationDetent {
    static let sheetSize = Self.height(UIScreen.main.bounds.height * 0.4)
}

struct LoanView_Previews: PreviewProvider {
    static var previews: some View {
        LoanView(mainStack: .constant(NavigationPath()))
            .environmentObject(UserViewModel())
    }
}
