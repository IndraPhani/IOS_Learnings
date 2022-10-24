//
//  Canvas.swift
//  Eng02Fall22
//
//  Created by Chandra on 10/15/22.
//

import UIKit

class CanvasView: UIView {
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        // Getting the graphics context
        guard let context = UIGraphicsGetCurrentContext() else{
            return
        }
        
        // Orange path
        context.setFillColor(UIColor.systemOrange.cgColor)
        context.move(to: CGPoint(x: CGFloat(70), y: CGFloat(30)))
        context.addQuadCurve(to: CGPoint(x: CGFloat(150), y: CGFloat(40)), control: CGPoint(x: CGFloat(120), y: CGFloat(20)))
        context.addLine(to: CGPoint(x: CGFloat(135), y: CGFloat(100)))
        context.addQuadCurve(to: CGPoint(x: CGFloat(55), y: CGFloat(90)), control: CGPoint(x: CGFloat(100), y: CGFloat(80)))
        context.closePath()
        context.fillPath()
        
        // implement Green.
        context.setFillColor(UIColor.systemGreen.cgColor)
               context.move(to: CGPoint(x: CGFloat(165), y: CGFloat(45)))
               context.addQuadCurve(to: CGPoint(x: CGFloat(245), y: CGFloat(55)), control: CGPoint(x: CGFloat(195), y: CGFloat(65)))
               context.addLine(to: CGPoint(x: CGFloat(230), y: CGFloat(115)))
               context.addQuadCurve(to: CGPoint(x: CGFloat(150), y: CGFloat(105)), control: CGPoint(x: CGFloat(195), y: CGFloat(125)))
               context.closePath()
               context.fillPath()
        // implement Blue.
        context.setFillColor(UIColor.systemBlue.cgColor)
               context.move(to: CGPoint(x: CGFloat(54), y: CGFloat(105)))
               context.addQuadCurve(to: CGPoint(x: CGFloat(134), y: CGFloat(115)), control: CGPoint(x: CGFloat(104), y: CGFloat(95)))
               context.addLine(to: CGPoint(x: CGFloat(119), y: CGFloat(175)))
               context.addQuadCurve(to: CGPoint(x: CGFloat(39), y: CGFloat(165)), control: CGPoint(x: CGFloat(84), y: CGFloat(155)))
               context.closePath()
               context.fillPath()
        // implement Yellow.
        context.setFillColor(UIColor.systemYellow.cgColor)
             context.move(to: CGPoint(x: CGFloat(147), y: CGFloat(119)))
             context.addQuadCurve(to: CGPoint(x: CGFloat(227), y: CGFloat(129)), control: CGPoint(x: CGFloat(187), y: CGFloat(139)))
             context.addLine(to: CGPoint(x: CGFloat(212), y: CGFloat(189)))
             context.addQuadCurve(to: CGPoint(x: CGFloat(132), y: CGFloat(179)), control: CGPoint(x: CGFloat(167), y: CGFloat(199)))
             context.closePath()
             context.fillPath()
    }
}
