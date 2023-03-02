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

import SpriteKit
import GameplayKit
import AVFoundation
import UIKit

class StartScene: SKScene
{
    // instance variables
    var ocean1: Ocean?
    var ocean2: Ocean?
    var ocean3: Ocean?
    var ocean4: Ocean?
    
    override func sceneDidLoad()
    {
        name = "START"
        
        // add the first ocean to the Scene
        ocean1 = Ocean()
        ocean1?.position = CGPoint(x: 627, y: 173)
        ocean1?.Reset()
        addChild(ocean1!)
        
        // add the third ocean to the Scene
        ocean2 = Ocean()
        ocean2?.position = CGPoint(x: 627, y: -1107)
        ocean2?.Reset()
        addChild(ocean2!)
    }
    
    func touchDown(atPoint pos : CGPoint)
    {
    }
    
    func touchMoved(toPoint pos : CGPoint)
    {
    }
    
    func touchUp(atPoint pos : CGPoint)
    {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval)
    {
        ocean1?.Update()
        ocean2?.Update()
        ocean3?.Update()
        ocean4?.Update()
    }
}
