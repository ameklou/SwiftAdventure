//
//  StateLayout.swift
//  Adventure
//
//  Created by Siska on 28/03/2024.
//

import SwiftUI

struct StateLayout: View {
   @State private var isPlaying = false
    var body: some View {
        VStack{
            Button {
                isPlaying.toggle()
            } label: {
                Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                    .font(.system(size: 150))
                    .foregroundStyle(isPlaying ? .red : .green)
            }

        }
    }
}

#Preview {
    StateLayout()
}
