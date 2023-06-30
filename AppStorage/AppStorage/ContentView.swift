//
//  ContentView.swift
//  AppStorage
//
//  Created by Babatunde Olumoh on 26/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    @AppStorage("STRING_KEY") var savedText = ""
    @AppStorage("NUMBER_KEY") var counter = 0
    var body: some View {
        VStack {
            Text("\(counter)")
                .font(.system(size: 100, weight: .bold, design: .serif))
                .foregroundColor(.red)
                .onTapGesture {
                    counter+=1
                }
            TextField("Type something", text: $text)
                .textFieldStyle(.roundedBorder)
                .font(.title)
                .autocorrectionDisabled(true)
                .onChange(of: text){
                    text in self.savedText = text
                }
                .onAppear{
                    self.text = savedText
                    print("Loaded: \(savedText)")
                }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
