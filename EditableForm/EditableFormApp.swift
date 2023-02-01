//
//  EditableFormApp.swift
//  EditableForm
//
//  Created by Erik Flores on 28/01/23.
//

import SwiftUI

class Log: ObservableObject {
    @Published var url: String
    
    init(url: String) {
        self.url = url
    }
}


@main
struct EditableFormApp: App {
    @ObservedObject var mockURL = Log(url: "http://erikflores.dev?user=erik&show=true")
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(mockURL)
        }
    }
}
