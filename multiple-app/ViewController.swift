//
//  ViewController.swift
//  multiple-app
//
//  Created by Moritz Haist on 05.02.16.
//  Copyright © 2016 Moritz Haist. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // VARIABLES
    
        var numberToadd = 0
        var maxNumber = 50
        var sum = 0
        var numberOne = 0
    
    // OUTLETS
    
        @IBOutlet weak var multipleLogo: UIImageView!
        @IBOutlet weak var multipleLbL: UILabel!
        @IBOutlet weak var multipletxtField: UITextField!
        @IBOutlet weak var playBtn: UIButton!
        @IBOutlet weak var addBtn: UIButton!
    
    
    // ACTIONS
    
        // pressed play button
    
        @IBAction func playBtnispressed (sender: UIButton!){
        
        
            if multipletxtField.text != nil && multipletxtField.text != "" {
            
                multipleLogo.hidden = true
                multipleLbL.hidden = false
                multipletxtField.hidden = true
                playBtn.hidden = true
                addBtn.hidden = false
            
                numberToadd = Int(multipletxtField.text!)!
            }
                
        }
    
        // pressed add button
    
        @IBAction func addBtnispressed (sender: UIButton!){
            
            sum = numberOne + numberToadd
            updateLbl()
            updatenumberOne()
            
            if checkmaxNumber() {
                restartApp()
            }
            
        }
    
    
    // FUNCTIONS
    
    
    func updateLbl(){
        multipleLbL.text = "\(numberOne) + \(numberToadd) = \(sum)"
    }
    
    func updatenumberOne() {
        numberOne = sum
    }
    
    func checkmaxNumber() -> Bool {
        if sum >= maxNumber {
            return true
        }
        else {
            return false
        }
    }
    
    func restartApp() {
        numberToadd = 0
        sum = 0
        numberOne = 0
        updateLbl()
        multipletxtField.text = ""
        
        multipleLogo.hidden = false
        multipleLbL.hidden = true
        multipletxtField.hidden = false
        playBtn.hidden = false
        addBtn.hidden = true
        
    }

}

