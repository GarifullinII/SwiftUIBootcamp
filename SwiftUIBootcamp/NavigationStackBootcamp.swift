//
//  NavigationStackBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 05.12.2024.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple", "Orange", "Banana"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        /// NavigationStack возможен переход на множество экранов, отложенная загрузка
//        NavigationStack {
        /// NavigationStack(path: $stackPath) - привязка к пути. при этом не будет работать навигация по числам, так как путь массив строк
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack(spacing: 40) {
                    
                    Button("Super segue!") {
                        stackPath.append(contentsOf: [
                            "Coconut", "Watermelon", "Mango"
                        ])
                    }
                    
                    Text("Hello")
                        .navigationTitle("Title")
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text("Fruit: \(fruit)")
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click me: \(x)")
                        }
                        
                        //                        NavigationLink(destination: NextScreen(value: x)) {
                        //                            Text("Click me: \(x)")
                        //                        }
                    }
                }
                .navigationTitle("Title")
                /// При этом не грузятся все экраны!!! Ленивая загрузка навигации!!!
                /// Указали, что нужно искать значения, которые являются целыми числами
                /// Каждый раз, когда получаем целое число, переходим на следующий экран
                .navigationDestination(for: Int.self) { value in
                    NextScreen(value: value)
                }
                /// Переход для фруктов
                .navigationDestination(for: String.self) { fruit in
                    NextScreenFruit(fruit: fruit)
                }
            }
        }
        
        /// NavigationView - экраны сразу все загружаются, это плохо!
        //        NavigationView {
        //            ScrollView {
        //                VStack(spacing: 40) {
        //            Text("Hello")
        //                .navigationTitle("Title")
        //                    ForEach(0..<10) { x in
        /// NavigationLink переход на один экран
        /// NavigationLink  не ленивые!
        //                        NavigationLink(destination: NextScreen(value: x)) {
        //                            Text("Click me: \(x)")
        //                        }
        //                    }
        //                    .navigationTitle("Title")
        //                }
        //            }
        //        }
    }
}

struct NextScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("Init screen: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

struct NextScreenFruit: View {
    
    let fruit: String
    
    init(fruit: String) {
        self.fruit = fruit
        print("Init screen: \(fruit)")
    }
    
    var body: some View {
        Text("Fruit \(fruit)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
