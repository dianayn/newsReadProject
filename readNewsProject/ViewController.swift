//
//  ViewController.swift
//  readNewsProject
//
//  Created by Diana Duan on 18/2/20.
//  Copyright © 2020 diana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let tableView = UITableView()

    let cellIdentifier = "dataCell"
    var newsFeed: [NewsFeed] = [NewsFeed]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        createNewsFeedArray()
    }

   func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsFeed.count
    }

   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        let currentLastItem = newsFeed[indexPath.row]

        cell.textLabel?.text = currentLastItem.name
        return cell

    }

        func createNewsFeedArray() {
            newsFeed.append(NewsFeed(name: "BBCNews", description: "sports"))
            newsFeed.append(NewsFeed(name: "ABCNews", description: "movies"))
            newsFeed.append(NewsFeed(name: "BBCNews", description: "weather"))
            newsFeed.append(NewsFeed(name: "ABCNews", description: "education"))
            newsFeed.append(NewsFeed(name: "BBCNews", description: "film"))
            newsFeed.append(NewsFeed(name: "ABCNews", description: "music"))
            newsFeed.append(NewsFeed(name: "BBCNews", description: "art"))
            newsFeed.append(NewsFeed(name: "ABCNews", description: "garden"))
        }


    }

