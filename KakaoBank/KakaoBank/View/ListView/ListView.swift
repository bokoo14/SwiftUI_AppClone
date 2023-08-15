//
//  ListView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/15.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var userVM: UserViewModel
    @Binding var mainStack: NavigationPath
    
    var body: some View {
        VStack (spacing: 0) {
            ScrollView {
                VStack (spacing: 0){
                    Text("이체")
                        .font(.pretendard(.bold, size: 22))
                        .foregroundColor(.kakaoBlack300)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(20)
                    
                    ForEach(userVM.otherUser) { otherUser in
                        NavigationLink {
                            // destination
                            TransferView(mainStack: $mainStack)
                        } label: {
                            userList(userProfileTitle: otherUser.userProfileTitle, userName: otherUser.userName, bankName: otherUser.bankName, bankAccount: otherUser.bankAccount)
                        }
                    } // ForEach
                } // VStack
            } // ScrollView
            /**
             MARK:
             -> ScrollView로 그냥 감싸게 되면, 자동으로 padding값이 생기게 됨
             자동으로 padding값이 생기는 것을 막기 위해서는 VStack으로 안의 내용물을 감싸고, spacing: 0을 주면 해결!
             */
        } // VStack
        .toolbar {
            Button {
                mainStack.removeLast()
            } label: {
                Text("닫기")
            }
        } // toolbar
    }
}


@ViewBuilder
func userList (userProfileTitle: String, userName: String, bankName: String, bankAccount: String) -> some View {
    HStack (spacing: 13){
        Image(userProfileTitle)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50)
        
        VStack (alignment: .leading, spacing: 3){
            Text(userName)
                .foregroundColor(.kakaoBlack200)
                .font(.pretendard(.medium, size: 16))
            Text("\(bankName) \(bankAccount)")
                .foregroundColor(.kakaoBlack200)
                .font(.pretendard(.light, size: 12))
        } // VStack
        Spacer()
    } // HStack
    .padding(.horizontal, 20)
    .padding(.vertical, 14)
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView(mainStack: .constant(NavigationPath()))
                .environmentObject(UserViewModel())
        }
        
        userList(userProfileTitle: "ImgProfile01", userName: "김페페", bankName: "카카오", bankAccount: "3333-11-7254440")
    }
}
