//
//  AnimationExampleThree.swift
//  Swiftui Animation Example 2
//
//  Created by Junaed Muhammad Chowdhury on 3/7/23.
//

import SwiftUI

struct AnimationExampleThree: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation (.interpolatingSpring(stiffness: 5, damping: 1)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
}

struct AnimationExampleThree_Previews: PreviewProvider {
    static var previews: some View {
        AnimationExampleThree()
    }
}
