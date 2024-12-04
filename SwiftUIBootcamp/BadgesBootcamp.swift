//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 04.12.2024.
//

import SwiftUI

/// Применяется в List и TabView
struct BadgesBootcamp: View {
    var body: some View {
        List {
            Text("Hello, world!")
                .badge(3)
            Text("Hello, world!")
                .badge("NEW ITEMS")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
        }
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(5)
//            
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(0)
//            
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("NEW")
//        }
    }
}

#Preview {
    BadgesBootcamp()
}
