//
//  GameScene.swift
//  Pumpkinator
//
//  Created by Arturo on 11/14/24.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var ninja = SKSpriteNode()
    
    let cameraNode = SKCameraNode()
    let scoreLabel = SKLabelNode(fontNamed: "Chalkduster")
    
    //hari starts
    
    override func didMove(to view: SKView) {
        
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
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
        
        startGame()
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        
        // Calculate the desired position
        let desiredPosition = CGPoint(x: ninja.position.x + 550, y: cameraNode.position.y)
        
        // Smoothly move the camera towards the desired position
        let action = SKAction.move(to: desiredPosition, duration: 0.1)
        cameraNode.run(action)
        
        
    }
    // hari end
    
    func startGame() {
        
        ninja = makeNinja()
        
    }
    
    
    
}
