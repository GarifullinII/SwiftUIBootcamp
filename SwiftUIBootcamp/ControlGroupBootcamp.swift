//
//  ControlGroupBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 05.12.2024.
//

import SwiftUI

/// Похоже на Menu
/// Всплывающее меню
/// Можно добавлять меню в меню в меню и тд
struct ControlGroupBootcamp: View {
    var body: some View {
        Menu("My menu") {
            
            ControlGroup("Group") {
                Button("One 1") {
                    print("ButtonOne 1")
                }
                
                Button("Two 2") {
                    print("Button One 2")
                }
                
                Button("Three 3") {
                    print("Button One 3")
                }
            }
            
            Button("One") {
                print("Button")
            }
            
            Button("Two") {
                print("Button")
            }
            
            Button("Three") {
                print("Button")
            }
        }
        ControlGroup {
            
        }
    }
}

#Preview {
    ControlGroupBootcamp()
}
