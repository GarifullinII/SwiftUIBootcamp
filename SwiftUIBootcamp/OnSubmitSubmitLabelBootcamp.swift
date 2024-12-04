//
//  OnSubmitSubmitLabelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 05.12.2024.
//

import SwiftUI

struct OnSubmitSubmitLabelBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        TextField(
            "Placehoder",
            text: $text
        )
        .submitLabel(.route)
        .onSubmit {
            print("Go to the console!")
        }
        
        TextField(
            "Placehoder",
            text: $text
        )
        .submitLabel(.next)
        .onSubmit {
            print("Go to the console!")
        }
        
        TextField(
            "Placehoder",
            text: $text
        )
        .submitLabel(.search)
        .onSubmit {
            print("Go to the console!")
        }
    }
}

#Preview {
    OnSubmitSubmitLabelBootcamp()
}
