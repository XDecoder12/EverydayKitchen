//
//  User.swift
//  Everyday Kitchen
//
//  Created by Manthan Chawda on 22/09/26.
//


import Foundation
import SwiftData

@Model
final class User {
    @Attribute(.unique)
    var id: UUID

    var name: String
    var householdSize: Int

    var createdAt: Date
    var updatedAt: Date

    init(
        name: String,
        householdSize: Int = 1
    ) {
        self.id = UUID()
        self.name = name
        self.householdSize = householdSize
        self.createdAt = Date()
        self.updatedAt = Date()
    }
}