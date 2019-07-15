//
//  StoryElementsModel.swift
//  onceUponAStory
//
//  Created by Roser Reverte Avila on 14/07/2019.
//  Copyright © 2019 Roser Reverte Avila. All rights reserved.
//

import Foundation

struct storyElement {
    let character1: String
    let character2: String
    let place: String
    let object: String
    let action: String
}

class StoryElementsModel {
    
    //Declare your model variables here
    let characters1 : Array = [
        "Steve Jobs","Dalai Lama","Oprah Winfrey","Angela Merkel","Donald Trump","An Alien","A Baby with superpowers","Antonio Banderas"
    ]
    
    let characters2 : Array = [
        "Woody Allen","Will Smith","Miley Cyrus","Barbie","Greta Thunberg","La Rosalia","Shakira","Bill Gates"
    ]
    
    let places : Array = [
    "Barcelona", "a garage", "a forest", "a hospital", "a grocerystore", "London", "Stockholm", "a taxi", "a hotel room", "a highschool"
    ]
    
    let objects : Array = [
    "a suitcase", "a pen", "an empty plastic bottle", "a penny", "an umbrella", "paint", "a shoe", "a bike", "a tomato soup can", "a piano"
    ]
    
    let actions : Array = [
    "someone is late", "someone is dislexic", "someone can't stop talking", "It starts raining flowers", "someone is a secret ninja", "someone can't stop lying", "someone is afraid of the object", "someone is falling asleep", "someone has superpowers"
    ]
    
    func getRandomElement(elements: Array<String>) -> String {
        let lastIndex = elements.count - 1
        let index = Int.random(in: 0...lastIndex)
        return elements[index]
    }
    
    func getStoryElements() -> storyElement {
        let character1 = getRandomElement(elements: characters1)
        let character2 = getRandomElement(elements: characters2)
        let place = getRandomElement(elements: places)
        let object = getRandomElement(elements: objects)
        let action = getRandomElement(elements: actions)

        return storyElement(
            character1: character1,
            character2: character2,
            place: place,
            object: object,
            action: action
        )
    }
    
}

