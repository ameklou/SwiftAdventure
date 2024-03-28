//
//  AnimationLayout.swift
//  Adventure
//
//  Created by Siska on 28/03/2024.
//

import SwiftUI

struct AnimationLayout: View {
    @State private var circleColorChanged = false
    @State private var heartColorChanged = false
    @State private var heartSizeChanged = false
    @State private var isLoading = false
    var body: some View {
        VStack {
            ZStack{
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundStyle(heartColorChanged ? Color(.systemGray5) : .red)
                Image(systemName: "heart.fill")
                    .foregroundStyle(heartColorChanged ? .red : .white)
                    .font(.system(size: 100))
                    .scaleEffect(heartSizeChanged ? 1.0 : 0.5)
                
            }
            .onTapGesture {
                withAnimation(.spring(.bouncy, blendDuration:1.0)){
                    circleColorChanged.toggle()
                    
                    heartColorChanged.toggle()
                }
                heartSizeChanged.toggle()
        }
            
        }
        
        ZStack {
            Circle()
                .stroke(Color(.systemGray5), lineWidth: 15)
                .frame(width: 100, height: 100)
            Circle()
                .trim(from: 0, to: 0.7)
                .stroke(.green, lineWidth: 7)
                .frame(width: 100, height: 100)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                .animation(.default.repeatForever(autoreverses: false), value: isLoading)
            
                .onAppear(perform: {
                    isLoading = true
            })
        }
    }
}

#Preview {
    AnimationLayout()
}
