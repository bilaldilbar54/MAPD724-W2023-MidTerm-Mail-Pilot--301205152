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

protocol GameProtocol
{
    //Initialization
    func Start()
    
    //Update Every frame
    func Update()
    
    //Check if the position is outside the bounds of the screen
    func CheckBounds()
    
    //A Method to reset the position
    func Reset()
}
