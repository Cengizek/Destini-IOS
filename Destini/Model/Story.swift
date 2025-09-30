//
//  Story.swift
//  Destini
//
//  Created by Cengiz Ekmekçi on 30.09.2025.

//
import Foundation

struct Story{
   var storyTitle: String
   var choice1: String
   var choice2: String
   let choice2Destination: Int
   let choice1Destination: Int
   
    
    init(storyTitle: String, choice1: String,choice1Destination: Int, choice2: String, choice2Destination: Int, ) {
        self.storyTitle = storyTitle
        self.choice1 = choice1
        self.choice2 = choice2
        self.choice2Destination = choice2Destination
        self.choice1Destination = choice1Destination
        
    }
}
