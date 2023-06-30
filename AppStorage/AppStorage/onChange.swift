//
//  onChange.swift
//  AppStorage
//
//  Created by Babatunde Olumoh on 26/06/2023.
//

import SwiftUI

struct onChange: View {
    @State private var text = ""
    @AppStorage("STRING") var saved = ""
    @AppStorage("NUMBER") var count = 0
    var body: some View {
        VStack{
            Text("\(count)")
                .font(.system(size: 100, weight: .bold, design: .rounded))
                .foregroundColor(.blue)
            
            TextField("type something here", text: $text)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .onChange(of: text){
                    text in self.saved = saved
                }
                .onAppear{
                    self.saved = saved
                    print("\(saved)")
                }
            Button("Increment"){
                increment()
            }
        }
        .padding()
    }
    func increment(){
        return count+=2
    }
}

struct onChange_Previews: PreviewProvider {
    static var previews: some View {
        onChange()
    }
}
