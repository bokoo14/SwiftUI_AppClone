//
//  BalanceArea.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/13.
//

import SwiftUI

struct BalanceArea: View {
    @EnvironmentObject var bankbookVM: BankbookViewModel
    
    @State var remainMoney: Int = 0
    var body: some View {
        Text("잔액: \(bankbookVM.bankbook.totalMoney)원")
            .foregroundColor(Color(hex: 0x444444))
            .font(.pretendard(.light, size: 14))
            .padding(.vertical, 14)
            .padding(.leading, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(hex: 0xf8f8f8).cornerRadius(8))
            .padding(.horizontal, 30)
    }
}

struct BalanceArea_Previews: PreviewProvider {
    static var previews: some View {
        BalanceArea()
            .environmentObject(BankbookViewModel())
    }
}
