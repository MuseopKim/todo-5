//
//  Tasks.swift
//  TodoApp
//
//  Created by delma on 2020/04/10.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

struct AllData: Codable {
    var status: Bool
    var data: [Category]
}

struct Category: Codable {
    var id: Int
    var name: String
    var task: [Contents]
    var deleted: Bool?
}

struct Contents: Codable {
    var id: Int?
    var title: String
    var content: String
    var priority: Int?
    var author: String
    var categoryTo: Int?
    var categoryFrom: Int?
    var categoryNum: Int
    var deleted: Bool?
}

struct DragItem {
    var taskId: Int
    var dataSource: TasksTableViewDataSource
    var indexPath: IndexPath
    var tableView: TasksTableView
}

struct RequestBody: Codable {
    var status: Bool
    var data: Int?
}

struct MoveRequest {
    var categoryFrom: Int
    var categoryTo: Int
    var priority: Int
}
