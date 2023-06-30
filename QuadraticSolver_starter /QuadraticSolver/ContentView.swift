//  ContentView.swift
//  QuadraticSolver
//  Starter project code
//  Created by Babatunde Olumoh on 30/06/2023.
//

import SwiftUI


struct ContentView: View {
    //state vars for a,b,c,x1, and x2
    @State private var a:Double = 0
    @State private var b:Double = 0
    @State private var c:Double = 0
    @State private var x1:Double = 0
    @State private var x2:Double = 0
    //data persistence
    @AppStorage("STRING_A") var textA = ""
    @AppStorage("STRING_B") var textB = ""
    @AppStorage("STRING_C") var textC = ""
    @AppStorage("NUMBER_RESULT") var resultx1:Double = 0
    @AppStorage("NUMBER_RESULT2") var resultx2:Double = 0
    var body: some View {
        ScrollView {
            VStack {
                Text("Quadratic Solver")
                    .font(.title)
                    .bold()
                    .padding()
                
                Label(title: {Text("The quadratic form is:")}, icon: {})
                
                Image("quadraticForm")
                    .resizable()
                
                Label(title: {Text("Enter the first term")}, icon: {Image(systemName: "a.circle.fill")})
                    .font(.title)
                
                TextField("0.0", text: $textA)
                    .border(Color.black)
                    .padding()
                    .font(.title)
                
                Label(title: {Text("Enter the second term")}, icon: {Image(systemName: "b.circle.fill")})
                    .font(.title)
                
                TextField("0.0", text: $textB)
                    .border(Color.black)
                    .padding()
                    .font(.title)
                
                Label(title: {Text("Enter the third term")}, icon: {Image(systemName: "c.circle.fill")})
                    .font(.title)
                
                TextField("0.0", text: $textC)
                    .border(Color.black)
                    .padding()
                    .font(.title)
                
                Button("Solve"){
                    solveForX()
                }
            }
            Text("Your result is \(resultx1) \(resultx2)")
                .padding()
        }
           
    }
    func solveForX()
    {
        if let saveADouble = Double(self.textA){
            a=saveADouble

        }
        if let saveBDouble = Double(self.textB){
            b=saveBDouble

        }
        if let saveCDouble = Double(self.textC){
            c=saveCDouble
        }
   
        let calc = b * b - 4 * a * c
        self.resultx1=(-b + sqrt(calc)) / (2 * a)
        self.resultx2=(-b - sqrt(calc)) / (2 * a)
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
