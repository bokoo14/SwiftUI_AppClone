//
//  ChulsseukButton.swift
//  Chulsseuk
//
//  Created by Bokyung on 2023/08/04.
//

import SwiftUI

struct ChulsseukButton: View {
    var body: some View {
        Button {
            // action
        } label: {
            Text("출쓱하기")
                .font(.pretendard(.semibold, size: 20))
                .foregroundColor(.ButtonFontColor)
                .padding(.vertical, 38)
                .frame(maxWidth: .infinity)
                .background(Color.ButtonColor)
                .cornerRadius(50)
                //.background(.red) 이건 되는데
                // .background(Color.ButtonColor) 이건 왜 안돼? 인식을 못하나?
        } // Button
        
    }
}


/**
 [Note]
 .foregroundColor(.ButtonFontColor)는 Color extension을 쓰면, 인식을 함
 /// - Parameter color: The color to use when displaying this text.
 /// - Returns: A text view that uses the color value you supply.
 ///    public func foregroundColor(_ color: Color?) -> Text
 
 
 .background(.red) 이건 잘 인식을 함
 .background(Color.ButtonColor) 이건 안된다!
 /// - Parameters:
 ///   - style: An instance of a type that conforms to ``ShapeStyle`` that
 ///     SwiftUI draws behind the modified view.
 ///   - edges: The set of edges for which to ignore safe area insets
 ///     when adding the background. The default value is ``Edge/Set/all``.
 ///     Specify an empty set to respect safe area insets on all edges.
 ///
 /// - Returns: A view with the specified style drawn behind it.
 @inlinable public func background<S>(_ style: S, ignoresSafeAreaEdges edges: Edge.Set = .all) -> some View where S : ShapeStyle
 
 
 이유: foregroundColor는 parameter가 Color
     background는 parameter가 style, ignoreSafeAreaEgdes!
 */

struct ChulsseukButton_Previews: PreviewProvider {
    static var previews: some View {
        ChulsseukButton()
    }
}
