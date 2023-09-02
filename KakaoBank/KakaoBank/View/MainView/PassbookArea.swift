//
//  PassbookArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct PassbookArea: View {
    @EnvironmentObject var userVM: UserViewModel
    @EnvironmentObject var bankbookVM: BankbookViewModel
    @State private var isDetailViewActive = false // DetailView로 이동 여부를 추적하는 상태 변수
    @Binding var mainStack: NavigationPath
    
    var body: some View {
        VStack (spacing: 0){
            NavigationLink(value: 0) {
                VStack (spacing: 6){
                    HStack (spacing: 8){
                        Image(userVM.currentUser.userProfileTitle)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 34)
                            .cornerRadius(100)
                        VStack (alignment: .leading, spacing: 6){
                            Text("\(userVM.currentUser.userName)의 통장★")
                                .font(.pretendard(.light, size: 14))
                            Text("\(bankbookVM.bankbook.totalMoney)원")
                                .font(.pretendard(.bold, size: 19))
                        }
                        Spacer()
                    }
                    HStack (spacing: 10){
                        Spacer()
                        Button {
                            // action
                        } label: {
                            Text("카드")
                                .font(.pretendard(.medium, size: 13))
                                .padding(.vertical, 9)
                                .padding(.horizontal, 16)
                                .background(Color.kakaoBlack200.opacity(0.05))
                                .cornerRadius(30)
                        }
                        Button {
                            // action
                        } label: {
                            Text("이체")
                                .font(.pretendard(.medium, size: 13))
                                .padding(.vertical, 9)
                                .padding(.horizontal, 16)
                                .background(Color.kakaoBlack200.opacity(0.05))
                                .cornerRadius(30)
                        }
                    } // HStack
                } // VStack
            } // NavigationLink
            .navigationDestination(for: Int.self) { value in
                DetailView(mainStack: $mainStack)
            }
            .tint(Color.kakaoBlack300)
            
            Divider()
                .padding(.vertical, 20)
            
            HStack (spacing: 0){
                Text("세이프박스")
                    .font(.pretendard(.light, size: 14))
                Spacer()
                Text("0원")
                    .font(.pretendard(.semibold, size: 16))
            }
        }
        .padding(EdgeInsets(top: 29, leading: 20, bottom: 23, trailing: 22))
        .background(Color.kakaoYellow.cornerRadius(18))
        .padding(.horizontal, 20)
    }
}


struct PassbookArea2: View {
    var body: some View {
        Text("+")
            .font(.pretendard(.medium, size: 18))
            .foregroundColor(Color.kakaoGray200)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(Color.kakaoWhite200.cornerRadius(18))
            .padding(.horizontal, 20)
    }
}


struct PassbookArea_Previews: PreviewProvider {
    static var previews: some View {
        PassbookArea(mainStack: .constant(NavigationPath()))
            .environmentObject(UserViewModel())
            .environmentObject(BankbookViewModel())
        
        PassbookArea2()
    }
}


