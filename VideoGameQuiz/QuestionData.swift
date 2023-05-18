//
//  QuestionData.swift
//  VideoGameQuiz
//
//  Created by Anderson on 5/18/23.
//

import Foundation

struct Question {
    var text: String
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: answerCorrect
}

enum answerCorrect: String {
    case correct = "correct", wrong = "wrong"
}
