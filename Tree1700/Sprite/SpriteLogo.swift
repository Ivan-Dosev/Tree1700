//
//  SpriteLogo.swift
//  Tree1700
//
//  Created by Ivan Dimitrov on 19.12.20.
//
import SpriteKit

class LogoScene : SKScene {
    
    var logo = SKSpriteNode()
    let isShow: Bool = false

    override func didMove(to view: SKView) {
           
        let  background = SKSpriteNode(imageNamed: "pngTreva")
             background.position = CGPoint(x: 100, y: 100)
             addChild(background)
        loadScene()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

//        logo.removeAllActions()
      
    }
    override func didFinishUpdate() {
     
    }
 
    func loadScene() {

        logo = SKSpriteNode(imageNamed: "Enemy\(Int.random(in: 1..<13))")
        logo.position = CGPoint(x: 120, y: 10)
        logo.setScale(0.3)
        logo.anchorPoint = CGPoint(x: frame.minX, y: frame.midY)
    
        addChild(logo)

        let moveBottomLeft = SKAction.move(to: CGPoint(x: 120, y: 10), duration: 2.0)
        let moveRight = SKAction.move(to: CGPoint(x: 240, y: 10), duration: 2.0)
        let sequence = SKAction.sequence([ moveBottomLeft, .wait(forDuration: 1), .run { [self] in
            logo.xScale = abs(logo.yScale) * 1 } ,moveRight, .wait(forDuration: 1), .run { [self] in
            logo.xScale = abs(logo.yScale) * -1 } ])
        let rep = SKAction.repeatForever(sequence)
        logo.run(rep)
    }
}
