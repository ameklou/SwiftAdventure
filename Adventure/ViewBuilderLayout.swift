//
//  ViewBuilderLayout.swift
//  Adventure
//
//  Created by Siska on 02/04/2024.
//

import SwiftUI

struct ViewBuilderLayout: View {
    var body: some View {
        OBuilder{
            ZStack{
               Text("Opinoo")
            }
        }
    }
}

#Preview {
    ViewBuilderLayout()
}


struct OBuilder<Content: View>:View {
    let content: ()->Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        
        content()
            .padding()
            .background(.gray.opacity(0.5))
    }
}
