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
        if (position.y <= -902)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        //Randomize the vertical speed: 5 to 10
        verticalSpeed = CGFloat((randomSource?.nextUniform())! * 5.0) + 5.0
        
        //Randomize the horizontal speed: -2 to 2
        horizontalSpeed = CGFloat((randomSource?.nextUniform())! * 4.0) - 2.0
        
        //Get a pseudo random number for the X position: -262 to 262
        let randomX: Int = (randomSource?.nextInt(upperBound: 524))! - 262
        position.x = CGFloat(randomX)
        
        //Get a pseudo random number for the Y position: 902 to 932
        let randomY: Int = (randomSource?.nextInt(upperBound: 30))! + 902
        position.y = CGFloat(randomY)
        isColliding = false
    }
    
    //Public Method
    func Move()
    {
        position.x -= horizontalSpeed!
        position.y -= verticalSpeed!
    }
}
