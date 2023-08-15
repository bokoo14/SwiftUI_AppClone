//
//  DetailView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var userVM: UserViewModel
    @Binding var mainStack: NavigationPath
    
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
                .tint(.black)
                .environmentObject(UserViewModel())
        }
    }
}
