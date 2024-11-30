//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 30.11.2024.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2017)) ?? Date()
    let endingDate: Date = Date()
    
    /// Вычисляемое свойство, выбор формата даты (короткий, средний, длинный или иные варианты), формата времени
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .full
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Selected date")
            Text(dateFormatter.string(from: selectedDate))
            
            DatePicker("Date", selection: $selectedDate, in: startingDate...endingDate)
    //        .padding(.horizontal, 20)
            .accentColor(Color.red)
            .datePickerStyle(
                CompactDatePickerStyle()
    //            GraphicalDatePickerStyle()
    //            WheelDatePickerStyle()
                )
        }
        
//        DatePicker(selection: $selectedDate) {
//            Text("Select a Date")
//        }
//        DatePicker("Date", selection: $selectedDate, displayedComponents: [
//            .date
////            .hourAndMinute
//        ])
    }
}

#Preview {
    DatePickerBootcamp()
}
