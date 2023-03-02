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

class Island : GameObject
{
    //Initializer // constructor
    init ()
    {
        super.init (imageString: "island", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Lifecycle Functions
    
    override func Start()
    {
        zPosition = Layer.island.rawValue
        verticalSpeed = 5.0
        Reset()
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if (position.x <= -875)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 875
        //Get a pseudo random number
        let randomY: Int = (randomSource?.nextInt(upperBound: 626))! - 313
        position.y = CGFloat(randomY)
        isColliding = false
    }
    
    //Public Method
    func Move()
    {
        position.x -= verticalSpeed!
    }
}
