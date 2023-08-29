//
//  TestView.swift
//  KakaoBank
//
//  Created by Bokyung on 2023/08/06.
//



import SwiftUI

struct TestView: View {
    @State var isToogleOn = false
    @State var textFieldValue = ""
    
    var body: some View {
        HStack {
            TextField("Placeholder", text: $textFieldValue)
                .disabled(!isToogleOn)
            
            let onToggle = Binding(
                get: { self.isToogleOn },
                set: {
                    if !$0 {
                        UIApplication.shared.endEditing()     // << here !!
                    }
                    
                    self.isToogleOn = $0
                }
            )
            Toggle("Activate textField", isOn: onToggle)
        }
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
