//
//  Sentence.swift
//  LittleHelper
//
//  Created by Jordan.Dixon on 27/12/2016.
//  Copyright © 2016 Jordan.Dixon. All rights reserved.
//

import Foundation

enum WordType {
  case noun
  case person
  case pluralPerson
  case twitter
  case pronoun
  case sexName
  case greeting
  case thought
  case thirdPartyThought
  case questionDoes
  case questionIs
  case questionStarter
  case scale
  case comparison
  case desire
  case negative
  case emotion
  case swear
  case physicalVerb
  case questionVerb
  case pastPhysicalVerb
  case sexAct
  case adverb
  case politeness
  case location
  case placeName
  case itself
  case adjective
  case grapheme
  case emoji
  case time
  case relativeTime
  case connective
  case personality
  case explitive
}

struct SentanceStructures {
  static let structures: [[WordType]] = [
    [.questionDoes, .person, .questionVerb, .pronoun, .noun],
    [.emoji, .questionDoes, .person, .questionVerb, .pronoun, .noun],
    [.questionDoes, .person, .questionVerb, .pronoun, .noun, .emoji],
    [.personality, .questionDoes, .person, .questionVerb, .pronoun, .noun],
    [.personality, .emoji, .questionDoes, .person, .questionVerb, .pronoun, .noun],
    [.personality, .emoji, .questionDoes, .person, .questionVerb, .pronoun, .noun, .emoji],
    [.personality, .emoji, .questionDoes, .person, .swear, .questionVerb, .pronoun, .noun, .emoji],
    [.questionIs, .person, .adjective],
    [.questionStarter , .questionIs, .person, .adjective],
    [.personality, .questionStarter, .questionIs, .person, .adjective],
    [.personality, .questionIs, .person, .adjective],
    [.person, .pastPhysicalVerb, .location, .pluralPerson, .noun],
    [.person, .pastPhysicalVerb, .location, .pluralPerson, .noun, .time],
    [.person, .questionIs, .adjective],
    [.person, .questionIs, .scale, .adjective],
    [.person, .questionIs, .scale, .swear, .adjective],
    [.emoji, .person, .questionIs, .scale, .adjective],
    [.questionStarter, .questionIs, .person, .adjective],
    [.questionStarter, .questionIs, .person, .scale, .adjective],
    [.person, .pastPhysicalVerb, .location, .placeName, .time],
    [.personality, .person, .pastPhysicalVerb, .location, .placeName, .time],
    [.personality, .pronoun, .noun, .pastPhysicalVerb],
    [.personality, .pronoun, .noun, .pastPhysicalVerb, .time],
    [.pronoun, .noun, .pastPhysicalVerb],
    [.pronoun, .noun, .pastPhysicalVerb, .time],
    [.personality, .pluralPerson, .noun, .pastPhysicalVerb, .location, .pluralPerson, .noun],
    [.personality, .pluralPerson, .noun, .adverb, .pastPhysicalVerb, .location, .pluralPerson, .noun],
    [.personality, .pluralPerson, .noun, .pastPhysicalVerb, .location, .pluralPerson, .noun, .emoji],
    [.pronoun, .noun, .pastPhysicalVerb, .location, .pluralPerson, .noun],
    [.pronoun, .noun, .pastPhysicalVerb, .location, .pluralPerson, .noun, .emoji],
    [.desire, .physicalVerb],
    [.emoji, .desire, .physicalVerb],
    [.emoji, .desire, .swear, .physicalVerb],
    [.emoji, .personality, .desire, .physicalVerb],
    [.emoji, .personality, .desire, .swear, .physicalVerb],
    [.personality, .desire, .physicalVerb],
    [.desire, .physicalVerb, .emoji],
    [.desire, .physicalVerb, .relativeTime],
    [.desire, .adverb, .physicalVerb],
    [.personality, .desire, .adverb, .physicalVerb],
    [.personality, .desire, .adverb, .physicalVerb, .emoji],
    [.personality, .desire, .adverb, .physicalVerb, .relativeTime],
    [.personality, .desire, .adverb, .physicalVerb, .relativeTime, .emoji],
    [.desire, .physicalVerb, .adverb],
    [.desire, .physicalVerb, .adverb, .emoji],
    [.person, .grapheme, .physicalVerb, .grapheme, .adverb],
    [.person, .emoji, .grapheme, .physicalVerb, .grapheme, .adverb],
    [.person, .grapheme, .politeness, .physicalVerb, .grapheme, .adverb],
    [.person, .emoji, .grapheme, .politeness, .physicalVerb, .grapheme, .adverb],
    [.person, .grapheme, .politeness, .physicalVerb, .grapheme, .comparison, .adverb],
    [.person, .emoji, .grapheme, .politeness, .physicalVerb, .grapheme, .comparison, .adverb],
    [.politeness, .negative, .physicalVerb, .person],
    [.person, .grapheme, .politeness, .physicalVerb],
    [.explitive, .person],
    [.twitter, .grapheme, .emotion],
    [.twitter, .grapheme, .emotion, .emoji],
    [.explitive, .person, .emoji],
    [.thought, .person, .questionIs, .pronoun, .noun],
    [.thought, .person, .questionIs, .swear, .pronoun, .noun],
    [.thought, .person, .adverb, .pastPhysicalVerb, .location, .placeName, .time],
    [.thought, .twitter, .adverb, .pastPhysicalVerb, .time],
    [.thought, .twitter, .adverb, .pastPhysicalVerb, .time, .emoji],
    [.thought, .pronoun, .noun, .adverb, .pastPhysicalVerb, .location, .placeName, .time],
    [.thought, .pronoun, .noun, .adverb, .pastPhysicalVerb, .location, .placeName, .relativeTime],
    [.emoji, .thought, .pronoun, .noun, .adverb, .pastPhysicalVerb, .location, .placeName, .relativeTime],
    [.sexAct, .sexName],
    [.swear, .sexAct, .sexName],
    [.adverb, .sexAct, .sexName],
    [.sexAct, .sexName, .grapheme, .location, .placeName],
    [.sexAct, .sexName, .grapheme, .location, .placeName, .emoji],
    [.sexAct, .sexName, .emoji],
    [.politeness, .sexAct, .sexName],
    [.twitter, .sexName, .emoji],
    [.twitter, .greeting, .sexName],
    [.twitter, .greeting, .grapheme, .emotion],
    [.twitter, .greeting, .grapheme, .emotion, .emoji],
    [.greeting, .twitter,  .grapheme, .emotion],
    [.greeting, .twitter,  .grapheme, .emotion, .emoji],
    [.adverb, .sexAct],
    [.adverb, .grapheme, .sexAct],
    [.sexAct, .grapheme, .adverb],
    [.physicalVerb],
    [.emotion, .person],
    [.emotion, .person, .emoji],
    [.itself, .adjective],
    [.person, .thirdPartyThought, .person, .pastPhysicalVerb, .time],
    [.twitter, .thirdPartyThought, .pluralPerson, .noun, .adverb, .pastPhysicalVerb, .time],
    [.person, .thirdPartyThought, .pluralPerson, .swear, .noun, .adverb, .pastPhysicalVerb, .time],
    [.twitter, .thirdPartyThought, .pluralPerson, .noun, .adverb, .pastPhysicalVerb, .time, .location, .placeName]
  ]
}

