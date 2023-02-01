//
//  ContentView.swift
//  EditableForm
//
//  Created by Erik Flores on 28/01/23.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject var mockURL: Log
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(mockURL.url) {
                    ShowURL()
                }
            }
        }
    }
}

struct ShowURL: View {
    @EnvironmentObject var mockURL: Log
    
    var body: some View {
        List {
            Section("URL") {
                NavigationLink(mockURL.url) {
                    EditURL()
                }
            }
            Section("Headers") {
                Cell(title: "header 1", value: "head value")
                Cell(title: "header 2", value: "head value")
            }
        }
    }
}

struct EditURL: View {
    @EnvironmentObject var mockURL: Log
    
    var body: some View {
        List {
            Section("Base") {
                TextField("", text: $mockURL.url)
            }
            Section("Parameters") {
                Cell(title: "user", value: "erik")
                Cell(title: "show", value: "true")
            }
        }
    }
}

struct Cell: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title).bold()
            Text(value)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
