//
//  MarkUps.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 02.12.2024.
//

import SwiftUI

struct MarkUps: View {
    
    // MARK: - PROPERTIES
    
    @State var data: [String] = [
        "Apples",
        "Oranges",
        "Bananas"
    ]
    @State var showAlert: Bool = false
    
    // MARK: - BODY
    
    // ILDAR - Working copy - things to do:
    /*
     Working copy - things to do:
     1) Fiz title
     2) Fix alert
     */
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.purple
                
                // foreground
                foregroundLayer
                    .navigationTitle("Documentation")
                    .navigationBarItems(trailing:
                                            Button("Alert", action: {
                        showAlert.toggle()
                    }))
                    .alert(isPresented: $showAlert) {
                        getAlert(text: "This is the alert!")
                    }
            }
        } // END: NAV
    }
    
    /// This is the foreground layer that holds a scrollView
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text("\(name)")
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    // MARK: - FUNCTIONS
    
    /// Gets an alert with a specified title
    ///
    /// This function creates and returns an alert immediately.
    /// '''
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// '''
    /// - Warning: ...
    /// - Parameter text: This is the title for the alert
    /// - Returns: Return an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: - PREVIEW

#Preview {
    MarkUps()
}
