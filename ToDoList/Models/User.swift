//
//  User.swift
//  ToDoList
//
//  Created by Dan June on 1/21/25.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
