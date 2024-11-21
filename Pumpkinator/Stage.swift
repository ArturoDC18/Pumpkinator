//
//  Stage.swift
//  Pumpkinator
//
//  Created by David Loja on 11/20/24.
//

import Foundation
import GameplayKit

extension GameScene {
    
    //Lonchas
    func makeNinja() -> SKSpriteNode {
        
        let ninjaTexture = SKTexture(imageNamed: "Idle__000")

        ninja = SKSpriteNode(texture: ninjaTexture)
        ninja.name = "ninja"
        ninja.zPosition = 1
        ninja.position = CGPoint(x: -550, y: 13)
        
        ninja.physicsBody = SKPhysicsBody(texture: ninjaTexture, size: ninjaTexture.size())
        ninja.physicsBody?.contactTestBitMask = ninja.physicsBody!.collisionBitMask
        ninja.physicsBody?.isDynamic = true
        ninja.physicsBody?.allowsRotation = false
        ninja.physicsBody?.affectedByGravity = true
        
        let animStill = SKAction.animate(with: [
            SKTexture(imageNamed: "Idle__000"),
            SKTexture(imageNamed: "Idle__001"),
            SKTexture(imageNamed: "Idle__002"),
            SKTexture(imageNamed: "Idle__003"),
            SKTexture(imageNamed: "Idle__004"),
            SKTexture(imageNamed: "Idle__005"),
            SKTexture(imageNamed: "Idle__006"),
            SKTexture(imageNamed: "Idle__007"),
            SKTexture(imageNamed: "Idle__008"),
            SKTexture(imageNamed: "Idle__009")
        ], timePerFrame: 0.1)
        
        let forever = SKAction.repeatForever(animStill)
        addChild(ninja)
        ninja.run(forever)

        
        
        return ninja
    }
    
    func runningNinja() -> SKSpriteNode {

        let ninjaTexture = SKTexture(imageNamed: "Run__000")

        ninja = SKSpriteNode(texture: ninjaTexture)
        ninja.name = "ninja"
        ninja.zPosition = 10
        ninja.position = CGPoint(x: -550, y: 13)
        
        ninja.physicsBody = SKPhysicsBody(texture: ninjaTexture, size: ninjaTexture.size())
        ninja.physicsBody?.contactTestBitMask = ninja.physicsBody!.collisionBitMask
        ninja.physicsBody?.isDynamic = true
        ninja.physicsBody?.allowsRotation = false
        ninja.physicsBody?.affectedByGravity = true
        
        let animRun = SKAction.animate(with:[
            SKTexture(imageNamed: "Run__000"),
            SKTexture(imageNamed: "Run__001"),
            SKTexture(imageNamed: "Run__002"),
            SKTexture(imageNamed: "Run__003"),
            SKTexture(imageNamed: "Run__004"),
            SKTexture(imageNamed: "Run__005"),
            SKTexture(imageNamed: "Run__006"),
            SKTexture(imageNamed: "Run__007"),
            SKTexture(imageNamed: "Run__008"),
            SKTexture(imageNamed: "Run__009")
            
        ], timePerFrame: 0.05)
        
        let forever = SKAction.repeatForever(animRun)
        addChild(ninja)
        ninja.run(forever)
        
        return ninja
    }
    
    func deadNinja() -> SKSpriteNode {
        
        let ninjaTexture = SKTexture(imageNamed: "Dead__000")
        
        ninja = SKSpriteNode(texture: ninjaTexture)
        ninja.name = "ninja"
        ninja.zPosition = 10
        ninja.position = CGPoint(x: -550, y: 13)
        
        ninja.physicsBody = SKPhysicsBody(texture: ninjaTexture, size: ninjaTexture.size())
        ninja.physicsBody?.contactTestBitMask = ninja.physicsBody!.collisionBitMask
        ninja.physicsBody?.isDynamic = true
        ninja.physicsBody?.allowsRotation = false
        ninja.physicsBody?.affectedByGravity = true
        
        let animDead = SKAction.animate(with:[
            SKTexture(imageNamed: "Dead__000"),
            SKTexture(imageNamed: "Dead__001"),
            SKTexture(imageNamed: "Dead__002"),
            SKTexture(imageNamed: "Dead__003"),
            SKTexture(imageNamed: "Dead__004"),
            SKTexture(imageNamed: "Dead__005"),
            SKTexture(imageNamed: "Dead__006"),
            SKTexture(imageNamed: "Dead__007"),
            SKTexture(imageNamed: "Dead__008"),
            SKTexture(imageNamed: "Dead__009")
            
        ], timePerFrame: 0.05)
        
        let forever = SKAction.repeatForever(animDead)
        addChild(ninja)
        ninja.run(forever)
        
        return ninja
    }
    
