//
//  CustomModifierLayout.swift
//  Adventure
//
//  Created by Siska on 02/04/2024.
//

import SwiftUI

struct CustomModifierLayout: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
        }.oBack()
    }
}

#Preview {
    CustomModifierLayout()
}


struct BackModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.gray.opacity(0.5))
            .foregroundStyle(.black)
            .border(.gray, width:1)
            
        
    }
    
    
}

extension View{
    func oBack()-> some View{
        ModifiedContent(content: self, modifier: BackModifier())
    }
}
