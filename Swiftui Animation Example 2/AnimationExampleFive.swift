//
//  AnimationExampleFive.swift
//  Swiftui Animation Example 2
//
//  Created by Junaed Muhammad Chowdhury on 3/7/23.
//

import SwiftUI

struct AnimationExampleFive: View {
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged{ value in
                        dragAmount = value.translation
                    }
                    .onEnded{ _ in
                        dragAmount = .zero
                    }
            )
            .animation(.spring(), value: dragAmount)
    }
}

struct AnimationExampleFive_Previews: PreviewProvider {
    static var previews: some View {
        AnimationExampleFive()
    }
}
