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

class GameObject : SKSpriteNode, GameProtocol
{
    //Public Instance Members
    var horizontalSpeed: CGFloat?
    var verticalSpeed: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    var halfWidth: CGFloat?
    var halfHeight: CGFloat?
    var scale: CGFloat?
    var isColliding: Bool?
    var randomSource: GKARC4RandomSource?
    var randomDist: GKRandomDistribution?
    
    //Constructor / Initializer
    init(imageString: String, initialScale: CGFloat)
    {
        //Initialize the game object with an image
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: texture, color: color, size: texture.size())
        
        //Configuration
        scale = initialScale
        setScale(scale!)
        width = texture.size().width * scale!
        height = texture.size().height * scale!
        halfWidth = width! * 0.5
        halfHeight = height! * 0.5
        isColliding = false
        name = imageString
        randomSource = GKARC4RandomSource()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Lifecyle Functions
    func Start()
    {
        
    }
    
    func Update()
    {
        
    }
    
    func CheckBounds()
    {
        
    }
    
    func Reset()
    {
        
    }
}
