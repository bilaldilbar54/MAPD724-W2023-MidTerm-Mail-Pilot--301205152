/*
MidTerm Test – Mail Pilot
File Name: CollisionManager.swift
Author's name and StudentID:
-> Name: Muhammad Bilal Dilbar Hussain
-> Student ID: 301205152
App description: Extending the Mail Pilot Project To Play In Landscape Orientation.
Last Updated: 01 March, 2023
Xcode Version : Version 14.2 (14C18)
 */

import GameplayKit
import SpriteKit

class CollisionManager
{
    //Get a reference to the game view controller
    public static var gameViewController : GameViewController?
    
    //Utility Functions
    public static func SquaredDistance(point1: CGPoint, point2: CGPoint) -> CGFloat
    {
        let Xs: CGFloat = point2.x - point1.x
        let Ys: CGFloat = point2.y - point1.y
        return Xs * Xs + Ys * Ys
    }
    
    //Collision Function
    public static func SquaredRadiusCheck(scene: SKScene, object1: GameObject, object2: GameObject)
    {
        let P1 = object1.position
        let P2 = object2.position
        let P1Radius = object1.halfHeight!
        let P2Radius = object2.halfHeight!
        let Radii = P1Radius + P2Radius
        
        //The collision check - overlapping circles
        if(SquaredDistance(point1: P1, point2: P2) < Radii * Radii)
        {
            //We have a collision
            if(!object2.isColliding!)
            {
                //If object2 is not already colliding
                switch (object2.name)
                {
                case "island":
                    ScoreManager.Score += 100
                    gameViewController?.updateScoreLabel()
                    scene.run(SKAction.playSoundFileNamed("yay", waitForCompletion: false))
                    if(ScoreManager.Score % 2000 == 0)
                    {
                        ScoreManager.Lives += 1
                        gameViewController?.updateLivesLabel()
                    }
                    break
                case "cloud":
                    ScoreManager.Lives -= 1
                    gameViewController?.updateLivesLabel()
                    scene.run(SKAction.playSoundFileNamed("thunder", waitForCompletion: false))
                    if (ScoreManager.Lives < 1)
                    {
                        gameViewController?.presentEndScene()
                    }
                    break
                default:
                    break
                }
                object2.isColliding = true
            }
        }
    }
}
