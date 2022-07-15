//
//  ContentView.swift
//  The Lottery
//
//  Created by Oncu Can on 15.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var value: Int = 0
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                RollingText(font: .system(size: 55), weight: .black, value: $value)
                
                Button("Change Value"){
                    value = .random(in: 200...1300)
                }
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
