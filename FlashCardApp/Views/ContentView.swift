//
//  ContentView.swift
//  FlashCardApp
//
//  Created by Logan Snopek on 2021-12-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Text("What's \"power house\" of a cell")
                .font(.title)
                .bold()
                .padding()
            
            Button(action: {
                print("Button was pressed")
            }, label: {
                Text("Check")
            })
            .buttonStyle(.bordered)
            
            Spacer()
            
            
            
        }
        .navigationTitle("Flash Cards")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
