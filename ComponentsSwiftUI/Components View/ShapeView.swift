//
//  ShapeView.swift
//  ComponentsSwiftUI
//
//  Created by Cristian Espes on 19/04/2020.
//  Copyright © 2020 Cristian Espes. All rights reserved.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
//        Path() { path in
//            path.move(to: CGPoint(x: 20, y: 20))
//            path.addLine(to: CGPoint(x: 300, y: 20))
//            path.addLine(to: CGPoint(x: 300, y: 200))
//            path.addLine(to: CGPoint(x: 20, y: 200))
//        }
//        .fill(Color.green)
//
//        Path() { path in
//            path.move(to: CGPoint(x: 20, y: 20))
//            path.addLine(to: CGPoint(x: 300, y: 20))
//            path.addLine(to: CGPoint(x: 300, y: 200))
//            path.addLine(to: CGPoint(x: 20, y: 200))
//            path.closeSubpath()
//        }
//        .stroke(Color.green, lineWidth: 10)
//
//        Path() { path in
//            path.move(to: CGPoint(x: 20, y: 60))
//            path.addLine(to: CGPoint(x: 40, y: 60))
//            path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
//            path.addLine(to: CGPoint(x: 230, y: 60))
//            path.addLine(to: CGPoint(x: 230, y: 100))
//            path.addLine(to: CGPoint(x: 20, y: 100))
//        }
//        .fill(Color.purple)
            
//        ZStack {
//            Path() { path in
//                path.move(to: CGPoint(x: 20, y: 60))
//                path.addLine(to: CGPoint(x: 40, y: 60))
//                path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
//                path.addLine(to: CGPoint(x: 230, y: 60))
//                path.addLine(to: CGPoint(x: 230, y: 100))
//                path.addLine(to: CGPoint(x: 20, y: 100))
//            }
//            .fill(Color.purple)
//
//            Path() { path in
//                path.move(to: CGPoint(x: 20, y: 60))
//                path.addLine(to: CGPoint(x: 40, y: 60))
//                path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
//                path.addLine(to: CGPoint(x: 230, y: 60))
//                path.addLine(to: CGPoint(x: 230, y: 100))
//                path.addLine(to: CGPoint(x: 20, y: 100))
//                path.closeSubpath()
//            }
//            .stroke(Color.black, lineWidth: 5)
//        }
        
//        Path { path in
//            path.move(to: CGPoint(x: 200, y: 200))
//            path.addArc(
//                center: .init(x: 200, y: 200),
//                radius: 150,
//                startAngle: Angle(degrees: 0),
//                endAngle: Angle(degrees: 45),
//                clockwise: true
//            )
//        }
//        .fill(Color.green)
        
//        ZStack {
//            Path { path in
//                path.move(to: CGPoint(x: 200, y: 200))
//                path.addArc(
//                    center: .init(x: 200, y: 200),
//                    radius: 150,
//                    startAngle: Angle(degrees: 0.0),
//                    endAngle: Angle(degrees: 190),
//                    clockwise: true
//                )
//            }
//            .fill(Color(.systemYellow))
//
//            Path { path in
//            path.move(to: CGPoint(x: 200, y: 200))
//            path.addArc(
//                center: .init(x: 200, y: 200),
//                radius: 150,
//                startAngle: Angle(degrees: 190),
//                endAngle: Angle(degrees: 110),
//                clockwise: true)
//            }
//            .fill(Color(.systemTeal))
//
//            Path { path in
//            path.move(to: CGPoint(x: 200, y: 200))
//            path.addArc(
//                center: .init(x: 200, y: 200),
//                radius: 150,
//                startAngle: Angle(degrees: 110),
//                endAngle: Angle(degrees: 90),
//                clockwise: true)
//            }
//            .fill(Color(.systemBlue))
//
//            Path { path in
//                path.move(to: CGPoint(x: 200, y: 200))
//                path.addArc(
//                    center: .init(x: 200, y: 200),
//                    radius: 150,
//                    startAngle: Angle(degrees: 90.0),
//                    endAngle: Angle(degrees: 360),
//                    clockwise: true
//                )
//            }
//            .fill(Color(.systemPurple))
//        }
        
//        ZStack {
//            Path { path in
//                path.move(to: CGPoint(x: 200, y: 200))
//                path.addArc(
//                    center: .init(x: 200, y: 200),
//                    radius: 150,
//                    startAngle: Angle(degrees: 0.0),
//                    endAngle: Angle(degrees: 190),
//                    clockwise: true
//                )
//            }
//            .fill(Color(.systemYellow))
//
//            Path { path in
//            path.move(to: CGPoint(x: 200, y: 200))
//            path.addArc(
//                center: .init(x: 200, y: 200),
//                radius: 150,
//                startAngle: Angle(degrees: 190),
//                endAngle: Angle(degrees: 110),
//                clockwise: true)
//            }
//            .fill(Color(.systemTeal))
//
//            Path { path in
//            path.move(to: CGPoint(x: 200, y: 200))
//            path.addArc(
//                center: .init(x: 200, y: 200),
//                radius: 150,
//                startAngle: Angle(degrees: 110),
//                endAngle: Angle(degrees: 90),
//                clockwise: true)
//            }
//            .fill(Color(.systemBlue))
//
//            Path { path in
//                path.move(to: CGPoint(x: 200, y: 200))
//                path.addArc(
//                    center: .init(x: 200, y: 200),
//                    radius: 150,
//                    startAngle: Angle(degrees: 90.0),
//                    endAngle: Angle(degrees: 360),
//                    clockwise: true
//                )
//            }
//            .fill(Color(.systemPurple))
//            .offset(x: 20, y: 20)
//
//            Path { path in
//                path.move(to: CGPoint(x: 200, y: 200))
//                path.addArc(
//                    center: .init(x: 200, y: 200),
//                    radius: 150,
//                    startAngle: Angle(degrees: 90.0),
//                    endAngle: Angle(degrees: 360),
//                    clockwise: true)
//                path.closeSubpath()
//            }
//            .stroke(Color(red: 52/255, green: 52/255, blue: 122/255), lineWidth: 10)
//            .offset(x: 20, y: 20)
//            .overlay(
//                Text("25%")
//                    .font(.system(.largeTitle, design: .rounded))
//                    .bold()
//                    .foregroundColor(.red)
//                    .offset(x: 100, y: -40)
//            )
//        }
        
        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addQuadCurve(to: CGPoint(x: 200, y: 0), control: CGPoint(x: 100, y: -20))
            path.addLine(to: CGPoint(x: 200, y: 40))
            path.addLine(to: CGPoint(x: 0, y: 40))
        }
        .fill(Color.green)
        
    }
}

#if DEBUG
struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
#endif
