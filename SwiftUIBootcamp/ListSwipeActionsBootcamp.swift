//
//  ListSwipeActionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 04.12.2024.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(
                        edge:
                                .leading
                        ,
                        allowsFullSwipe: false) {
                            Button {
                                print("Button")
                            } label: {
                                Text("Archive")
                            }
                            .tint(.green)
                            Button {
                                print("Button")
                            } label: {
                                Text("Save")
                            }
                            .tint(.blue)
                            Button {
                                print("Button")
                            } label: {
                                Text("Junk")
                            }
                            .tint(.black)
                        }
                        .swipeActions(
                            edge:
                                    .trailing
                            ,
                            allowsFullSwipe: true) {
                                Button {
                                    print("Button")
                                } label: {
                                    Text("Share")
                                }
                                .tint(.orange)
                            }
            }
            //            .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
