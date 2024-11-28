//
//  NavigationViewNavigationLinkBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 28.11.2024.
//

import SwiftUI

struct NavigationViewNavigationLinkBootcamp: View {
    var body: some View {
        /// Навигация сверху, кнопки, переходы
        /// Если есть режим навигации в приложении (NavigationView), то не следует добавлять еще один режим навгации
        NavigationView{
            ScrollView {
                NavigationLink("Hello, world!!!", destination: NewView())
                
                Text("Hello, world!!!")
                Text("Hello, world!!!")
                Text("Hello, world!!!")
            }
            .navigationTitle("All inboxes")
            //            .navigationBarTitleDisplayMode(.automatic)
            //            .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing: NavigationLink(destination: {
                    NewView()
                }, label: {
                    Image(systemName: "gear")
                })
                .accentColor(.orange)
            )
        }
    }
}

struct NewView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green screen!")
                .navigationBarHidden(true)
            
            VStack {
                Button("Back button") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here", destination: Text("3rd screen!"))
            }
        }
    }
}

#Preview {
    NavigationViewNavigationLinkBootcamp()
}
