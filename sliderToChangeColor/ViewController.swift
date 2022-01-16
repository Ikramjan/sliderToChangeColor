//
//  ViewController.swift
//  sliderToChangeColor
//
//  Created by Икрамджан Абдукадыров on 14/1/22.
//
import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        viewColor.layer.cornerRadius = 15
        
        viewColor.backgroundColor = UIColor (
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1.0
            )
        labelRed.text = String(sliderRed.value)
        labelGreen.text = String(sliderGreen.value)
        labelBlue.text = String(sliderBlue.value)
        
    }
    
    
    
    
    @IBAction func sliderToChange() {
        viewColor.backgroundColor = UIColor (
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1.0
            )
        labelRed.text = String(format: "%.2f", sliderRed.value)
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
    }
    
    
}
