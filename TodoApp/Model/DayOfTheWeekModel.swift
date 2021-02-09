//
//  DayOfTheWeekModel.swift
//  TodoApp
//
//  Created by Abiú Roldán on 09/02/21.
//

import Foundation

enum DayOfTheWeek:Int, Decodable, CustomStringConvertible {
    case Monday = 1
    case Tuesday = 2
    case Wendsday = 3
    case Thursday = 4
    case Friday = 5
    case Saturday = 6
    case Sunday = 7
    
    var description : String {
        switch self {
        case .Monday: return  "Monday"
        case .Tuesday: return "Tuesday"
        case .Wendsday: return "Wendsday"
        case .Thursday: return "Thursday"
        case .Friday: return "Friday"
        case .Saturday: return "Saturday"
        case .Sunday: return "Sunday"
        }
    }
}
