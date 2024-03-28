//
//  ButtonLayout.swift
//  Adventure
//
//  Created by Siska on 28/03/2024.
//

import SwiftUI

struct ButtonLayout: View {
    var body: some View {
        Button(action: {
            
        }, label: {
           Label(
            title: { Text("Boost")
                .font(.title)
                .fontWeight(.medium)},
            icon: { Image(systemName: "13.circle")
                    .font(.title)
                .fontWeight(.semibold)}
           )
           
        }).buttonStyle(GradientBackgroundStyle())
    }
}

#Preview {
    ButtonLayout()
}


struct GradientBackgroundStyle:ButtonStyle{
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
             .padding()
             .foregroundStyle(.white)
             .background(LinearGradient(gradient: Gradient(colors: [Color("LightGreen"), Color("DarkGreen")]), startPoint: .top, endPoint: .bottom))
             .cornerRadius(40)
             .padding(.horizontal,20)
             .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
    
    
}
