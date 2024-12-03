//
//  ObservableAndStateObjectBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 03.12.2024.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

/// FruitViewModel: ObservableObject - теперь знаем, что класс наблюдаемый
/// Загрузка, обновление и изменение данных
class FruitViewModel: ObservableObject {
    /// @Published - тоже, что и @State только в классе
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 12)
        let fruit2 = FruitModel(name: "Banana", count: 20)
        let fruit3 = FruitModel(name: "Watermelon", count: 54)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            
            self.isLoading = false
        }
    }
    
    func deleteFruit(indexSet: IndexSet) {
        fruitArray.remove(atOffsets: indexSet)
    }
}

struct ObservableAndStateObjectBootcamp: View {
    
    /// Если произойдет измение данных в FruitViewModel View должна обновиться, чтобы это сообщить добавляем @ObservedObject (наблюдаемый объект)
    //    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    /// @StateObject - это тоже самое @ObservedObject, но если View обновляется этот объект сохраняется, те он не обновляется!!! Это лучше и чаще используется
    /// Если по какой-то причине View обновится, то @StateObject не обновится!!! Он сохранится
    /// Если передача в следующий вид, то используем @ObservedObject
    /// Те если init, то @StateObject, для дочерних видов @ObservedObject
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    //    @State var fruitArray: [FruitModel] = [
    ////        FruitModel(name: "Apples", count: 5)
    //    ]
    
    var body: some View {
        NavigationStack {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(Color.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    //                .onDelete { indexSet in
                    //                    deleteFruit(indexSet: indexSet)
                    //                }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit list")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: SecondScreenView( fruitViewModel: fruitViewModel)) {
                Image(systemName: "arrow.right")
                    .font(.title)
            })
//            .onAppear {
//                fruitViewModel.getFruits()
//            }
        }
    }
    
    //    func getFruits() {
    //        let fruit1 = FruitModel(name: "Orange", count: 12)
    //        let fruit2 = FruitModel(name: "Banana", count: 20)
    //        let fruit3 = FruitModel(name: "Watermelon", count: 54)
    //
    //        fruitArray.append(fruit1)
    //        fruitArray.append(fruit2)
    //        fruitArray.append(fruit3)
    //    }
    //
    //    func deleteFruit(indexSet: IndexSet) {
    //        fruitArray.remove(atOffsets: indexSet)
    //    }
}

struct SecondScreenView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    /// Получаем доступ к модели с этого экрана
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                        Text("\(fruit.name)")
                        .foregroundStyle(Color.white)
                }
            }
        }
        
    }
}

#Preview {
    ObservableAndStateObjectBootcamp()
    //    SecondScreenView()
}
