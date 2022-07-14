//
//  RollingText.swift
//  The Lottery
//
//  Created by Oncu Can on 15.07.2022.
//

import SwiftUI

struct RollingText: View {
//    Mark: Text Properties
    var font: Font = .largeTitle
    var weight: Font.Weight = .regular
    @Binding var value: Int
//    Mark Animation Properties
    @State var animationRange: [Int] = []
    var body: some View {
        HStack (spacing: 0) {
            ForEach(0..<animationRange.count, id: \.self) {_ in
//                Mark: To find text size for given font
//                Random Numb
                Text("8")
                    .font(font)
                    .fontWeight(weight)
                    .opacity(0)
                    .overlay {
                        GeometryReader {proxy in
                            let size = proxy.size
                            
                            VStack(spacing: 0) {
//                                Mark: Since Its Individual Value
//                                We need from 0-9
                                ForEach(0...9, id: \.self) { number in
                                    Text("\(number)")
                                        .font(font)
                                        .fontWeight(weight)
                                        .frame(width: size.width, height: size.height, alignment: .center)
                                }
                            }
                            
                        }
                    }
            }
        }
    }
}

struct RollingText_Previews: PreviewProvider {
    static var previews: some View {
        RollingText()
    }
}
