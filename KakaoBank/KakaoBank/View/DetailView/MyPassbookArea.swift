//
//  MyPassbookArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct MyPassbookArea: View {
    @EnvironmentObject var userVM: UserViewModel
    @Binding var mainStack: NavigationPath
    
    var body: some View {
        VStack (spacing: 48){
            VStack (spacing: 10){
                Text(userVM.currentUser.userBankAccount)
                    .font(.pretendard(.light, size: 15))
                    .foregroundColor(Color(hex: 0x202020).opacity(0.5))
//                    .underline(pattern: .solid, color: Color(hex: 000000).opacity(0.2)) // 0.5 pixel만큼의 밑줄을 만드는 것은 불가능
                    .overlay(
                            Rectangle()
                                .frame(height: 0.5) // 얇은 밑줄의 높이를 설정
                                .foregroundColor(Color.kakaoBlack300.opacity(0.2))
                                .padding(.top, 15)
                        )
                HStack (spacing: 1){
                    Text("\(userVM.currentUser.totalMoney)")
                        .font(.pretendard(.semibold, size: 35))
                    Text("원")
                        .font(.pretendard(.bold, size: 26))
                }
            }
            
            HStack(spacing: 7){
                NavigationLink {
                    // destination
                    ListView(mainStack: $mainStack)
                } label: {
                    Text("이체하기")
                        .foregroundColor(Color(hex: 0x202020))
                        .font(.pretendard(.medium, size: 14))
                        .padding(.horizontal, 52)
                        .padding(.top, 18)
                        .padding(.bottom, 16)
                        .background(Color(hex: 0x202020).opacity(0.06).cornerRadius(10))
                }

                NavigationLink {
                    // destination
                    LoanView(mainStack: $mainStack)
                } label: {
                    Text("대출받기")
                        .foregroundColor(Color(hex: 0x202020))
                        .font(.pretendard(.medium, size: 14))
                        .padding(.horizontal, 52)
                        .padding(.top, 18)
                        .padding(.bottom, 16)
                        .background(Color(hex: 0x202020).opacity(0.06).cornerRadius(10))
                }

            } // Button HStack
        } // VStack
        .frame(maxWidth: .infinity)
        .padding(.top, 40)
        .padding(.bottom, 36)
        .background(Color.kakaoYellow)
    }
}

struct MyPassbookArea_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MyPassbookArea(mainStack: .constant(NavigationPath()))
                .environmentObject(AccountViewModel())
                .environmentObject(UserViewModel())
        }
    }
}
