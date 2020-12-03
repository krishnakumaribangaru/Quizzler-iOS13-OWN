//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by veerababu mulugu on 11/29/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
public struct Question {
    var text : String
    var answer : String
    init (q : String, a: String) {
        text = q
        answer = a
    }
}
