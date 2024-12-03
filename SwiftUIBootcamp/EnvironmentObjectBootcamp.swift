//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 03.12.2024.
//

import SwiftUI

/// Можем добавить в фон (окружение) или иерархию представления, тогда все представления этой иерархии будут знать об этом объекте
/// Идеально когда имеем класс или объект который мы хотим использовать на разных экранах, но не хотим передавать данные (объект) из одного экрана на другой экран

/// ObservedObject
/// StateObject
/// EnvironmentObject (можем поместить его в окружение)

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination:
                            DetailView(
                                selectedItem: item
                                //                                ,viewModel: viewModel
                            ))
                    {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS devices")
        }
        /// Передача модели viewModel всему окружению
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    /// Окружение знает о модели поэтому @ObservedObject не требуется
    //    @ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            Color.orange
            
            NavigationLink {
                FinalView(
                    //                    viewModel: viewModel
                )
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(Color.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(.rect(cornerRadius: 25)
                    )
            }
        }
    }
}

struct FinalView: View {
    
    //    @ObservedObject var viewModel: EnvironmentViewModel
    
    /// Получаем модель из окружения
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            Color.red
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .padding(.vertical, 20)
                .foregroundStyle(Color.white)
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
}
