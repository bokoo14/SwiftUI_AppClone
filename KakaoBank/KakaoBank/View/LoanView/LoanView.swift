//
//  LoanView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

struct LoanView: View {
    var body: some View {
        VStack (spacing: 12){
            InputArea()
            BalanceArea()
            addValueBtn()
            numberKeyArea()
            nextBtn(isCorrectNumber: true)
        }
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
}

struct LoanView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoanView()
        }
        .tint(.black)
    }
}
