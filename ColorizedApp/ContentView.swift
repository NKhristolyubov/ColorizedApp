//
//  ContentView.swift
//  ColorizedApp
//
//  Created by Николай Христолюбов on 21.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue: Double = 100
    @State private var greenSliderValue: Double = 100
    @State private var blueSliderValue: Double = 100
    
    @State private var redTFValue: String = "10"
    @State private var greenTFValue: String = "20"
    @State private var blueTFValue: String = "30"
    
    var body: some View {
        VStack {
            Color(red: Double(redSliderValue/255),
                  green: Double(greenSliderValue/255),
                  blue: Double(blueSliderValue/255))
            
                .frame(height: 200)
                .cornerRadius(15)
            VStack {
                ColorSliderView(sliderValue: $redSliderValue, textValue: $redTFValue)
                ColorSliderView(sliderValue: $greenSliderValue, textValue: $greenTFValue)
                ColorSliderView(sliderValue: $blueSliderValue, textValue: $blueTFValue)
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


