//
//  ContentView.swift
//  ColorizedApp
//
//  Created by Николай Христолюбов on 21.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue: Double = 100
    @State private var greenSliderValue: Double = 150
    @State private var blueSliderValue: Double = 200
    
    @State private var redTFValue: String = "100"
    @State private var greenTFValue: String = "150"
    @State private var blueTFValue: String = "200"
    
    var body: some View {
        VStack {
            Color(red: Double(redSliderValue/255),
                  green: Double(greenSliderValue/255),
                  blue: Double(blueSliderValue/255))
            
                .frame(height: 200)
                .cornerRadius(15)
            VStack {
                ColorSliderView(sliderValue: $redSliderValue, textValue: $redTFValue, currentColor: .red)
                ColorSliderView(sliderValue: $greenSliderValue, textValue: $greenTFValue, currentColor: .green)
                ColorSliderView(sliderValue: $blueSliderValue, textValue: $blueTFValue, currentColor: .blue)
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


