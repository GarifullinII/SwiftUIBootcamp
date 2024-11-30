//
//  ToggleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 29.11.2024.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn) {
                Text("Label")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}
