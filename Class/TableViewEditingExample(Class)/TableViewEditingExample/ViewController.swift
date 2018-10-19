//
//  ViewController.swift
//  TableViewEditingExample
//
//  Created by qbbang on 19/10/2018.
//  Copyright © 2018 qbbang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tableView = UITableView()
    let maxCount = 20
    lazy var data: [Int] = Array(1...maxCount)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupTableView()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(swithchEditingMode))
    }
    
    
    func setupTableView() {
        tableView.frame = view.frame
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsMultipleSelection = true
        //스토리보드 상 해주는 Id 부여랑 동일함
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CellID")
        
        view.addSubview(tableView)
        
        let refreshControl = UIRefreshControl()
        
        refreshControl.attributedTitle = NSAttributedString(string: "Refresh....")
        refreshControl.tintColor = .blue
        refreshControl.addTarget(self, action: #selector(reloadData), for: .valueChanged)
        tableView.refreshControl = refreshControl
    }
    
    @objc func swithchEditingMode() {
        
        tableView.setEditing(!tableView.isEditing, animated: true)
        
        
        
        data.reverse()
        if tableView.refreshControl!.isRefreshing {
            tableView.refreshControl?.endRefreshing()
        }
        tableView.reloadData()
    }
    
    @objc func reloadData() {
        var selectedNumbers: [Int] = []
        for indexPath in tableView.indexPathsForSelectedRows ?? [] {
            selectedNumbers.append(data[indexPath.row])
        }
        data = selectedNumbers
        
        // data.removeAll()
        for _ in 1...(maxCount - selectedNumbers.count) {
            generateRandomNumber()
        }
        
        if tableView.refreshControl!.isRefreshing {
            tableView.refreshControl?.endRefreshing()
        }
        tableView.reloadData()
    }
    
    
    // 재귀함수 - 자기가 자기 자신의 함수를 다시 호출하는, 피보나치, 팩토리얼, 하노이의 탑
    private func generateRandomNumber() {
        let randomNumber = Int(arc4random_uniform(50))
        guard !data.contains(randomNumber) else {
            return generateRandomNumber()
        }
        data.append(randomNumber)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath)
        
        cell.textLabel?.text = "\(data[indexPath.row])"
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
//        return IndexPath(row: indexPath.row + 2, section: indexPath.section)
        guard data[indexPath.row] > 7 else {return nil}
        
        
        return indexPath
    }
    
//    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//
//        //by doing this we can make which row can be edited or not.
//        return indexPath.row % 2 == 0 ? true : false //default value is true, so always editing
//
//    }
//
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {

        if indexPath.row % 3 == 0 {
            return .none
        } else if indexPath.row % 3 == 1 {
            return .insert
        } else {
            return .delete

        }

    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .none:
           break
        case .insert:
            
            //순서 주의
            data.insert(Int(arc4random_uniform(50)), at: indexPath.row)
            tableView.insertRows(at: [indexPath], with: .top)
            
            print("insert")
        case .delete:
            data.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            print("delete")

        }
    }
    
    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return false
        
    }
    
    
    // iOS11
//    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//
//        let addAction = UIContextualAction(style: .normal, title: "Add") {
//            (action, view, success) in print("Add Action")
//            success(true)
//        }
//
//        let editAction = UIContextualAction(style: .normal, title: "Edit") {
//            (action, view, success) in print("Edit Action")
//            success(true)
//        }
//
//        addAction.backgroundColor = .darkGray
//
//        let config = UISwipeActionsConfiguration(actions: [addAction,editAction])
//        config.performsFirstActionWithFullSwipe = true
//
//        return config
//    }
    
    // iOS8
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let addAction = UITableViewRowAction(style: .normal, title: "Add") {
            (action, indexPath) in print("Add")
            self.data.insert(5, at: indexPath.row)
            tableView.reloadData()
            
            
        }
        
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") {
            (action, indexPath) in print("delete")
            
            self.data.remove(at: indexPath.row)
             tableView.reloadData()
            
            
        }
        addAction.backgroundColor = #colorLiteral(red: 0.1129237935, green: 0.7422184348, blue: 0.9467055202, alpha: 1)
        
        return [addAction, deleteAction]
    }
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let swipe = UIContextualAction(style: .normal, title: "Swipe") { (action, view, success) in
            success(true)
            print("Swipe")
            self.data.remove(at: indexPath.row)
            tableView.reloadData()
            
        }
        
        swipe.backgroundColor = #colorLiteral(red: 0.9126440458, green: 0.9764705896, blue: 0.2092023157, alpha: 1)
        let config = UISwipeActionsConfiguration(actions: [swipe])
                config.performsFirstActionWithFullSwipe = true
        
        return config
        
    }
    
}
