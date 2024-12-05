//
//  ObservableMacroBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 05.12.2024.
//

import SwiftUI
/// Стало

@Observable class ObservableViewModelNew {
    var title: String = "Some title"
}

struct ObservableMacroBootcamp: View {
    
    @State private var viewModel = ObservableViewModelNew()
    
    var body: some View {
        VStack {
            Button(viewModel.title) {
                viewModel.title = "New title!!!"
            }
            
            SomeChildView(viewModel: $viewModel)
            
            SomeThirdChildView()
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    
    @Binding var viewModel: ObservableViewModelNew
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "SomeChildView!!!"
        }
    }
}

struct SomeThirdChildView: View {
    
    @Environment(ObservableViewModelNew.self) var viewModel: ObservableViewModelNew
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "SomeThirdChildView!!!"
        }
    }
}

#Preview {
    ObservableMacroBootcamp()
}


/// Было
//class ObservableViewModelNew: ObservableObject {
//    @Published var title: String = "Some title"
//}
//
//struct ObservableMacroBootcamp: View {
//    
//    @StateObject private var viewModel = ObservableViewModelNew()
//    
//    var body: some View {
//        VStack {
//            Button(viewModel.title) {
//                viewModel.title = "New title!!!"
//            }
//            
//            SomeChildView(viewModel: viewModel)
//            
//            SomeThirdChildView()
//        }
//        .environmentObject(viewModel)
//    }
//}
//
//struct SomeChildView: View {
//    
//    @ObservedObject var viewModel: ObservableViewModelNew
//    
//    var body: some View {
//        Button(viewModel.title) {
//            viewModel.title = "SomeChildView!!!"
//        }
//    }
//}
//
//struct SomeThirdChildView: View {
//    
//    @EnvironmentObject var viewModel: ObservableViewModelNew
//    
//    var body: some View {
//        Button(viewModel.title) {
//            viewModel.title = "SomeThirdChildView!!!"
//        }
//    }
//}
//
//#Preview {
//    ObservableMacroBootcamp()
//}
