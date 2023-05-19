//
//  QuestionData.swift
//  VideoGameQuiz
//
//  Created by Anderson on 5/18/23.
//

import Foundation

struct Answer {
    var text: String
    var type: answerCorrect
}

enum answerCorrect: String {
    case correct = "correct", wrong = "wrong"
}

struct Question {
    var text: String
    var answers: [Answer]
}

