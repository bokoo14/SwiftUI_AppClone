//
//  HeaderArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct HeaderArea: View {
    @EnvironmentObject var userVM: UserViewModel
    
    var body: some View {
        HStack (spacing: 6){
            Text(userVM.currentUser.userName)
                .font(.pretendard(.semibold, size: 23))
            
            Text("내 계좌")
                .font(.pretendard(.medium, size: 13))
                .padding(.vertical, 7)
                .padding(.horizontal, 12)
                .background(Color.kakaoWhite200)
                .cornerRadius(14)
            
            Spacer()
            Image(userVM.currentUser.userProfileTitle)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40)
                .cornerRadius(100)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 28)
//        .background( // FIXME: 스크롤할때만 그림자 생기게 바꿔라 (level4 참고)
//            Color.kakaoWhite300
//                .shadow(color: Color.kakaoBlack100.opacity(0.05), radius: 2, x: 0, y: 4)
//        )
    }
}

struct HeaderArea_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArea()
            .environmentObject(UserViewModel())
            .environmentObject(UserViewModel())
        // environmentObject가 강제적으로 UserViewModel()임을 알려줌
    }
}
