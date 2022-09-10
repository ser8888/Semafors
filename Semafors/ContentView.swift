//
//  ContentView.swift
//  Semafors
//
//  Created by Sergejs Tiselskis on 10/09/2022.
//

import SwiftUI

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                CircleView(color: .red)
                CircleView(color: .yellow)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                CircleView(color: .green)
                    
                Spacer()
                
                Button(action: {}) {
                    Text("Start")
                        .foregroundColor(.white)
                }
                
               
                
            }
            .padding()
        }
        
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
