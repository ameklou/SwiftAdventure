//
//  ScrollLayout.swift
//  Adventure
//
//  Created by Siska on 28/03/2024.
//

import SwiftUI

struct ScrollLayout: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                VStack(alignment:.leading) {
                    Text("Thu 28, Mar".uppercased())
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    Text("Your Reading")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                }
                Spacer()
            }.padding(.horizontal)
            HStack {
                Group {
                    CardView(title: "Drawing a Border with Rounded Corners", category: "SwiftUI", author: "simon ng", image: "swiftui-button")
                        
                    
                    CardView(title: "Building Simple Editing app", category: "macOS", author: "Gabriel Theodoropoulos", image: "macos-programming")
                        
                    CardView(title: "Building a Complex Layout with Flutter ", category: "Flutter", author: "Lawrence Tan", image: "flutter-app")
                        
                    CardView(title: "What's New in Natural Language API", category: "iOS", author: "Sai Kambampati", image: "natural-language-api")
                        
                }.frame(width: 300)
            }
        }
    }
}

#Preview {
    ScrollLayout()
}

struct CardView: View {
    var title:String
    var category:String
    var author:String
    var image:String
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment:.leading) {
                    Text(category)
                        .font(.headline)
                    .foregroundStyle(.secondary)
                    Text(title)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .foregroundStyle(.primary)
                        .lineLimit(3)
                        .minimumScaleFactor(0.5)
                    Text("Write by \(author)".uppercased())
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                Spacer()
            }.padding()

           
                
        }.cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1),lineWidth: 1))
            .padding([.top,.horizontal])
        
    }
}
