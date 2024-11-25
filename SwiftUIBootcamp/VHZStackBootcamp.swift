//
//  VHZStackBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 22.11.2024.
//

import SwiftUI

struct VHZStackBootcamp: View {
    var body: some View {
        /// VStack - вертикальный
        /// По умолчанию между элементами в V и HStack всегда есть spacing, не забываем ставить его равным 0, если не требуется расстояние между элементами
        VStack(alignment: .center, spacing: 20) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 80, height: 80)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 70, height: 70)
        }
        .background(Color.black)
        /// HStack - горизонтальный
        HStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
        .background(Color.gray)
        /// ZStack - zIndex (от экрана в лицо)
        ZStack() {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 80, height: 80)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 60, height: 60)
            Text("1")
                .foregroundStyle(Color.white)
                .background(
                    Circle()
                        .frame(width: 50, height: 50)
                )
        }
    }
}

#Preview {
    VHZStackBootcamp()
}
