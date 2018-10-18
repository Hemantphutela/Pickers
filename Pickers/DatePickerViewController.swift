//
//  DatePickerViewController.swift
//  Pickers
//
//  Created by Hemant Phutela on 18/10/2018.
//  Copyright © 2018 Hemant Phutela. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        let date = NSDate()
        datePicker.setDate(date as Date, animated: false)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onButtonPressed(_ sender: UIButton) {
        let date = datePicker.date
        let message = "The date and Time you selected is \(date)"
        let alert = UIAlertController(title: "Date and Time Selected",
                                      message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Thats so true", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true,completion: nil)
    }
    

}
