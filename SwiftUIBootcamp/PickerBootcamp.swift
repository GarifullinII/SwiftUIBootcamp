//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 30.11.2024.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "18"
    let filterOptions: [String] = [
        "Most Recent",
        "Most Popular",
        "Most Liked"
    ]
    
    /// Изменение цвета пикера при выборе
    /// Обновит все picker в приложении
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.gray
        
        /// Изменение цвета при выбранном сегменте
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        Picker("Picker", selection: $selection) {
            ForEach(filterOptions, id: \.self) { options in
                Text("\(options)")
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        
//        VStack {
//            HStack {
//                Text("Age")
//                Text(selection)
//            }
//            
//            Picker(
//                selection: $selection) {
//                    ForEach(18..<100) { age in
//                        Text("\(age)")
//                            .tag("\(age)")
//                    }
//                } label: {
//                    Text("Picker")
//                }
//            /// Стиль колесо
//                .pickerStyle(WheelPickerStyle())
//                .background(Color.gray.opacity(0.3))
//        }
    }
}

#Preview {
    PickerBootcamp()
}
