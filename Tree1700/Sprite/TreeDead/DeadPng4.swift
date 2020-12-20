//
//  DeadPng4.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 20.12.20.
//

import SpriteKit
import SwiftUI

class DeadPng4: SKScene {
    
    override func didMove(to view: SKView) {
       super.didMove(to: view)
        loadGameOver()

     if let   emitter: SKEmitterNode = SKEmitterNode(fileNamed: "MagikScene") {
              emitter.particleTexture = SKTexture(imageNamed: "png4")
              emitter.position = CGPoint(x: frame.midX, y: frame.midY)
              emitter.particleBirthRate = 2
              emitter.setScale(0.001)
              addChild(emitter)

            emitter.run(SKAction.fadeIn(withDuration: 0.5)) {
                emitter.run(SKAction.fadeOut(withDuration: 15.0)) {
                    emitter.removeFromParent()
                }
            }
        }
    }
    func loadGameOver() {
        let txt : SKLabelNode = SKLabelNode()
            txt.text = "tree is dead"
             txt.fontName = "Verdana-Bold "
            txt.position = CGPoint(x: frame.midX, y: frame.midY)
            txt.fontSize = 15
            txt.setScale(0.005)
            txt.zPosition = 30
            txt .fontColor = UIColor.green
            addChild(txt)
                let fadeOut = SKAction.fadeOut(withDuration: 0.5)
                let fadeIn  = SKAction.fadeIn(withDuration: 0.5)
                let secuence = SKAction.sequence([fadeOut, fadeIn])
                txt.run(SKAction.repeatForever(secuence))
    }
}
