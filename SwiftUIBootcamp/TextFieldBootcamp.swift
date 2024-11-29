//
//  TextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 29.11.2024.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).clipShape(.rect(cornerRadius: 10)))
                    .foregroundStyle(.red)
                    .font(.headline)
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background((textIsAppropriate() ? Color.blue : Color.gray)
                            .clipShape(.rect(cornerRadius: 10)))
                        .foregroundStyle(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    func textIsAppropriate() -> Bool {
        // проверка текста
        if textFieldText.count >= 3 {
            return true
        }
        
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
