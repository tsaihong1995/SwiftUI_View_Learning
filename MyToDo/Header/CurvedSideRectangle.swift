//
//  CurvedSideRectangle.swift
//  SwiftUI_View_Learning
//
//  Created by Hung-Chun Tsai on 2021-01-29.
//

import SwiftUI

struct CurvedSideRectangle: Shape {
    
    var yOffSet: CGFloat = 100;
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: 0, y: rect.maxY),
                          control: CGPoint(x: rect.midX, y: rect.maxY + yOffSet))
        path.closeSubpath()
        
        return path
    }
}

struct CurvedSideRectangle_Previews: PreviewProvider {
    static var previews: some View {
        CurvedSideRectangle(yOffSet: 50)
            .frame(height: 100)
    }
}
