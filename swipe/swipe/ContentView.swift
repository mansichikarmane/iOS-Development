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
                    Image("logo")
                }
                Button(action: {}) {
                    Image("bookmarks")
                }
            }
            // Flip Cards
            Image("p0")
            // Bottom Menu Bar
            HStack {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
