//
//  ColorSliderView.swift
//  ColorizedApp
//
//  Created by Николай Христолюбов on 22.10.2022.
//

import SwiftUI

struct ColorSliderView: View {
    
    @Binding var sliderValue: Double
    @Binding var textValue: String
    
    var body: some View {
        HStack {
            Text(String(sliderValue.formatted()))
                .frame(width: 50)
            Slider(value: $sliderValue, in: 1...255, step: 1)
            TextField("", text: $textValue) { _ in
                sliderValue = Double(textValue) ?? 0
            }.frame(width: 50)
        }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(sliderValue: .constant(100.0), textValue: .constant("99"))
        Spacer()
    }
}
