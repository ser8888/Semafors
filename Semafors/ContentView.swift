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
//                .ignoresSafeArea()
            VStack {
                CircleView(color: .red)
                CircleView(color: .yellow)
                CircleView(color: .green)
                Spacer()
            }
        }
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
