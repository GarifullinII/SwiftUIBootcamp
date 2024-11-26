//
//  GridBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 25.11.2024.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6)
        
        //            GridItem(.adaptive(minimum: 50, maximum: 300)),
        //            GridItem(.adaptive(minimum: 150, maximum: 300)),
        
        //            GridItem(.flexible(), spacing: nil, alignment: nil),
        //            GridItem(.flexible()),
        //            GridItem(.flexible()),
        //            GridItem(.flexible()),
        
        //            GridItem(.fixed(75)),
        //            GridItem(.fixed(100)),
        //            GridItem(.fixed(75)),
        //            GridItem(.fixed(50)),
    ]
    
    var body: some View {
        /// Имеет строки и столбцы
        
        /// Задаем количество столбцов
        /// Элементы распределяются равномерно
        /// .fixed(75) - задает фиксированную ширину
        /// .flexible(minimum: , maximum: ) или .flexible() - задает гибкую ширину, подстраивается под размер рамки или ширину экрана
        /// .adaptive(minimum: , maximum: ) - элементы адаптируются чтобы поместиться в заданные критерии, указываем максимальный и минимальный размер (ширину) столбца в случае с вертикальной сеткой
        
        ScrollView {
            Rectangle()
                .fill(Color.orange)
                .frame(height: 200)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]
            ) {
                Section(header:
                            Text("Section one")
                    .foregroundStyle(Color.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
                ) {
                    ForEach(0..<20) { _ in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                
                Section(header:
                            Text("Section two")
                    .foregroundStyle(Color.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
                ) {
                    ForEach(0..<20) { _ in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                    }
                }
            }
            
            //            Rectangle()
            //                .fill(Color.white)
            //                .frame(height: 400)
            
            //            LazyVGrid(columns: columns) {
            //                ForEach(0..<50) { _ in
            //                    Rectangle()
            //                        .frame(height: 150)
            //                }
            //            }
        }
    }
}

#Preview {
    GridBootcamp()
}
