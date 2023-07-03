//
//  AnimationExampleSIx.swift
//  Swiftui Animation Example 2
//
//  Created by Junaed Muhammad Chowdhury on 3/7/23.
//

import SwiftUI

struct AnimationExampleSIx: View {
    let letters = Array("Hello, Swiftui")
    
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self){num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(
                        .default.delay(Double(num)/20),
                        value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged{ value in
                    dragAmount = value.translation
                }
                .onEnded{ _ in
                    dragAmount = CGSize.zero
                    enabled.toggle()
                }
        )
    }
}

struct AnimationExampleSIx_Previews: PreviewProvider {
    static var previews: some View {
        AnimationExampleSIx()
    }
}
