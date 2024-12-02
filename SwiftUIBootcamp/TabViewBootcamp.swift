//
//  TabViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 02.12.2024.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = [
        "heart.fill",
        "globe",
        "house.fill",
        "person.fill"
    ]
    
    var body: some View {
        /// Карусель
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
            .background(Color.purple)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundStyle(Color.red)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundStyle(Color.green)
//            RoundedRectangle(cornerRadius: 25)
        }
        .frame(height: 100)
        .tabViewStyle(PageTabViewStyle())
//        TabView(selection: $selectedTab) {
//            
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .accentColor(.red)
    }
}

#Preview {
    TabViewBootcamp()
}


struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red
            VStack {
                Text("Home Tab")
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .clipShape(.rect(cornerRadius: 10))
                }
            }
        }
    }
}
