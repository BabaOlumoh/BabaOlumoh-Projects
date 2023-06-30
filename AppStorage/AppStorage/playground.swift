//
//  playground.swift
//  AppStorage
//
//  Created by Babatunde Olumoh on 26/06/2023.
//

import SwiftUI

struct playground: View {
    @State private var text = ""
    @AppStorage("STRING_KEY") var savedText1 = ""
    @AppStorage("NUMBER_KEY") var counter1 = 0
    var body: some View {
        VStack{
            Text("\(counter1)")
                .font(.system(size: 100, weight: .bold, design: .serif))
                .foregroundColor(.blue)
                .onTapGesture {
                    counter1 += 1
                }
            TextField("Type something here", text: $text)
                .textFieldStyle(.roundedBorder)
                .font(.title)
                .onChange(of: text){
                    text in self.savedText1 = text
                }
                .onAppear{
                    self.text = savedText1
                    print("Loaded:\(savedText1)")
                }
            Spacer()
        }
        .padding()
        
    }
}

struct playground_Previews: PreviewProvider {
    static var previews: some View {
        playground()
    }
}
