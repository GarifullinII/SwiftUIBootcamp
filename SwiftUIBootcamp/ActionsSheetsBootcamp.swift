//
//  ActionsSheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Ildar Garifullin on 29.11.2024.
//

import SwiftUI

struct ActionsSheetsBootcamp: View {

    @State var showActionSheet: Bool = false
    @State var actionSheetOptions: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("username")
                Spacer()
                Button {
                    actionSheetOptions = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
            }
            //        Button("Click me") {
            //            showActionSheet.toggle()
            //        }
            //        .actionSheet(isPresented: $showActionSheet) {
            //            getActionSheet()
            //        }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            print("")
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("REport")) {
            print("")
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            print("")
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What woud you like to do?")
        
        switch actionSheetOptions {
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton]
            )
        }
        
//        return ActionSheet(title: Text("This is the title!"))
        
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
//        
//        return ActionSheet(
//            title: Text("This is the title!"),
//            message: Text("This is the message"),
//            buttons: [
//                button1,
//                button2,
//                button3
//            ]
//        )
    }
}

#Preview {
    ActionsSheetsBootcamp()
}
