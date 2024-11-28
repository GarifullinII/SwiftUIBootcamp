//
//  ListsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 28.11.2024.
//

import SwiftUI

struct ListsBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("FRUITS")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundStyle(Color.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text("\(fruit.capitalized)")
                            .font(.caption)
                            .foregroundStyle(Color.white)
                    }
                    .onDelete(perform: delete)
                    //                    .onMove { indexSet, int in
                    //                        move(indexSet: indexSet, int: int)
                    //                    }
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text("\(veggies.capitalized)")
                    }
                }
            }
            .accentColor(.green)
//            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indexSet: IndexSet, int: Int) {
        fruits.move(fromOffsets: indexSet, toOffset: int)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListsBootcamp()
}
