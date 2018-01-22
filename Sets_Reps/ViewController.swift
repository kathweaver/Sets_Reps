//
//  ViewController.swift
//  Sets_Reps
//
//  Created by Kathleen Weaver on 1/20/18.
//  Copyright © 2018 Kathleen Weaver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSet: UILabel!
    
    @IBOutlet weak var lblRep: UILabel!
    
    var setCounter = 0;
    var repCounter = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetCounters(_ sender: Any) {
        setCounter = 0;
        setLabels();
    }
    
    @IBAction func repButton(_ sender: Any) {
        repCounter += 1;
        setLabels();
    
    }
    @IBAction func setButton(_ sender: Any) {
        setCounter += 1;
        repCounter = 0;
        setLabels();
    }
    
    func setLabels() {
        lblSet.text = String(setCounter);
        lblRep.text = String(repCounter);
    }

}

