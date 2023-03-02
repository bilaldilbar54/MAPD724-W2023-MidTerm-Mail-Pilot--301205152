/*
MidTerm Test – Mail Pilot
File Name: MAPD724-W2023-MidTerm-301205152
Author's name and StudentID:
-> Name: Muhammad Bilal Dilbar Hussain
-> Student ID: 301205152
App description: Extending the Mail Pilot Project To Play In Landscape Orientation.
Last Updated: 01 March, 2023
Xcode Version : Version 14.2 (14C18)
 */

import GameplayKit
import SpriteKit

class Ocean: GameObject
{
    //Constructor / Initializer
    init()
    {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start()
    {
        zPosition = Layer.ocean.rawValue
        verticalSpeed = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if(position.y <= -2253)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.y = 2253
    }
    
    func Move()
    {
        position.y -= verticalSpeed!
    }
}
