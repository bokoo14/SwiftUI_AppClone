//
//  DetailView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct DetailView: View {
//    @EnvironmentObject var userVM: UserViewModel
//    @EnvironmentObject var AccountVM: AccountViewModel
    @Binding var mainStack: NavigationPath
    
    // ZStack으로 배경색 주기 -> 스크롤 양수일때만 보이게
    // StretchHeader를 써보자
    // Scroll할 수 있게 만들어라
    var body: some View {
        VStack(spacing: 0){
            MyPassbookArea(mainStack: $mainStack)
            TransactionDetailArea()
        }
        .navigationTitle("카뱅")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button {
                // action
            } label: {
                Image(systemName: "gearshape")
                //.font(.system(size: 20))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25)
            }
        } // toolbar
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(mainStack: .constant(NavigationPath()))
                .environmentObject(BankbookViewModel())
                .environmentObject(UserViewModel())
                .environmentObject(TransactionViewModel())
                .tint(.black)
        }
    }
}
