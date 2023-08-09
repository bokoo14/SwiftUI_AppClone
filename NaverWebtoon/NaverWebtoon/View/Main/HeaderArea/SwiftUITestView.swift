//
//  SwiftUITestView.swift
//  NaverWebtoon
//
//  Created by Bokyung on 2023/08/07.
//

import SwiftUI

struct SwiftUITestView: View {
    var body: some View {
        GeometryReader { geo in

            let _ = print(geo.size.width)
            
            VStack{
               Text("HelloWorld")
               Text("HelloWorld")
               Text("HelloWorld")
            }
            .border(.red)
        }
    }
}

struct SwiftUITestView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITestView()
    }
}
