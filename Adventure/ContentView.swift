//
//  ContentView.swift
//  Adventure
//
//  Created by Siska on 28/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "slowmo", variableValue: 0.5)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.indigo)
                .font(.largeTitle)
            Text("Hello, world!")
                .font(.custom("Kanit",size: 20))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
