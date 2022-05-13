//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Vladimir Pisarenko on 13.05.2022.
//

import UIKit

class AthleteFormViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var leagueTextField: UITextField!
    @IBOutlet var teamTextField: UITextField!
    
    
    var athlete: Athlete?
    
    required init?(coder: NSCoder, athlete: Athlete?) {
        self.athlete = athlete
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
        
    }
    func updateView() {
        
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
       
        guard let name = nameTextField.text,
              let ageString = ageTextField.text,
              let age = Int(ageString),
              let league = leagueTextField.text,
              let team = teamTextField.text else {return}
        
       athlete = Athlete(name: name, age: age, league: league, team: team)
                
    }
}
