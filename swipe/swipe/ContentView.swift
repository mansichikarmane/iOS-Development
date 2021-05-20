//
//  ContentView.swift
//  swipe
//
//  Created by Mansi Chikarmane on 5/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Top Menu Bar
            HStack {
                
                // Toggle between chat
                Button(action: {}) {
                    Text("home")
                }
                Spacer()
                Button(action: {}) {
                    Image("bookmark")
                        .resizable().aspectRatio(contentMode: .fit).frame(height: 45)
                }
                
            }.padding(.horizontal)
            
            // Flip Cards
            
            Image("p0").resizable().aspectRatio(contentMode: .fit).frame(height: 450).cornerRadius(15)
//            RoundedRectangle(cornerRadius: 8)
            
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
            
            
            Text("Foo Crew")
            
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
