//
//  ProgressIndicatorView.swift
//  ComponentsSwiftUI
//
//  Created by Cristian Espes on 20/04/2020.
//  Copyright © 2020 Cristian Espes. All rights reserved.
//

import SwiftUI

struct ProgressIndicatorView: View {
    private var purpleGradient = LinearGradient(gradient: Gradient(colors: [ Color (red: 207/255, green: 150/255, blue: 207/255), Color(red: 107/255, green: 116/255, blue: 179/255) ]), startPoint: .trailing, endPoint: .leading)
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color(.systemGray3), lineWidth: 20)
                .frame(width: 300, height: 300)
            
            Circle()
                .trim(from: 0, to: 0.85)
                .stroke(purpleGradient, lineWidth: 10)
                .rotationEffect(Angle(degrees: -90))
                .frame(width: 300, height: 300)
                .overlay(
                    VStack {
                        Text("85%")
                            .font(.system(size: 80, weight: .bold, design: .rounded))

                        Text("Complete")
                            .font(.system(.body, design: .rounded))
                            .bold()
                            .foregroundColor(Color(.systemGray))
                    }
                )
        }
    }
}

#if DEBUG
struct ProgressIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressIndicatorView()
    }
}
#endif
