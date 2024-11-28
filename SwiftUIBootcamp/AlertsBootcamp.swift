//
//  AlertsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 29.11.2024.
//

import SwiftUI

struct AlertsBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .yellow
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            Button("Click here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                //            Alert(title: Text("There was an error!"))
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        return Alert(
            title: Text("This is the title"),
            message: Text("Here we will describe the errror"),
            primaryButton: .destructive(Text("Delete"), action: {
                backgroundColor = .blue
            }),
            secondaryButton: .cancel()
        )
    }
}

#Preview {
    AlertsBootcamp()
}
