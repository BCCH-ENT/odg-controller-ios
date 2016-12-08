//
//  ViewController.swift
//  ODG_iOS_Controller
//
//  Created by Neil Connatty on 2016-11-07.
//  Copyright (c) 2016 ___BCCHILDRENSHOSPITAL___. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var pnInterface: PubNubInterface!

    @IBOutlet weak var messageInput: UITextField!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        messageInput.delegate = self
        pnInterface = PubNubInterface.sharedInstance
    }

    // MARK: UITextFieldDelegate

    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        // Hide the keyboard
        textField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField)
    {
    }


    // MARK: Actions

    @IBAction func SendMessageAction(_ sender: UIButton)
    {
        pnInterface.sendMessage(msg: messageInput.text!)
        messageInput.text = ""
        
        if (messageInput.isFirstResponder) {
            messageInput.resignFirstResponder()
        }
    }
    
    @IBAction func ShowImageAction(_ sender: UIButton)
    {
        pnInterface.showImage()
    }

    @IBAction func HideImageAction(_ sender: UIButton)
    {
        pnInterface.hideImage()
    }
    
    @IBAction func ZoomImageAction(_ sender: UIButton)
    {
        pnInterface.zoomImage()
    }
    
    @IBAction func ReloadImageAction(_ sender: UIButton)
    {
        pnInterface.reloadImage()
    }
    
    @IBAction func ScrollLeftAction(_ sender: UIButton)
    {
        pnInterface.scrollLeft()
    }
    
    @IBAction func ScrollRightAction(_ sender: UIButton)
    {
        pnInterface.scrollRight()
    }
    
    @IBAction func TakeImageAction(_ sender: UIButton)
    {
        pnInterface.uploadImage()
    }
    
    @IBAction func FlipViewAction(_ sender: UIButton)
    {
        pnInterface.flipView()
    }
    
}
