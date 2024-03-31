//
//  ContentView.swift
//  observabletest
//
//  Created by Adam Carter on 31/03/2024.
//

import Observation
import SwiftUI

struct ContentView: View {
    @Environment(SomeProtocol.self) private var someThing
    
    var body: some View {
        @Bindable var thing = someThing
        
        VStack {
            TextField("Name", text: $thing.name)
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(Actual(name: ""))
}

protocol SomeProtocol: AnyObject, Observable {
    var name: String { get set }
}

@Observable
class Actual: SomeProtocol {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
