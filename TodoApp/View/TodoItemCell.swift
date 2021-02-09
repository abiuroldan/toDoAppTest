//
//  TodoItemCell.swift
//  TodoApp
//
//  Created by Abiú Roldán on 09/02/21.
//

import UIKit

class TodoItemCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        textLabel?.numberOfLines = 0
        detailTextLabel?.numberOfLines = 0
    }
    
    func setData(with item: ItemModel?) {
        let day = item?.details.day.description ?? ""
        let title = item?.title ?? ""
        
        textLabel?.text = day + " - " + title
        detailTextLabel?.text = item?.details.description
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
