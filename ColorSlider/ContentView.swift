//
//  ContentView.swift
//  ColorSlider
//
//  Created by Russell Gordon on 2021-12-07.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var hue = 0.0
    @State var saturation = 80.0
    @State var brightness = 90.0
    
    // MARK: Computed properties
    var currentColor: Color {
        return Color(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0)
    }
    
    
    var body: some View {
        
        VStack {
            
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundColor(currentColor)
                .padding(.vertical)
            
            
            Group {
                
                Text("Hue")
                    .bold()
                
                Slider(value: $hue,
                       in: 0.0...360.0,
                       step: 0.5,
                       label: {
                            Text("Hue")
                },
                       minimumValueLabel: {
                            Text("0")
                },
                       maximumValueLabel: {
                            Text("360")
                })
                
                Text("\(String(format:"%.1f", hue))")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 20)
            }


            Group {
                
                Text("Saturation")
                    .bold()
                
                Slider(value: $saturation,
                       in: 0.0...100.0,
                       step: 0.5,
                       label: {
                            Text("Saturation")
                },
                       minimumValueLabel: {
                            Text("0")
                },
                       maximumValueLabel: {
                            Text("100")
                })

                Text("\(String(format:"%.1f", saturation))")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 20)
            }
            
            Group {
                Text("Brightness")
                    .bold()
                
                Slider(value: $brightness,
                       in: 0.0...100.0,
                       step: 0.5,
                       label: {
                            Text("Brightness")
                },
                       minimumValueLabel: {
                            Text("0")
                },
                       maximumValueLabel: {
                            Text("100")
                })

                Text("\(String(format:"%.1f", brightness))")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 20)
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
