//
//  TransactionDetailArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/12.
//

import SwiftUI

struct TransactionDetailArea: View {
    @EnvironmentObject var AccountVM: AccountViewModel
    
    var body: some View {
        ScrollView {
            ForEach(AccountVM.account) { vm in
                TransactionListDetail(date: vm.date, userName: vm.targetName, moneyTag: vm.describe, currentMoney: vm.currentMoney, totalMoney: 600000000)
            }
            
            TransactionListDetail(date: "07.29", userName: "일론머스크", moneyTag: "#대출", currentMoney: 500000000, totalMoney: 600000000)
            TransactionListDetail(date: "07.29", userName: "일론머스크", moneyTag: "#이체", currentMoney: 5000000, totalMoney: 60000000)
            Spacer()
            
        }
    }
}


@ViewBuilder
func TransactionListDetail(date: String, userName: String, moneyTag: String, currentMoney: Int, totalMoney: Int) -> some View {
    HStack (alignment: .top, spacing: 19){
        Text(date)
            .font(.pretendard(.light, size: 13))
            .foregroundColor(Color(hex: 0x666666))
        
        VStack (alignment: .leading, spacing: 6){
            Text(userName)
                .font(.pretendard(.light, size: 16))
            Text(moneyTag)
                .font(.pretendard(.light, size: 12))
                .foregroundColor(Color(hex: 0x245891))
        }
        Spacer()
        VStack (alignment: .trailing, spacing: 4){
            HStack (spacing: 0){
                Text(moneyTag == "#대출" ? "" : "-")
                Text("\(currentMoney)원")
                    .font(.pretendard(.bold, size: 17))
                    .foregroundColor(moneyTag == "#대출" ? Color(hex: 0x3881CB) : Color(hex: 0x222222))
            }
            
            Text("\(totalMoney)원")
                .font(.pretendard(.light, size: 14))
                .foregroundColor(Color(hex: 0x888888))
        }
    }
    .padding(.horizontal, 16)
    .padding(.vertical, 24)
}

struct TransactionDetailArea_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetailArea()
            .environmentObject(AccountViewModel())
            .environmentObject(UserViewModel())
    }
}
