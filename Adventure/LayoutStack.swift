//
//  LayoutStack.swift
//  Adventure
//
//  Created by Siska on 28/03/2024.
//

import SwiftUI

struct LayoutStack: View {
    var body: some View {
        VStack {
            HeaderView()
            HStack{
                PricingView(price: "$9", title: "Basic", color: .white, bgColor: .purple)
                ZStack {
                    
                    PricingView(price: "$19", title: "Pro", color: .black, bgColor: Color(red: 240/255, green: 240/255, blue: 240/255))
                    
                    Text("Best for designers")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(5)
                        .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                        .offset(x: 0, y: 90)
                }
            }.padding(.horizontal)
            Spacer()
                .frame(height: 20)
            ZStack {
                PricingView(price: "$299", title: "Team", color: .white, bgColor: .black, icon: "wand.and.rays")
                    .padding(.horizontal)
                
                Text("Perfect for team of 20 members")
                    .font(.system(.caption, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding(5)
                    .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                    .offset(x: 0, y: 115)
            }
            Spacer()
        }
    }
}

#Preview {
    LayoutStack()
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Choose")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("Your Plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}

struct PricingView: View {
    var price:String
    var title:String
    var color:Color
    var bgColor:Color
    var icon:String? = nil
    var body: some View {
        VStack{
            if(icon != nil){
                Image(systemName: icon ?? "wand.and.rays" )
                    .font(.largeTitle)
            }
            Text(title)
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
                .foregroundStyle(color)
            
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                
            
            Text("per month")
                .font(.headline)
            
        }
        .foregroundStyle(color)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}