class Sentence {
  
  func tweet() -> String {
    
    var tweet = ""
    var highestFitness = 0.0
    
    for _ in 1...20 {
      let potentialTweet = constructSentence(sentence: "", fitness: 0.0, count: 0.0, isConnective: false)
      if potentialTweet.1 > highestFitness {
        highestFitness = potentialTweet.1
        tweet = potentialTweet.0
      }
    }
    print(tweet)
    return tweet
  }

  private func constructSentence(sentence: String, fitness: Double, count: Double, isConnective: Bool) -> (String, Double) {

    var sentence = sentence
    var count = count
    var fitness = fitness
    
    let index = Int(arc4random_uniform(UInt32(SentanceStructures.structures.count)))
    let structure = SentanceStructures.structures[index]
    for type in structure {
      let word = getWord(word: type)
      count += 1
      fitness += word.1
      if type == .grapheme {
        sentence.append("\(word.0)")
      } else if type == .pluralPerson {
        sentence.append(" \(word.0)'s")
      } else {
        sentence.append(" \(word.0)")
      }
    }
    print(structure)
    let diceRoll = Int(arc4random_uniform(100))
    if diceRoll > 80 && !isConnective {
      let randomNumber = Int(arc4random_uniform(UInt32(KnowledgeBase.connective.count)))
      sentence.append(KnowledgeBase.connective[randomNumber].0)
      fitness += KnowledgeBase.connective[randomNumber].1
      return(constructSentence(sentence: sentence, fitness: fitness/count, count: count, isConnective: true))
    }
    let fitnessValue = fitness / count
    return (sentence, fitnessValue)
  }
  
  private func getWord(word: WordType) -> (String, Double) {
    
    var array: [(String, Double)]
    
    switch word {
    case .noun:
      array = KnowledgeBase.nouns
    case .person:
      array = KnowledgeBase.people
    case .pluralPerson:
      array = KnowledgeBase.people
    case .twitter:
      array = KnowledgeBase.twitterHandle
    case .pronoun:
      array = KnowledgeBase.pronoun
    case .sexName:
      array = KnowledgeBase.sexNames
    case .greeting:
      array = KnowledgeBase.greetings
    case .thought:
      array = KnowledgeBase.thinking
    case .thirdPartyThought:
      array = KnowledgeBase.thirdPartyThought
    case .questionDoes:
      array = KnowledgeBase.questionDoes
    case .questionIs:
      array = KnowledgeBase.questionIs
    case .questionStarter:
      array = KnowledgeBase.questionStarter
    case .scale:
      array = KnowledgeBase.scale
    case .comparison:
      array = KnowledgeBase.comparison
    case .desire:
      array = KnowledgeBase.desire
    case .negative:
      array = KnowledgeBase.negatives
    case .emotion:
      array = KnowledgeBase.emotion
    case .swear:
      array = KnowledgeBase.swear
    case .physicalVerb:
      array = KnowledgeBase.physicalVerbs
    case .questionVerb:
      array = KnowledgeBase.questionVerbs
    case .pastPhysicalVerb:
      array = KnowledgeBase.pastPhysicalVerbs
    case .sexAct:
      array = KnowledgeBase.sexActs
    case .adverb:
      array = KnowledgeBase.adverbs
    case .politeness:
      array = KnowledgeBase.politeness
    case .location:
      array = KnowledgeBase.locations
    case .placeName:
      array = KnowledgeBase.placeNames
    case .itself:
      array = KnowledgeBase.itself
    case .adjective:
      array = KnowledgeBase.adjectives
    case .grapheme:
      array = KnowledgeBase.graphemes
    case .emoji:
      array = KnowledgeBase.emoji
    case .time:
      array = KnowledgeBase.time
    case .relativeTime:
      array = KnowledgeBase.relativeTime
    case .connective:
      array = KnowledgeBase.connective
    case .personality:
      array = KnowledgeBase.personalities
    case .explitive:
      array = KnowledgeBase.explitives
    }
    
    let index = Int(arc4random_uniform(UInt32(array.count)))
    let fetchedWord = array[index]
    return fetchedWord
  }
}
