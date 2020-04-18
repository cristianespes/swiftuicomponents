//
//  DraggableView.swift
//  ComponentsSwiftUI
//
//  Created by Cristian Espes on 18/04/2020.
//  Copyright © 2020 Cristian Espes. All rights reserved.
//

import SwiftUI

struct DraggableView<T>: View where T: View {
    
    @GestureState private var dragState = DragState.none
    @State private var position = CGSize.zero
    
    @State private var childSize: CGRect = .zero
    
    var content: () -> T
    
    var body: some View {
        GeometryReader { geometry in
            self.content()
                .opacity(self.dragState.isPressing ? 0.5 : 1.0)
                .offset(x: self.position.width + self.dragState.translation.width,
                        y: self.position.height + self.dragState.translation.height)
                .animation(.easeIn)
                .overlay(
                    Color.black
                        .modifier(GeometryGetterMod(rect: self.$childSize))
                )
                .gesture(
                    LongPressGesture(minimumDuration: 1.0)
                        .sequenced(before: DragGesture())
                        .updating(self.$dragState){ (value, state, transaction) in
                            switch value {
                                case .first(true):
                                    state = .pressing
                                case .second(true, let drag):
                                    state = .dragging(translation: drag?.translation ?? .zero)
                                default:
                                    break
                            }
                        }
                        .onEnded{ (value) in
                            guard case .second(true, let drag?) = value else{
                                return
                            }
                            self.generatePosition(newPos: drag.translation, geometry: geometry)
                        }
                )
        }
    }
    
    private func generatePosition(newPos: CGSize, geometry: GeometryProxy) {
        let parent = geometry.frame(in: .local)
        
        print("--------- --------- --------- HEIGHT --------- --------- ---------")
        print("HEIGHT -> position.height: \(position.height)")
        print("HEIGHT -> parent.height: \(parent.height)")
        print("HEIGHT -> parent.midY: \(parent.midY)")
        print("HEIGHT -> parent.minY: \(parent.minY)")
        print("--------- --------- --------- --------- --------- ---------")
        
        print("--------- --------- --------- WIDTH --------- --------- ---------")
        print("WIDTH -> position.width: \(position.width)")
        print("WIDTH -> parent.width: \(parent.width)")
        print("WIDTH -> parent.midX: \(parent.midX)")
        print("WIDTH -> parent.minX: \(parent.minX)")
        print("--------- --------- --------- --------- --------- ---------")
        
        print("--------- --------- --------- CHILD --------- --------- ---------")
        print("CHILD -> childSize.height: \(childSize.height)")
        print("CHILD -> childSize.width: \(childSize.width)")
        print("--------- --------- --------- --------- --------- ---------")
        
        if (position.height + newPos.height + (childSize.height/2)) > parent.height / 2 {
            print("Sale por abajo")
            position.height = (parent.height - childSize.height) / 2
        } else if (position.height + newPos.height - (childSize.height/2)) < -(parent.height) / 2 {
            print("Sale por arriba")
            position.height = (-parent.height + childSize.height) / 2
        } else {
            print("Suma vertical")
            position.height += newPos.height
        }
        
        if (position.width + newPos.width + (childSize.width/2)) > parent.width / 2 {
            print("Sale por la derecha")
            position.width = (parent.width - childSize.width) / 2
        } else if (position.width + newPos.width - (childSize.width/2)) < -parent.width / 2 {
            print("Sale por la izquierda")
            position.width = (-parent.width + childSize.width) / 2
        } else {
            print("Suma horizontal")
            position.width += newPos.width
        }
    }
    
    private enum DragState {
        case none
        case pressing
        case dragging(translation: CGSize)
        
        var translation: CGSize{
            switch self {
            case .none, .pressing:
                return .zero
            case .dragging(let translation):
                return translation
            }
        }
        
        var isPressing: Bool{
            switch self {
            case .pressing, .dragging:
                return true
            case .none:
                return false
            }
        }
    }
}

struct GeometryGetterMod: ViewModifier {
    @Binding var rect: CGRect

    func body(content: Content) -> some View {
        print(content)
        return GeometryReader { (g) -> Color in // (g) -> Content in - is what it could be, but it doesn't work
            DispatchQueue.main.async { // to avoid warning
                self.rect = g.frame(in: .global)
            }
            return Color.clear // return content - doesn't work
        }
    }
}

struct DraggableView_Previews: PreviewProvider {
    static var previews: some View {
        DraggableView() {
            Text("Esto es un texto draggable")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.pink)
                .background(Color.black)
        }
    }
}



