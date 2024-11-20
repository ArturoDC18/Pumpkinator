//
//  GameScene.swift
//  Pumpkinator
//
//  Created by Arturo on 11/14/24.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    let character = SKSpriteNode(imageNamed: "redbox")
    let cameraNode = SKCameraNode()
    let scoreLabel = SKLabelNode(fontNamed: "Chalkduster")
    
   // var worldFrame: CGRect!
  //  let worldFrame = CGRect(x: 0, y: 0, width: 10000, height: 2000)  // Define your world size
    
    
//    override func didMove(to view: SKView) {
//        
//        // Get label node from scene and store it for use later
//        self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
//        if let label = self.label {
//            label.alpha = 0.0
//            label.run(SKAction.fadeIn(withDuration: 2.0))
//        }
//        
//        // Create shape node to use during mouse interaction
//        let w = (self.size.width + self.size.height) * 0.05
//        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
//        
//        if let spinnyNode = self.spinnyNode {
//            spinnyNode.lineWidth = 2.5
//            
//            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
//            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
//                                              SKAction.fadeOut(withDuration: 0.5),
//                                              SKAction.removeFromParent()]))
//        }
//    }

    
    
    func touchDown(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.green
            self.addChild(n)
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.blue
            self.addChild(n)
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.red
            self.addChild(n)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let label = self.label {
            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
        }
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    

    
    //hari starts
    
    override func didMove(to view: SKView) {

        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        // Set up character
        character.position = CGPoint(x: 0, y: 0)
        character.name = "redbox"
        self.addChild(character)
        
        // Set up camera
        self.camera = cameraNode
        self.addChild(cameraNode)
        
        // Enable culling to improve performance by not rendering nodes outside the camera’s view
        self.view?.shouldCullNonVisibleNodes = true
        
        // Set up score label
        scoreLabel.text = "Score: 0"
        scoreLabel.fontSize = 20
        scoreLabel.position = CGPoint(x: -self.size.width / 2 + 50, y: self.size.height / 2 - 50)
        cameraNode.addChild(scoreLabel)
        
        // Set camera constraints if necessary
//        let xRange = SKRange(lowerLimit: worldFrame.minX + size.width / 2,
//                                 upperLimit: worldFrame.maxX - size.width / 2)
//        let yRange = SKRange(constantValue: size.height / 2)
//        let edgeConstraint = SKConstraint.positionX(xRange, y: yRange)
//        cameraNode.constraints = [edgeConstraint]
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Move character to the right
        character.position.x += 5
        
        // Update camera position
        cameraNode.position.x = character.position.x
        
        // Calculate the desired position
        let desiredPosition = CGPoint(x: character.position.x, y: cameraNode.position.y)
        
        // Smoothly move the camera towards the desired position
        let action = SKAction.move(to: desiredPosition, duration: 0.1)
        cameraNode.run(action)
            
    }
    // hari end
}
