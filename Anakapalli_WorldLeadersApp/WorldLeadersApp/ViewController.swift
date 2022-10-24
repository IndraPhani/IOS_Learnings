//
//  ViewController.swift
//  WorldLeadersApp
//
//  Created by Anakapalli Kanaka Venkata Phaneendrababu on 10/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var leaderDescLBL: UILabel!
    @IBOutlet weak var LeaderIV: UIImageView!
    
    @IBAction func selectLeader(_ sender: UIButton) {
        guard let value = sender.titleLabel?.text else{
            return
        }
        let btnValue = value
        
        if btnValue == "Abdul Kalam"{
            self.leaderDescLBL.text = "Avul Pakir Jainulabdeen Abdul Kalam was an Indian aerospace scientist and statesman who served as the 11th President of India from 2002 to 2007. "
            self.LeaderIV.image = UIImage(named : "kalam")
            
        }
        else if btnValue == "George Washington"{
            self.leaderDescLBL.text = "George Washington was an American military officer, statesman, and Founding Father who served as the first president of the United States from 1789 to 1797."
            self.LeaderIV.image = UIImage(named : "washinton")
            
        }
        else if btnValue == "Abraham Lincoln"{
            self.leaderDescLBL.text = "Abraham Lincoln was an American lawyer and statesman who served as the 16th president of the United States from 1861 until his assassination in 1865."
            self.LeaderIV.image = UIImage(named : "lincoln")
            
        }
        else if btnValue == "Narendra Modi"{
            self.leaderDescLBL.text = "Narendra Damodardas Modi is an Indian politician serving as the 14th and current prime minister of India since 2014. Modi was the chief minister of Gujarat from 2001 to 2014 and is the Member of Parliament from Varanasi."
            self.LeaderIV.image = UIImage(named : "modi")
            
        }
        else if btnValue == "Mahatma Gandhi"{
            self.leaderDescLBL.text = "Mohandas Karamchand Gandhi was an Indian lawyer, anti-colonial nationalist and political ethicist who employed nonviolent resistance to lead the successful campaign for India's independence from British rule, and to later inspire movements for civil rights and freedom across the world."
            self.LeaderIV.image = UIImage(named : "gandhi")
            
        }
        else{
            self.leaderDescLBL.text = "Martin Luther King Jr. was an American Baptist minister and activist, one of the most prominent leaders in the civil rights movement from 1955 until his assassination in 1968 ."
            self.LeaderIV.image = UIImage(named : "king")
            
        }
            
            
        }
    }

