//
//  ExtractingSubviewsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 26.11.2024.
//

import SwiftUI

struct ExtractingSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea(.all)
            
            contentLayer
        }
    }
    
    //    var myItem: some View {
    //        VStack {
    //            Text("1")
    //            Text("Apple")
    //        }
    //        .padding()
    //        .background(Color.blue)
    //        .clipShape(.rect(cornerRadius: 10))
    //    }
    
    /// Если параметры не меняются лучше вынести в var... some View
    var contentLayer: some View {
        HStack {
            MyItem(
                title: "Apple",
                color: .green,
                count: 3
            )
            MyItem(
                title: "Oranges",
                color: .orange,
                count: 21
            )
            MyItem(
                title: "Bananas",
                color: .yellow,
                count: 43
            )
        }
    }
}

#Preview {
    ExtractingSubviewsBootcamp()
}

struct MyItem: View {
    
    let title: String
    let color: Color
    let count: Int
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background(color)
        .clipShape(.rect(cornerRadius: 10))
    }
}
