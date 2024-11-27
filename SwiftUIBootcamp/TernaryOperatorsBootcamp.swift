//
//  TernaryOperatorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 27.11.2024.
//

import SwiftUI

struct TernaryOperatorsBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button {
                isStartingState.toggle()
            } label: {
                Text("Button: \(isStartingState)")
            }
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.blue : Color.red)
                .frame(width: 200, height: 100)
            
            Spacer()
        }
    }
}

#Preview {
    TernaryOperatorsBootcamp()
}
