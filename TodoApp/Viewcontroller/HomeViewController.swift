//
//  HomeViewController.swift
//  TodoApp
//
//  Created by Abiú Roldán on 09/02/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    let rootView = HomeRootView()
    var todoItems = [ItemModel]()
    
    private func getItemsFromJson() {
        let parseJson = loadJSONData(filename: "items")
        guard let json = parseJson else {
            print("could not load the json file")
            return
        }
        
        let decodeJson = try? JSONDecoder().decode([ItemModel].self, from: json)
        
        if let jsonfasd = decodeJson {
            print(jsonfasd[0].details.day)
        }
        
        todoItems = decodeJson ?? []
        
        rootView.tableView.reloadData()
    }
    
    override func loadView() {
        view = rootView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegates()
        getItemsFromJson()
        title = "To do app"
    }
    
    private func setDelegates() {
        rootView.tableView.delegate = self
        rootView.tableView.dataSource = self
    }
}

extension UIViewController {
    func loadJSONData(filename: String) -> Data? {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json") else {
            return nil
        }
        return try? Data(contentsOf: url)
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: rootView.todoItemCellIdentifier, for: indexPath) as! TodoItemCell
        cell.setData(with: todoItems[indexPath.row])
        return cell
    }
}
