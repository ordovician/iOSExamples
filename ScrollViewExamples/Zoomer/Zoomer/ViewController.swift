//
//  ViewController.swift
//  Zoomer
//
//  Created by Erik Engheim on 22/05/15.
//  Copyright (c) 2015 Pexip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var zoomInFactor: UITextField!
    @IBOutlet weak var zoomOutFactor: UITextField!
    @IBOutlet weak var xOffsetField: UITextField!
    @IBOutlet weak var yOffsetField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func zoomIn(sender: AnyObject) {
        
    }
    
    @IBAction func zoomOut(sender: AnyObject) {
        
    }
    
    @IBAction func scrollToOffset(sender: AnyObject) {
        var y = yOffsetField.text.toInt() ?? 0
        self.scrollView.setContentOffset(CGPoint(x: xOffsetField.text.toInt() ?? 0, y: y), animated: true)
    }
    
    @IBAction func sliderChanged(sender: UISlider) {
        var screenHeight: Float = Float(UIScreen.mainScreen().bounds.height)
        var offset: Int = Int(sender.value * screenHeight)
        self.yOffsetField.text = "\(offset)"
    }
}

