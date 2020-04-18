//
//  GridView.swift
//  ComponentsSwiftUI
//
//  Created by Cristian Espes on 18/04/2020.
//  Copyright © 2020 Cristian Espes. All rights reserved.
//

import SwiftUI

struct GridView<Content, T>: View where Content: View  {
    
    let content: (T) -> Content
    
    let columns: Int
    let spacing: CGFloat
    let items: [T]
    var numberRows: Int {
        (items.count - 1) / columns
    }
    
    init(columns: Int, items: [T], spacing: CGFloat = 0, @ViewBuilder content: @escaping (T) -> Content) {
        self.columns = columns
        self.spacing = spacing
        self.items = items
        self.content = content
    }
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(spacing: 0) {
                            
                    ForEach(0...self.numberRows, id: \.self) { row in
                        HStack(spacing: 0) {
                            ForEach(0..<self.columns, id: \.self) { column in
                                Group {
                                    if self.elementFor(row: row, column: column) != nil {
                                        self.content(self.items[self.elementFor(row: row, column:
                                        column)!])
                                            .padding(.horizontal, self.spacing / 2)
                                            .padding(.bottom, self.spacing)
                                         .frame(width: geometry.size.width / CGFloat(self.columns),
                                         height: geometry.size.width / CGFloat(self.columns))
                                    } else {
                                        Spacer()
                                    }
                                }
                            }
                        }
                    }
                            
                }
            }
        }
        .padding(.horizontal, -spacing/2)
        .padding(.bottom, -spacing)
    }
    
    func elementFor(row: Int, column: Int) -> Int? {
         let index = row * self.columns + column
         return index < items.count ? index : nil
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(columns: 3,
                 items: [1, 2, 3, 4, 5, 6, 7],
                 spacing: 10) { item in
            Circle()
                .foregroundColor(Color.gray)
                .background(Color.blue)
        }
        //.padding(.horizontal, 10)
    }
}
