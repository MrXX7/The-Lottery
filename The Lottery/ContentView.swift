//
//  ContentView.swift
//  The Lottery
//
//  Created by Oncu Can on 15.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var value: Int = 111
    var body: some View {
        NavigationView {
            VStack {
                RollingText(font: .font(.system(size: 55)), weight: .black, value: $value)
            }
            .padding()
            navigationTitle("The Lottery")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
