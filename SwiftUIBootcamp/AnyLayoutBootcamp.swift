//
//  AnyLayoutBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 05.12.2024.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        /// Позволяет адаптировать макет под разные экраны
        
        VStack(spacing: 12) {
            Text("horizontal\(horizontalSizeClass.debugDescription)")
            Text("vertical\(verticalSizeClass.debugDescription)")
            
//            let layout: AnyLayout = AnyLayout(VStackLayout())
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            
//            if horizontalSizeClass == .compact {
//                VStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            } else {
//                HStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            }
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
