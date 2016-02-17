//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!

    @IBOutlet weak var go: UIButton!

    @IBOutlet weak var space: UIButton!
    
    @IBOutlet weak var delete: UIButton!
    
    @IBOutlet weak var superman: UIButton!
    
    @IBOutlet weak var aquaman: UIButton!
    
    @IBOutlet weak var batman: UIButton!
    
    @IBOutlet weak var cyborg: UIButton!
    
    @IBOutlet weak var wonderWoman: UIButton!
    
    @IBOutlet weak var flash: UIButton!
    
    @IBOutlet weak var martianManhunter: UIButton!
    
    @IBOutlet weak var nightwing: UIButton!
    
    @IBOutlet weak var robin: UIButton!
    
    @IBOutlet weak var greenLantern: UIButton!
    
    @IBOutlet weak var supergirl: UIButton!
    
    @IBOutlet weak var hawkgirl: UIButton!
    
    @IBOutlet weak var captainMarvel: UIButton!
    
    @IBOutlet weak var greenArrow: UIButton!
    
    var heroes = ["Superman! ", "Aquaman! ", "Batman! ", "Cyborg! ", "Wonder Woman! ", "The Flash! ", "Martian Manhunter! ", "Nightwing! ", "Robin! ", "Green Lantern! ", "Supergirl! ", "Hawkgirl! ", "Captain Marvel! ", "Green Arrow! "]
    
    var keyboardView: UIView!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func uperman() {
        (textDocumentProxy as UIKeyInput).insertText(heroes[0])
    }
    
    func quaman() {
        (textDocumentProxy as UIKeyInput).insertText(heroes[1])
    }
    
    func atman() {
        (textDocumentProxy as UIKeyInput).insertText(heroes[2])
    }
    
    func yborg() {
        (textDocumentProxy as UIKeyInput).insertText(heroes[3])
    }
    
    func onderWoman() {
        (textDocumentProxy as UIKeyInput).insertText(heroes[4])
    }
    
    func lash() {
        (textDocumentProxy as UIKeyInput).insertText(heroes[5])
    }
    
    func artianManhunter() {
        (textDocumentProxy as UIKeyInput).insertText(heroes[6])
    }
    
    func ightwing() {
        (textDocumentProxy as UIKeyInput).insertText(heroes[7])
    }
    
    func obin() {
        (textDocumentProxy as UIKeyInput).insertText(heroes[8])
    }
    
    func reenLantern() {
        (textDocumentProxy as UIKeyInput).insertText(heroes[9])
    }
    
    func upergirl() {
        (textDocumentProxy as UIKeyInput).insertText(heroes[10])
    }
    
    func awkgirl() {
        (textDocumentProxy as UIKeyInput).insertText(heroes[11])
    }
    
    func aptainMarvel() {
        (textDocumentProxy as UIKeyInput).insertText(heroes[12])
    }
    
    func reenArrow() {
        (textDocumentProxy as UIKeyInput).insertText(heroes[13])
    }
    
    func printReturn() {
        (textDocumentProxy as UIKeyInput).insertText("\n")
    }
    
    func pace() {
        (textDocumentProxy as UIKeyInput).insertText(" ")
    }
    
    func destroy() {
        (textDocumentProxy as UIKeyInput).deleteBackward()
    }
    

    
    

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        go.addTarget(self, action: "printReturn", forControlEvents: .TouchUpInside)
        superman.addTarget(self, action: "uperman", forControlEvents: .TouchUpInside)
        aquaman.addTarget(self, action: "quaman", forControlEvents: .TouchUpInside)
        batman.addTarget(self, action: "atman", forControlEvents: .TouchUpInside)
        cyborg.addTarget(self, action: "yborg", forControlEvents: .TouchUpInside)
        wonderWoman.addTarget(self, action: "onderWoman", forControlEvents: .TouchUpInside)
        flash.addTarget(self, action: "lash", forControlEvents: .TouchUpInside)
        martianManhunter.addTarget(self, action: "artianManhunter", forControlEvents: .TouchUpInside)
        nightwing.addTarget(self, action: "ightwing", forControlEvents: .TouchUpInside)
        robin.addTarget(self, action: "obin", forControlEvents: .TouchUpInside)
        greenLantern.addTarget(self, action: "reenLantern", forControlEvents: .TouchUpInside)
        supergirl.addTarget(self, action: "upergirl", forControlEvents: .TouchUpInside)
        hawkgirl.addTarget(self, action: "awkgirl", forControlEvents: .TouchUpInside)
        captainMarvel.addTarget(self, action: "aptainMarvel", forControlEvents: .TouchUpInside)
        greenArrow.addTarget(self, action: "reenArrow", forControlEvents: .TouchUpInside)
        delete.addTarget(self, action: "destroy", forControlEvents: .TouchUpInside)
        space.addTarget(self, action: "pace", forControlEvents: .TouchUpInside)
        
    }


}
