//
//  AnimationExampleTwo.swift
//  Swiftui Animation Example 2
//
//  Created by Junaed Muhammad Chowdhury on 3/7/23.
//

import SwiftUI

struct AnimationExampleTwo: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Stepper("Scale amount", value: $animationAmount.animation(
                .easeInOut(duration: 3)
                .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            
            
            Spacer()
            Text(String(format: "%.0f",animationAmount))
                .font(.title)
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)

        }
        .padding()
    }
}

struct AnimationExampleTwo_Previews: PreviewProvider {
    static var previews: some View {
        AnimationExampleTwo()
    }
}
