//
//  IfLetGuardBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 03.12.2024.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
//    @State var currentUserID: String? = nil
    @State var currentUserID: String? = "new user"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Some text")
                /// Безопасное извлечение через if let
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                /// НИКОГДА НЕ ИСПОЛЬЗОВАТЬ FORCE UNWRAP VALUES!!!
//                Text(displayText!)
//                    .font(.title)
                
                Text(displayText ?? "What is this?")
                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe coding")
            .onAppear {
//                loadData()
                loadDataNext()
            }
        }
    }
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID!"
        }
    }
    
    func loadDataNext() {
        guard let userID = currentUserID else {
            displayText = "Error. There is no User ID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
