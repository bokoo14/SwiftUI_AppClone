//
//  DetailView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack(spacing: 0){
            MyPassbookArea()
            TransactionDetailArea()
        }
        .navigationTitle("카뱅")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button {
                // action
            } label: {
                Image(systemName: "gear")
            }
        } // toolbar
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
