//
//  Greeting.swift
//  TDDKATA
//
//  Created by Jans Pavlovs on 17.04.17.
//  Copyright © 2017. g. Jans Pavlovs. All rights reserved.
//

struct Greeting {

    let expression = "Hello"
    let names: [String]

    init() {
        self.names = ["my friend"]
    }

    init(_ names: String...) {
        self.names = names
    }

    func greet() -> String {
        let greeting = names.joined(separator: " and ")
        return greeting.uppercased() != greeting
            ? "\(expression), \(greeting)."
            : "\(expression.uppercased()) \(greeting)!"
    }

}
