//
//  ContentView.swift
//  swipe
//
//  Created by Mansi Chikarmane on 5/19/21.
//

import SwiftUI

struct ContentView: View {
    
    let cardGradient = Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.5)])
    var body: some View {
        VStack {
            // Top Menu Bar
            HStack {
                
                // Toggle between chat
//                Button(action: {}) {
//                    Image("logo")
//                        .resizable().aspectRatio(contentMode: .fit).frame(height: 45)
//                }
                Button(action: {}) {
                    Image("chat").resizable().aspectRatio(contentMode: .fit).frame(height: 35)
                }
                Spacer()
                Button(action: {}) {
                    Image("bookmark")
                        .resizable().aspectRatio(contentMode: .fit).frame(height: 35)
                }
                
            }.padding(.horizontal)
            
            // Flip Cards
            ZStack(alignment: .leading){
                Image("p0").resizable().cornerRadius(8)
                VStack {
                    VStack(alignment: .leading) {
                        HStack() {
                            Image("logo").resizable().aspectRatio(contentMode: .fit).frame(height: 45)
                            Text("@username").fontWeight(.bold)
                        }
                        Spacer()
                        Text("Chicken Tikka Masala").font(.title2)
                        Text("Restaurant, City").fontWeight(.bold)
                        
                    }
                }.foregroundColor(Color.white).padding()
            }.padding(10)
            
            // more rounded edges
            // 10% smaller card
            // 9 crews, 1 big tile with actual friends group
            
            
            
            // Option buttons
            HStack {
                Spacer()
                Button(action:{}) {
                    Image("no")
                        .resizable().aspectRatio(contentMode: .fit).frame(height: 80)
                }
                Spacer()
                Button(action:{}) {
                    Image("yum")
                        .resizable().aspectRatio(contentMode: .fit).frame(height: 70)
                }
                Spacer()
                Button(action:{}) {
                    Image("yes")
                        .resizable().aspectRatio(contentMode: .fit).frame(height: 80)
                }
                Spacer()
            }.padding(.vertical)

            
            // Bottom Menu Bar
            Spacer()
            HStack {
                Button(action: {}) {
                    Image("logo")
                        .resizable().aspectRatio(contentMode: .fit).frame(height: 45)
                }
                Spacer()
                Button(action:{}){
                    Image("foodDrinkIcon")
                        .resizable().aspectRatio(contentMode: .fit).frame(height: 30)
                }
                Spacer()
                Button(action:{}){
                    Image("user")
                }
            }.padding(.horizontal)
            
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


