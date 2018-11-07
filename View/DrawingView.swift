//
//  DrawingView.swift
//  Drawing Project
//
//  Created by Tolman, Caiden on 11/1/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{
    public override func draw(_ rect: CGRect) -> Void
    {createStickFigure().stroke()
     drawTurtle().stroke()
    drawFace().stroke()
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.black.setStroke()
        figure.lineWidth = 4.0
        
        figure.addArc(withCenter: CGPoint(x:200, y: 200),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y:270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        
        
        return figure
    }
    private func drawTurtle() -> UIBezierPath
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
        
        return logo
    }
    
    private func drawFace() -> UIBezierPath
    {
        let figure = UIBezierPath()
        UIColor.black.setStroke()
        figure.move(to: CGPoint(x: 300, y: 320))
        figure.addLine(to: CGPoint(x: 300, y: 370))
        figure.move(to: CGPoint(x: 320, y: 370))
        figure.addLine(to: CGPoint(x: 320, y: 370))
        figure.move(to: CGPoint(x: 370, y: 370))
        figure.addLine(to: CGPoint(x: 370, y: 370))
        figure.move(to: CGPoint(x: 310, y: 370))
        figure.addLine(to: CGPoint(x: 310, y: 370))
        
        
        
        
        return figure
    }
}
