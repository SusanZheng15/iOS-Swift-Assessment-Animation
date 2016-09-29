//
//  AnimationViewController.swift
//  iOS-Week8-Swift-Assessment
//
//  Created by Flatiron School on 7/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {

    @IBOutlet weak var testView: UIView!
    var testViewTop: NSLayoutConstraint!
    var testViewLeft: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUptestConstraints()
    }

    @IBAction func animate(_ sender: AnyObject) {
        
        //Animate your square here
    }
    
    func setUptestConstraints(){
        
        for constraint in view.constraints
        {
            if constraint.firstItem as? UIView == testView || constraint.secondItem as? UIView == testView{
                view.removeConstraint(constraint)
            }
        }
        
        testView.translatesAutoresizingMaskIntoConstraints = false
        
        testViewTop = testView.topAnchor.constraint(equalTo: view.topAnchor)
        testViewTop.isActive = true
        
        testViewLeft = testView.leftAnchor.constraint(equalTo: view.leftAnchor)
        testViewLeft.isActive = true
        
        testView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        testView.widthAnchor.constraint(equalTo: testView.heightAnchor).isActive = true

    }

}
