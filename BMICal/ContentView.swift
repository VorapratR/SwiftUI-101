//
//  ContentView.swift
//  BMICal
//
//  Created by Woraprat Rattana on 16/4/2563 BE.
//  Copyright © 2563 Woraprat Rattana. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var resultText: String = "BMI Calculator"
    @State var weight: String = ""
    @State var height: String = ""
    var body: some View {
        VStack {
           Text(resultText)
            .font(.largeTitle)
           HStack {
            Text("Weight")
            TextField("Kilogram", text: $weight)
            }.padding()
            
           HStack {
            Text("Height")
            TextField("Centimeter", text: $height)
            }.padding()
            
           Button(action: {
            let result = Double(self.weight)! / pow(Double(self.height)! / 100.0, 2)
            self.resultText = String(result)
           }) {
                Text("Calculator")
            }.padding()
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
