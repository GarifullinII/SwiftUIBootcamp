//
//  AsyncImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 04.12.2024.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        AsyncImage(url: url) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .clipShape(.rect(cornerRadius: 10))
            } else if phase.error != nil {
                Image(systemName: "questionmark")
            } else {
                ProgressView().progressViewStyle(.circular)
            }
        }
        
        //        AsyncImage(url: url, content: { returnedImage in
        //            returnedImage
        //                .resizable()
        //                .scaledToFit()
        //                .frame(width: 100, height: 100)
        //                .clipShape(.rect(cornerRadius: 10))
        //
        //        }, placeholder: {
        //            ProgressView()
        //        })
    }
}

#Preview {
    AsyncImageBootcamp()
}
