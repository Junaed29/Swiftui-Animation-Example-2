//
//  AnimationExampleFour.swift
//  Swiftui Animation Example 2
//
//  Created by Junaed Muhammad Chowdhury on 3/7/23.
//

import SwiftUI

struct AnimationExampleFour: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .animation(nil, value: enabled) // Here color chnage will not animating but Clipshape will
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
        //.clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        
    }
}

struct AnimationExampleFour_Previews: PreviewProvider {
    static var previews: some View {
        AnimationExampleFour()
    }
}


//.animation(.default, value: enabled) this modifier's placement is very importent
// It will not animate the modifier below the animation modifier
// .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0)) this modofier will not animatate
