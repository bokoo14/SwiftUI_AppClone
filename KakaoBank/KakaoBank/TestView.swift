//
//  TestView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/06.
//



import SwiftUI

struct TestView: View {
    @State private var text = ""
        
        var body: some View {
            VStack {
                Text("텍스트 입력:")
                TextField("여기에 입력하세요", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .lineLimit(3) // 최대 줄 수 (줄 바꿈 수)
                    .truncationMode(.tail) // 문자열이 너무 길 때 자르는 방식 (여기서는 끝에서 자름)
                
                Spacer()
            }
            .padding()
        }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
