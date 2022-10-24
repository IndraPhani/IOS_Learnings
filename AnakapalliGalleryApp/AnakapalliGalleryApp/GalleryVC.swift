//
//  GalleryVC.swift
//  AnakapalliGalleryApp
//
//  Created by Anakapalli K V Phaneendra babu on 10/11/22.
//

import UIKit

class GalleryVC: UIViewController {

    @IBOutlet weak var searchTF: UITextField!
    @IBOutlet weak var pictureIV: UIImageView!
    @IBOutlet weak var pictureDescTV: UITextView!
    @IBOutlet weak var searchBTN: UIButton!
    @IBOutlet weak var likeBTN: UIButton!
    @IBOutlet weak var dislikeBTN: UIButton!
    @IBOutlet weak var previousBTN: UIButton!
    @IBOutlet weak var resetBTN: UIButton!
    @IBOutlet weak var nextBTN: UIButton!
    
    let rand: UInt32 = 100
    
    lazy var actor = [
        "keywords": ["actor", "movie", "theatre", "film", "artist"],
        "pictures": ["aishwaryarai", "johnnydepp", "piercebrosnan", "puneethrajkumar", "sharukhkhan"],
        "descriptions": [
            "Aishwarya Rai Bachchan is an Indian actress and the winner of the Miss World 1994 pageant. Primarily known for her work in Hindi and Tamil films, she has established herself as one of the most popular and influential celebrities in India.",
            "John Christopher Depp II is an American actor and musician. He is the recipient of multiple accolades, including a Golden Globe Award and a Screen Actors Guild Award, in addition to nominations for three Academy Awards and two BAFTA awards.",
            "Pierce Brendan Brosnan OBE is an Irish actor and film producer. He is best known as the fifth actor to play secret agent James Bond in the Bond film series, starring in four films from 1995 to 2002.",
            "Puneeth Rajkumar, colloquially known as Appu, was an Indian actor, playback singer, television presenter, and producer, who worked in Kannada cinema. He had been called, by the media and fans, \"Power Star\".",
            "Shah Rukh Khan, also known by the initialism SRK, is an Indian actor, film producer, and television personality who works in Hindi films.Referred to in the media as the \"Baadshah of Bollywood\" (in reference to his 1999 film Baadshah), \"King of Bollywood\" and \"King Khan\", he has appeared in more than 80 films, and earned numerous accolades, including 14 Filmfare Awards."
        ],
        "likes": [String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand))],
        "dislikes": [String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand))],
    ]
    
    lazy var bird = [
        "keywords": ["bird", "raptor", "fowl", "warbler", "chick"],
        "pictures": ["bird", "raptor", "fowl", "warbler", "chick"],
        "descriptions": [
            "Birds are a group of warm-blooded vertebrates constituting the class Aves, characterised by feathers, toothless beaked jaws, the laying of hard-shelled eggs, a high metabolic rate, a four-chambered heart, and a strong yet lightweight skeleton.",
            "Birds of prey or predatory birds, also known as raptors, are hypercarnivorous bird species that actively hunt and feed on other vertebrates (mainly mammals, reptiles and other smaller birds). In addition to speed and strength, these predators have keen eyesight for detecting prey from a distance or during flight, strong feet with sharp talons for grasping or killing prey, and powerful, curved beaks for tearing off flesh.",
            "Fowl are birds belonging to one of two biological orders, namely the gamefowl or landfowl and the waterfowl. Anatomical and molecular similarities suggest these two groups are close evolutionary relatives; together, they form the fowl clade which is scientifically known as Galloanserae.",
            "Various Passeriformes (perching birds) are commonly referred to as warblers. They are not necessarily closely related to one another, but share some characteristics, such as being fairly small, vocal, and insectivorous.",
            "Chick means any baby bird of any species from the moment it hatches until it leaves the nest"
        ],
        "likes": [String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand))],
        "dislikes": [String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand))],
    ]
    
    lazy var hero = [
        "keywords": ["leadactor", "maleactor", "hero"],
        "pictures": ["jalsa", "bang", "arya"],
        "descriptions": [
            "Sanjay loves Indu, daughter of a police officer who does not approve their alliance. Later Baagi enters his life who is the daughter of same police officer. Will they unite this time",
            "A chance encounter with a mysterious charmer (Hrithik Roshan) leads to an adrenaline-fueled, transcontinental adventure for a mild-mannered bank employee (Katrina Kaif)",
            "Ajay and Arya, who are twin brothers, are orphans. When Ajay gets lucky and is adopted by a rich family and goes on to do well in life, he employs Arya in his software company; however, problems arise when they both fall in love with the same girl"
                    ],
        "likes": [String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand))],
        "dislikes": [String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand)), String(arc4random_uniform(rand))],
    ]
    
    lazy var gallery = [actor, bird, hero]
    
    lazy var pictures: [String] = []
    lazy var descriptions: [String] = []
    lazy var likes: [String] = []
    lazy var dislikes: [String] = []
    lazy var currentIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpInitialState()
    }
    
    func setUpInitialState() {
        currentIndex = 0
        searchTF.text = ""
        pictureIV.image = UIImage(systemName: "folder")
        pictureDescTV.text = ""
        searchBTN.isEnabled = false
        likeBTN.setTitle("👍", for: .normal)
        likeBTN.isEnabled = false
        dislikeBTN.setTitle("👎", for: .normal)
        dislikeBTN.isEnabled = false
        previousBTN.isEnabled = false
        resetBTN.isEnabled = false
        nextBTN.isEnabled = false
    }
    
    func failureState() {
        setUpInitialState()
        pictureDescTV.text = "Sorry, no matches found for your search. Try again."
    }
    
    func updateTheItemDetails() {
        pictureIV.image = UIImage(named: pictures[currentIndex])
        pictureDescTV.text = descriptions[currentIndex]
        likeBTN.isEnabled = true
        likeBTN.setTitle("👍 \(likes[currentIndex])", for: .normal)
        dislikeBTN.isEnabled = true
        dislikeBTN.setTitle("👎 \(dislikes[currentIndex])", for: .normal)
        previousBTN.isEnabled = (currentIndex != 0)
        nextBTN.isEnabled = (currentIndex != pictures.count - 1)
        resetBTN.isEnabled = true
    }
    
    @IBAction func searchTextFieldChanged(_ sender: UITextField) {
        guard let searchKeyword = sender.text else {
            return
        }
        searchBTN.isEnabled = !searchKeyword.isEmpty
    }
    
    @IBAction func search(_ sender: Any) {
        self.view.endEditing(true)
        guard let keyword = searchTF.text else {
            return
        }
        guard let filteredGallery = gallery.filter({ ($0["keywords"] ?? []).contains(keyword)}).first else {
            failureState()
            return
        }
        pictures = filteredGallery["pictures"] ?? []
        descriptions = filteredGallery["descriptions"] ?? []
        likes = filteredGallery["likes"] ?? []
        dislikes = filteredGallery["dislikes"] ?? []
        currentIndex = 0
        updateTheItemDetails()
    }
    
    @IBAction func like(_ sender: Any) {
        let count = Int(likes[currentIndex]) ?? 0
        likes[currentIndex] = "\(count + 1)"
        likeBTN.setTitle("👍 \(likes[currentIndex])", for: .normal)
    }
    @IBAction func dislike(_ sender: Any) {
        let count = Int(dislikes[currentIndex]) ?? 0
        dislikes[currentIndex] = "\(count + 1)"
        dislikeBTN.setTitle("👎 \(dislikes[currentIndex])", for: .normal)
    }
    @IBAction func previous(_ sender: Any) {
        currentIndex -= 1
        updateTheItemDetails()
    }
    @IBAction func reset(_ sender: Any) {
        setUpInitialState()
    }
    @IBAction func next(_ sender: Any) {
        currentIndex += 1
        updateTheItemDetails()
    }
}
