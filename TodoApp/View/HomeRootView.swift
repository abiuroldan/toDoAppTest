//
//  HomeRootView.swift
//  TodoApp
//
//  Created by Abiú Roldán on 09/02/21.
//

import UIKit

class HomeRootView: UIView {
    
    //Cambié el identificador porque esto podría haber causado un error en la app
    let todoItemCellIdentifier = "todoCellIdentifier"
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.register(TodoItemCell.self, forCellReuseIdentifier: todoItemCellIdentifier)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        styleView()
        addViews()
        addConstraints()
    }
    
    private func styleView() {
        backgroundColor = .white
    }
    
    private func addViews() {
        addSubview(tableView)
    }
    
    private func addConstraints() {
        tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
