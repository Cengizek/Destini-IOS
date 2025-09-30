//
//  StoryTime.swift
//  Destini
//
//  Created by Cengiz Ekmekçi on 30.09.2025.
//

import Foundation

struct StoryTime {
    let stories = [
        Story(
            storyTitle: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            choice1: "I'll hop in. Thanks for the help!", choice1Destination: 2,
            choice2: "Better ask him if he's a murderer first.", choice2Destination: 1
        ),
        Story(
            storyTitle: "He nods slowly, unfazed by the question.",
            choice1: "At least he's honest. I'll climb in.", choice1Destination: 2,
            choice2: "Wait, I know how to change a tire.", choice2Destination: 3
        ),
        Story(
            storyTitle: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            choice1: "I love Elton John! Hand him the cassette tape.", choice1Destination: 5,
            choice2: "It's him or me! You take the knife and stab him.", choice2Destination: 4
        ),
        Story(
            storyTitle: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            storyTitle: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 3
        ),
        Story(
            storyTitle: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 4
        )      ]
    
    var storyNumber = 0
    
    func getStoryText() -> String {
        return self.stories[self.storyNumber].storyTitle
    }
    
    func getChoices() -> [String] {
        return [self.stories[self.storyNumber].choice1, self.stories[self.storyNumber].choice2]
    }
    
    mutating func nextStory(userChoice : String) {
        let currentStory = stories[self.storyNumber]
        if userChoice == currentStory.choice1 {
            // Seçenek 1'in hedef dizinine git
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            // Seçenek 2'nin hedef dizinine git
            storyNumber = currentStory.choice2Destination
        }
        
    }
}
