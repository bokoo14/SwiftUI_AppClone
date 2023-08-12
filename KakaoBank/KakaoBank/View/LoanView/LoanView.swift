//
//  LoanView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

struct LoanView: View {
    var body: some View {
        VStack (spacing: 0){
            
        }
        .navigationTitle("대출받기")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            HStack {
                Button {
                    // action
                } label: {
                    Image(systemName: "gear")
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
