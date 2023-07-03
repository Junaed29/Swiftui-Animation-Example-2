//
//  ContentView.swift
//  Swiftui Animation Example 2
//
//  Created by Junaed Muhammad Chowdhury on 2/7/23.
//

import SwiftUI

struct AnimationExampleOne: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me") {
            //            if animationAmount == 5{
            //                animationAmount = 1
            //            }else{
            //                animationAmount += 1
            //            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 1)
                    .repeatForever(autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear {
            animationAmount = 2
        }
        //.scaleEffect(animationAmount)
        //.blur(radius: (animationAmount - 1) * 3)
        //        .animation(
        //            .easeInOut(duration: 1)
        //                .repeatForever(),
        //            value: animationAmount
        //        ) // We saying here that show animation for this view when animationAmount's value changed (.default is 'isEaseInOut' animation)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationExampleOne()
    }
}
