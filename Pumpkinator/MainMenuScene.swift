//
//  MainMenuScene.swift
//  Pumpkinator
//
//  Created by Arturo on 11/19/24.
//


import SpriteKit

class MainMenuScene: SKScene {
    
    private var startButton : SKSpriteNode?
    private var button_2 : SKSpriteNode?
    private var background: SKSpriteNode?
    private var titleNode : SKSpriteNode?
    
    override func didMove(to view: SKView) {
        
        let background = SKSpriteNode(texture: SKTexture(imageNamed: "BG"))
        background.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        background.size = CGSize(width: 1328.522, height: 750)
        background.zPosition = -1
        self.addChild(background)
        
        
        let titleNodetexture = SKTexture(imageNamed: "frame")
        titleNode = SKSpriteNode(texture: titleNodetexture)
        titleNode?.position = CGPoint(x: 250, y: 540)
        titleNode?.size = CGSize(width: 400, height: 160)
        if let titleNode = titleNode {
            print("added")
            self.addChild(titleNode)
            let label = SKLabelNode(text: "The Pumpkinator")
            label.fontName = "Times"
            label.fontSize = 30
            label.fontColor = .white
            label.zPosition = 1
            label.verticalAlignmentMode = .center
            titleNode.addChild(label)
        }
        
        
        let buttonTexture = SKTexture(imageNamed: "round_frame")
        startButton = SKSpriteNode(texture: buttonTexture)
        startButton?.name = "startButton"
        startButton?.position = CGPoint(x: 780, y: 420)
        startButton?.size = CGSize(width: 300, height: 120)
        
        if let startButton = startButton {
            self.addChild(startButton)
            let label = SKLabelNode(text: "Start Game")
                label.fontName = "Bangla-Bold"
                label.fontSize = 28
                label.fontColor = .white
                label.verticalAlignmentMode = .center // Center the text on the button
                label.zPosition = 1
                
                startButton.addChild(label)
            
        }
        
        let buttonTexture_2 = SKTexture(imageNamed: "round_frame")
        button_2 = SKSpriteNode(texture: buttonTexture_2)
        button_2?.name = "option2"
        button_2?.position = CGPoint(x: 780, y: 300)
        button_2?.size = CGSize(width: 300, height: 120)
        
        if let button_2 = button_2 {
            self.addChild(button_2)
            let label = SKLabelNode(text: "Credits")
                label.fontName = "Bangla-Bold"
                label.fontSize = 28
                label.fontColor = .white
                label.verticalAlignmentMode = .center // Center the text on the button
                label.zPosition = 1
                
                button_2.addChild(label)
            
        }

        
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let touchLocation = touch.location(in: self)
        
        if let startButton = self.startButton, startButton.contains(touchLocation) {
            print("Start Button Tapped")
            loadGameScene()
        }
        
    }
    private func loadGameScene() {
            let gameScene = GameScene(size: self.size)
            gameScene.scaleMode = .aspectFill
            let transition = SKTransition.fade(withDuration: 1.0)
            self.view?.presentScene(gameScene, transition: transition)
        }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
        
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }

    
    
}
