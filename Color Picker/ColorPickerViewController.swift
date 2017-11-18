//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Keith Compton on 11/16/17.
//  Copyright © 2017 Keith Compton All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var colorLabel: UILabel!

    
    var index: Int = 0
    
    let colors: [ Color ] = [
        Color( name: "Red"   , value: UIColor.red    ),
        Color( name: "Orange", value: UIColor.orange ),
        Color( name: "Yellow", value: UIColor.yellow ),
        Color( name: "Green" , value: UIColor.green  ),
        Color( name: "Blue"  , value: UIColor.blue   ),
        Color( name: "Purple", value: UIColor.purple )
    ]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.updateView()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents( in pickerView: UIPickerView ) -> Int
    {
        return 1
    }
    
    func pickerView( _ pickerView: UIPickerView, numberOfRowsInComponent component: Int ) -> Int
    {
        return colors.count
    }
    
    //REturn
    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int ) -> String?
    {
        return colors[ row ].name
    }
    
    func pickerView( _ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int )
    {
        index = row
        self.updateView()
    }
    
    func updateView() -> Void
    {
        //Variable to hold index and value of bg color
        pickerView.backgroundColor = colors[ index ].value
        colorLabel.text = colors[ index ].name
        self.view.backgroundColor  = colors[ index ].value
    }
}
