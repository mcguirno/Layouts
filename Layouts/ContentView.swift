//
//  ContentView.swift
//  Layouts
//
//  Created by Noah McGuire on 2/3/25.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Yo"
    var body: some View {
        VStack{
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 2)
                .padding()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .border(.purple, width: 5)
        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
