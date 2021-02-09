//
//  TodoItem.swift
//  TodoApp
//
//  Created by Abiú Roldán on 09/02/21.
//

import Foundation

class ItemModel: Decodable {
    var title: String
    var details: ItemDescriptionModel
}

class ItemDescriptionModel: Decodable {
    var description: String
    var day: DayOfTheWeek
}
