//
//  AnimationExampleSeven.swift
//  Swiftui Animation Example 2
//
//  Created by Junaed Muhammad Chowdhury on 3/7/23.
//

import SwiftUI

struct AnimationExampleSeven: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation(.easeInOut(duration: 1)) {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed{
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    //.transition(.scale)
                    .transition(.asymmetric(insertion: .opacity, removal: .scale))
            }
        }
    }
}

struct AnimationExampleSeven_Previews: PreviewProvider {
    static var previews: some View {
        AnimationExampleSeven()
    }
}
