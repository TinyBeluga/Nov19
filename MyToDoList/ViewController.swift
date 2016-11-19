//
//  ViewController.swift
//  MyToDoList
//
//  Created by Benjamin Tan on 11/13/16.
//  Copyright © 2016 Benjamin Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var averageLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    var testScores:[[String:String]] = [["name":"John", "grade":"90"],["name":"Jane", "grade":"76"],["name":"Kevin", "grade":"60"],["name":"Rebecca", "grade":"88"],["name":"Henry", "grade":"65"],["name":"Hans", "grade":"92"],["name":"Cindy", "grade":"83"]]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        allScoresAverage()
    }
    
    // TASK 1: Create a function that will calculate the average of the scores as a float and update the averageLabel with the score in the following format: "Average: XX".  
    //Formula for average = Sum of all scores/total number of scores
    

    
    
    func allScoresAverage (){
        
        var scoreIndex = testScores.count
        var runningTotal:Float = 0
        
        for studentScore in testScores {
            runningTotal = Float(studentScore["grade"]!)!+runningTotal
        }
        
       averageLabel.text = String(runningTotal / Float(scoreIndex))
        
        
        //if(float(testScores="grade"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testScores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // TASK 2: Update the tableview cell with the title as the name of the student and the subtitle as the grade in descending order (highest student first). Hint: See sorting function below.
        
        var sortedArray = sortResults()
        
        //cell.textLabel?.text = sortedArray[indexPath.row]["name"]
        
        //cell.textLabel?.text = sortie[indexPath.row]["name"]
        //cell.detailTextLabel?.text = sortie[indexPath.row]["grade"]
        
        return cell
    }
    
    
    // The function sortResults() will sort the array in descending order. It does not take in any inputs and returns a array (sortedArray) as an output.
    func sortResults() -> Array<Any> {
        let sortedArray = testScores.sorted { (s1:[String:String], s2:[String:String]) -> Bool in
            if (Int(s1["grade"]!) == Int(s2["grade"]!)){
                return s1["grade"]! < s2["grade"]!
            } else{
                return s1["grade"]! < s2["grade"]!
            }
        }
        return sortedArray
    }
    
    
    
    
    
    


}

