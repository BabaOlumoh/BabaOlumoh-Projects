//  ContentView.swift
//  QuadraticSolver
//  Starter project code
//  Created by Philip Trwoga on 09/02/2023.
//

import SwiftUI


struct ContentView: View {
    //state vars for a,b,c,x1, and x2
    
    //data persistence
    @AppStorage("STRING_A") var saveA:Double = 0
    @AppStorage("STRING_Ax") var saveAx = ""
    @AppStorage("STRING_Bx") var saveBx = ""
    @AppStorage("STRING_Cx") var saveCx = ""
    @AppStorage("STRING_B") var saveB:Double = 0
    @AppStorage("STRING_C") var saveC:Double = 0
    @AppStorage("NUMBER_x1") var saveX1 = 0
    @AppStorage("NUMBER_x2") var countX2 = 0
    @AppStorage("NUMBER_Result") var resultA:Double = 0
    var body: some View {
        ScrollView {
            VStack {
                  Text("Quadratic Solver")
                    .font(.title)
                    .padding()
                
                Label(title: {Text("The quadratic form is:")}, icon:{} )
                Image("quadraticForm")
                    .resizable()
                    .padding()
                
                //A
                Label(title: {Text("Enter the first term")}, icon:{Image(systemName: "a.circle.fill")} )
                    .font(.title)
                
                TextField("Enter quadratic term", text: $saveAx)
                    .font(.title)
                    .background(Color.gray.opacity(0.3))
                    .border(Color.black)
                    .padding()
                
                    
                    
                
                //B
                Label(title: {Text("Enter the second term")}, icon:{Image(systemName: "b.circle.fill")} )
                    .font(.title)
                
                TextField("Enter linear term", text: $saveBx)
                    .font(.title)
                    .background(Color.gray.opacity(0.3))
                    .border(Color.black)
                    .padding()
                
                //C
                Label(title: {Text("Enter the three term")}, icon:{Image(systemName: "c.circle.fill")} )
                    .font(.title)
                
                TextField("Enter constant term", text: $saveCx)
                    .font(.title)
                    .background(Color.gray.opacity(0.3))
                    .border(Color.black)
                    .padding()
                // etc.
                
                Button("solve for x"){
                    solveForX()
                }
                
            }
        }
           Text("Your result is \(resultA)")
            
            
    }
    func solveForX()
    {
        if let saveADouble = Double(self.saveAx){
            saveA=saveADouble
        }
        if let saveBDouble = Double(self.saveBx){
            saveB=saveBDouble
        }
        if let saveCDouble = Double(self.saveCx){
            saveC=saveCDouble
        }
        
        self.resultA=saveA+saveB+saveC
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
