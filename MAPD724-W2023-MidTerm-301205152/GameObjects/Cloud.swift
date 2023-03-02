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

class Cloud : GameObject
{
    //Initializer // constructor
    init ()
    {
        super.init (imageString: "cloud", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Lifecycle Functions
    override func Start()
    {
        zPosition = Layer.cloud.rawValue
        //50% Transparent
        alpha = 0.5
        Reset()
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if (position.x <= -925)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        //Randomize the horizontal speed: 5 to 10
        horizontalSpeed = CGFloat((randomSource?.nextUniform())! * 5.0) + 5.0
        
        //Randomize the vertical speed: -2 to 2
        verticalSpeed = CGFloat((randomSource?.nextUniform())! * 4.0) - 2.0
        
        //Get a pseudo random number for the Y position: -286 to 286
        let randomY: Int = (randomSource?.nextInt(upperBound: 572))! - 286
        position.y = CGFloat(randomY)
        
        //Get a pseudo random number for the X position: 925 to 945
        let randomX: Int = (randomSource?.nextInt(upperBound: 20))! + 925
        position.x = CGFloat(randomX)
        isColliding = false
    }
    
    //Public Method
    func Move()
    {
        position.x -= horizontalSpeed!
        position.y -= verticalSpeed!
    }
}
