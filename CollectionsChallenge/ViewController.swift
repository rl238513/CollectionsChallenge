//
//  ViewController.swift
//  CollectionsChallenge
//
//  Created by Robert J. Hannon on 5/30/18.
//  Copyright © 2018 Mobile Makers Edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var indexTextField: UITextField!
    @IBOutlet weak var removedMovieLabel: UILabel!
    
    let sectionTitles = ["Arrays","Dictionaries"]
    var numberOfFavoriteMovies = 0
    var key = ""
    var value = 0
    var movie = ""
    
    /***************************************************
     * Start Your Code Here For MVP - Part I
     ***************************************************/
    
    
    
    /***************************************************
     * End Your Code Here For MVP - Part I
     ***************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.backgroundColor = .lightGray
        label.text = sectionTitles[section]
        label.font = UIFont(name: "Times", size: 30)
        return label
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /***************************************************
         * Start Your Code Here For MVP - Part II
         ***************************************************/
        
        
        
        /***************************************************
         * End Your Code Here For MVP - Part II
         ***************************************************/
        return numberOfFavoriteMovies
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /***************************************************
         * Uncomment the three lines below for MVP
         ***************************************************/
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") {
            if indexPath.section == 0 {
//                movie = myFavoriteMovies[indexPath.row]
                cell.textLabel?.text = movie
            } else {
//                key = Array(myMovieRatings.keys)[indexPath.row]
//                value = Array(myMovieRatings.values)[indexPath.row]
                var output = "\(key) "
                for _ in 1...value {
                    output += "⭐️"
                }
                cell.textLabel?.text = output
            }
            return cell
        }
        return UITableViewCell()
    }
    
    @IBAction func whenStretch1ButtonPressed(_ sender: UIButton) {
        /***************************************************
         * Start Your Code Here For Stretch #1
         ***************************************************/
        
        

        /***************************************************
         * End Your Code Here For Stretch #1
         ***************************************************/
        tableView.reloadData()
    }
    
    @IBAction func whenStretch2ButtonPressed(_ sender: UIButton) {
        /***************************************************
         * Start Your Code Here For Stretch #2
         ***************************************************/
        
        
        
        /***************************************************
         * End Your Code Here For Stretch #2
         ***************************************************/
        tableView.reloadData()
    }
    
    @IBAction func whenStretch3ButtonPressed(_ sender: UIButton) {
        /***************************************************
         * Start Your Code Here For Stretch #3
         ***************************************************/
        
        
        /***************************************************
         * End Your Code Here For Stretch #3
         ***************************************************/
        tableView.reloadData()
    }
}

