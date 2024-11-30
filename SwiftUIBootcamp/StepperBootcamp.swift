//
//  StepperBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 30.11.2024.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper(value: $stepperValue) {
                Text("Stepper: \(stepperValue)")
            }
            .padding(20)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper Next") {
                //increment
                incrementWidth(amount: 10)
            } onDecrement: {
                //decrement
                incrementWidth(amount: -10)
            }

        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
