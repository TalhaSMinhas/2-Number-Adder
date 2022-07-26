//
//  ContentView.swift
//  swiftUIPlayground
//
//  Created by Talha Minhas on 2022/07/15.
//
//  GitHub Personal Access Key: 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

import SwiftUI

struct ContentView: View {
    //@State private var name = "Poop"
    @State private var value1 = ""
    @State private var value2 = ""
    
    private var sum: Int{
        get{
            (Int(value1) ?? 0) + (Int(value2) ?? 0)
        }
    }
    
    var body: some View {
        NavigationView{
            VStack {
                TextField("Type First Value Here", text: $value1).keyboardType(.numberPad).padding(.all)
                    .foregroundColor(Color.pink)
                
                TextField("Type Second Value Here", text: $value2)
                    .keyboardType(.numberPad).padding(.all)
                    .foregroundColor(Color.cyan)
                        
                Text("Sum: \(sum)").padding(.all).foregroundColor(Color.green)
                
            }.navigationTitle("Two Number Adder")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
