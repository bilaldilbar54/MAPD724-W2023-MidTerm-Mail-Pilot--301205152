/*
MidTerm Test – Mail Pilot
File Name: Player.swift
Author's name and StudentID:
-> Name: Muhammad Bilal Dilbar Hussain
-> Student ID: 301205152
App description: Extending the Mail Pilot Project To Play In Landscape Orientation.
Last Updated: 01 March, 2023
Xcode Version : Version 14.2 (14C18)
 */

import GameplayKit
import SpriteKit

class Player : GameObject
{
    // Initializer
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Lifecycle Functions
    override func Start()
    {
        zPosition = Layer.plane.rawValue
        //Rotating the player
        zRotation = -CGFloat.pi/2
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        //Constraint the player on the top boundary
        if(position.y >= 300)
        {
            position.y = 300
        }
        
        //Constraint the player on the bottom boundary
        if(position.y <= -300)
        {
            position.y = -300
        }
    }
    
    override func Reset()
    {
        position.x = -740
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}