    func glideNinja() -> SKSpriteNode {
        
        let ninjaTexture = SKTexture(imageNamed: "Glide_000")
        
        ninja = SKSpriteNode(texture: ninjaTexture)
        ninja.name = "ninja"
        ninja.zPosition = 10
        ninja.position = CGPoint(x: -550, y: 13)
        
        ninja.physicsBody = SKPhysicsBody(texture: ninjaTexture, size: ninjaTexture.size())
        ninja.physicsBody?.contactTestBitMask = ninja.physicsBody!.collisionBitMask
        ninja.physicsBody?.isDynamic = true
        ninja.physicsBody?.allowsRotation = false
        ninja.physicsBody?.affectedByGravity = true
        
        let animGlide = SKAction.animate(with:[
            SKTexture(imageNamed: "Glide_000"),
            SKTexture(imageNamed: "Glide_001"),
            SKTexture(imageNamed: "Glide_002"),
            SKTexture(imageNamed: "Glide_003"),
            SKTexture(imageNamed: "Glide_004"),
            SKTexture(imageNamed: "Glide_005"),
            SKTexture(imageNamed: "Glide_006"),
            SKTexture(imageNamed: "Glide_007"),
            SKTexture(imageNamed: "Glide_008"),
            SKTexture(imageNamed: "Glide_009")
            
        ], timePerFrame: 0.1)
        
        let forever = SKAction.repeatForever(animGlide)
        addChild(ninja)
        ninja.run(forever)
        
        return ninja
    }
    
    func jumpNinja() -> SKSpriteNode {
        
        let ninjaTexture = SKTexture(imageNamed: "Jump__000")
        
        ninja = SKSpriteNode(texture: ninjaTexture)
        ninja.name = "ninja"
        ninja.zPosition = 10
        ninja.position = CGPoint(x: -550, y: 13)
        
        ninja.physicsBody = SKPhysicsBody(texture: ninjaTexture, size: ninjaTexture.size())
        ninja.physicsBody?.contactTestBitMask = ninja.physicsBody!.collisionBitMask
        ninja.physicsBody?.isDynamic = true
        ninja.physicsBody?.allowsRotation = false
        ninja.physicsBody?.affectedByGravity = true
        
        let animJump = SKAction.animate(with:[
            SKTexture(imageNamed: "Jump__000"),
            SKTexture(imageNamed: "Jump__001"),
            SKTexture(imageNamed: "Jump__002"),
            SKTexture(imageNamed: "Jump__003"),
            SKTexture(imageNamed: "Jump__004"),
            SKTexture(imageNamed: "Jump__005"),
            SKTexture(imageNamed: "Jump__006"),
            SKTexture(imageNamed: "Jump__007"),
            SKTexture(imageNamed: "Jump__008"),
            SKTexture(imageNamed: "Jump__009")
            
        ], timePerFrame: 0.07)
        
        let forever = SKAction.repeat(animJump, count: 1)
        addChild(ninja)
        ninja.run(forever)
        
        return ninja
    }
    
    func attackNinja() -> SKSpriteNode {
        
        let ninjaTexture = SKTexture(imageNamed: "Attack__000")
        
        ninja = SKSpriteNode(texture: ninjaTexture)
        ninja.name = "ninja"
        ninja.zPosition = 10
        ninja.position = CGPoint(x: -550, y: 13)
        
        ninja.physicsBody = SKPhysicsBody(texture: ninjaTexture, size: ninjaTexture.size())
        ninja.physicsBody?.contactTestBitMask = ninja.physicsBody!.collisionBitMask
        ninja.physicsBody?.isDynamic = true
        ninja.physicsBody?.allowsRotation = false
        ninja.physicsBody?.affectedByGravity = true
        
        let animAttack = SKAction.animate(with:[
            SKTexture(imageNamed: "Attack__000"),
            SKTexture(imageNamed: "Attack__001"),
            SKTexture(imageNamed: "Attack__002"),
            SKTexture(imageNamed: "Attack__003"),
            SKTexture(imageNamed: "Attack__004"),
            SKTexture(imageNamed: "Attack__005"),
            SKTexture(imageNamed: "Attack__006"),
            SKTexture(imageNamed: "Attack__007"),
            SKTexture(imageNamed: "Attack__008"),
            SKTexture(imageNamed: "Attack__009")
            
        ], timePerFrame: 0.05)
        
        let forever = SKAction.repeatForever(animAttack)
        addChild(ninja)
        ninja.run(forever)
        
        return ninja
    }
    
}
