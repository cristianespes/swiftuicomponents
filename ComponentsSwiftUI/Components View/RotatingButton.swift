//
//  RotatingButton.swift
//  ComponentsSwiftUI
//
//  Created by Cristian Espes on 19/04/2020.
//  Copyright © 2020 Cristian Espes. All rights reserved.
//

import SwiftUI

struct RotatingButton: View {
    var body: some View {
        Button(action: {
            print("Plus button tapped")
        }) {
            Image(systemName: "plus")
        }
        .buttonStyle(CircularStyle())
    }
}

struct CircularStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.largeTitle)
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotationEffect(configuration.isPressed ? Angle(degrees: 135) : Angle(degrees: 0))
    }
}

#if DEBUG
struct RotatingButton_Previews: PreviewProvider {
    static var previews: some View {
        RotatingButton()
    }
}
#endif
