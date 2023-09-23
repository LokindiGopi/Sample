//
//  ViewController.swift
//  Sample
//
//  Created by Lokindi,Gopi on 9/20/23.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    var x:Double=0.0
    //buttons outlets
    @IBOutlet weak var oneWayTripBTN: UIButton!
    @IBOutlet weak var roundTripBTN: UIButton!
    
    
    @IBOutlet weak var bookTicketBTN: UIButton!
    
    @IBOutlet weak var custNameTF: UITextField!
    @IBOutlet weak var cityFromTF: UITextField!
    @IBOutlet weak var cityToTF: UITextField!
    
    @IBOutlet weak var textlabel: UITextView!
    
    @IBOutlet weak var departureDateTF: UITextField!
    @IBOutlet weak var returnDateTF: UITextField!
    
    @IBOutlet weak var numPassTF: UITextField!
    
    
    //button actions
    @IBAction func oneWayTrip(_ sender: UIButton) {
        roundTripBTN.isEnabled=false
        returnDateTF.isEnabled=false
        
    }
    
    @IBAction func roundTrip(_ sender: UIButton) {
        oneWayTripBTN.isEnabled=false
    }
    
    
    @IBAction func clear(_ sender: UIButton) {
        roundTripBTN.isEnabled=true
        returnDateTF.isEnabled=true
        oneWayTripBTN.isEnabled=true
        textlabel.text=""
        custNameTF.text=""
        cityFromTF.text=""
        cityToTF.text=""
        departureDateTF.text=""
        returnDateTF.text=""
        numPassTF.text=""
        
    }
    @IBAction func bookTicket(_ sender: UIButton) {
        let cn=custNameTF.text ?? " "
        let cf=cityFromTF.text ?? " "
        let ct=cityToTF.text ?? " "
        let d=departureDateTF.text ?? " "
        
        if oneWayTripBTN.isEnabled {
            if(departureDateTF.text == ""){
                textlabel.text="Invalid depature date"
            }
            else{
                textlabel.text="Invalid No of Input Passengers"
            }
                        if let numofpassenger = numPassTF.text ,
               let numofpassengerInt = Int(numofpassenger){
                if numofpassengerInt >= 1 && numofpassengerInt <= 3 {
                    x=Double(numofpassengerInt)*890.50
                }
                else if numofpassengerInt >= 4 && numofpassengerInt <= 6{
                    x=Double(numofpassengerInt)*439.77
                }
                else{
                    x=Double(numofpassengerInt)*375.09
                }
                
                            textlabel.text = "Congratulations "+cn+"!\n Your trip from "+cf+" to "+ct+" is confirmed for the Ticket price $"+String(round(1000*x)/1000)+".\nyour flight departs on "+d
                            
                            
            }
            
        }
        else{
            if(departureDateTF.text == ""){
                textlabel.text="Invalid depature date"
            }
            else if(returnDateTF.text == ""){
                textlabel.text="Invalid return date"
            }
            else{
                textlabel.text="Invalid No of Input Passengers"
            }
            if let numofpassenger = numPassTF.text ,
               let numofpassengerInt = Int(numofpassenger){
                if numofpassengerInt >= 1 && numofpassengerInt <= 3 {
                    x=Double(numofpassengerInt)*1205.35
                }
                else if numofpassengerInt >= 4 && numofpassengerInt <= 6{
                    x=Double(numofpassengerInt)*631.25
                }
                else{
                    x=Double(numofpassengerInt)*491.21
                }
                textlabel.text="Congratulations "+cn+"!\n Your trip from "+cf+" to "+ct+" is confirmed for the Ticket price $"+String(round(1000*x)/1000)+".\nyour flight departs on "+d
            }
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

