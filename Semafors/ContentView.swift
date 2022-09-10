//
//  ContentView.swift
//  Semafors
//
//  Created by Sergejs Tiselskis on 10/09/2022.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    
     private enum CurrentLight {
            case red, yellow, green
        }

    @State private var currentLight = CurrentLight.red
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    @State var redLightStatus = 0.3
    @State var yellowLightStatus = 0.3
    @State var greenLightStatus = 0.3
    @State var buttonTitle = "START"
    
    var body: some View {
        
     
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                CircleView(color: .red .opacity(redLightStatus))
                CircleView(color: .yellow .opacity(yellowLightStatus))
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                CircleView(color: .green .opacity(greenLightStatus))
                Spacer()
             
                Button(action: {
                    buttonTitle = "NEXT"
                    switch currentLight {
                    case .red:
                        redLightStatus = lightIsOn
                       greenLightStatus = lightIsOff
                        currentLight = .yellow
                    case .yellow:
                        yellowLightStatus = lightIsOn
                        redLightStatus = lightIsOff
                        currentLight = .green
                    case .green:
                        greenLightStatus = lightIsOn
                        yellowLightStatus = lightIsOff
                        currentLight = .red
                    }
                }) {
                    Text(buttonTitle)
                        .kerning(2)
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .overlay(
                        RoundedRectangle(cornerRadius:  10)
                            .stroke(Color.white, lineWidth: 5))
            
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

