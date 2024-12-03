//
//  OnAppearOnDisappearBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 02.12.2024.
//

import SwiftUI

struct OnAppearOnDisappearBootcamp: View {
    
    @State var myText: String = "Start text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 400)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
            })
            .onDisappear(perform: {
                myText = "Ending text"
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}

#Preview {
    OnAppearOnDisappearBootcamp()
}
