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
    
    var body: some View {
        VStack (spacing: 12){
            InputArea()
            BalanceArea()
            addValueBtn()
            numberKeyArea()
            nextBtn(isCorrectNumber: true, actionFunc: showModal)
            
            if isLoanOk {
                
            }
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
    
    func showModal() {
        isShowModal = true
    }
}

// Sheet Size Custom
// 339/852 -> 화면의 40프로만 차지
extension PresentationDetent {
    static let sheetSize = Self.height(UIScreen.main.bounds.height * 0.4)
}

//struct LoanView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            LoanView(mainStack: .constant(NavigationPath()))
//        }
//        .tint(.black)
//    }
//}
