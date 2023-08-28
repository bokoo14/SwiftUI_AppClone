//
//  TransferView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/15.
//

import SwiftUI


struct TransferView: View {
    @State var isShowModal: Bool = false
    @State var isLoanOk: Bool = false
    @Binding var mainStack: NavigationPath
    
    @State var inputNumber: String = "" // 버튼을 눌렀을때 저장되는 값
    
    var body: some View {
        VStack (spacing: 12){
            InputArea(inputNumber: $inputNumber) // 대출 금액
            
            BalanceArea()
            addValueBtn()
            numberKeyArea(inputNumber: $inputNumber)
            nextBtn(isCorrectNumber: true, actionFunc: showModal)
            
            if isLoanOk {
                
            }
            NavigationLink("", isActive: $isLoanOk, destination: {
                TransferCompleteView(mainStack: $mainStack)
            })
            
            
        }
        .sheet(isPresented: $isShowModal, content: {
            TransferModalArea(isLoanOk: $isLoanOk)
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
            TransferView(mainStack: .constant(NavigationPath()))
                .environmentObject(UserViewModel())
        }
        .tint(.black)
    }
}
