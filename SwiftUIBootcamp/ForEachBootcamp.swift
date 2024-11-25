//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 25.11.2024.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey"]
    let myString: String = "Hello"
    
    var body: some View {
//        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 20, height: 20)
//                    Text("\(index)")
//                }
//            }
//        }
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
