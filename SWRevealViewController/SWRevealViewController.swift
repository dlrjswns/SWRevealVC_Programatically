//
//  SWRevealViewController.swift
//  SWRevealViewController
//
//  Created by 이건준 on 2021/11/17.
//

import UIKit

class FrontViewController:SWRevealViewController{
//    lazy var button:UIButton={
//        let btn = UIButton(type: UIButton.ButtonType.system)
//        btn.setTitle("이동", for: UIControl.State.normal)
//        btn.backgroundColor = .systemBlue
//        btn.tintColor = .white
//        btn.addTarget(self, action: #selector(tappedButton), for: UIControl.Event.touchUpInside)
//        return btn
//    }()
    
    lazy var leftButton:UIBarButtonItem={
        let btn = UIBarButtonItem(image: UIImage(systemName: "list.bullet"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(nvbtnTapped))
        
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.revealViewController().navigationItem.leftBarButtonItem = leftButton
       
        
//        if let revealVC = self.revealViewController(){
//            self.leftButton.target = revealVC
//            self.leftButton.action = #selector(SWRevealViewController.revealToggle(_:))
//
//        }
    }
    
//    @objc func tappedButton(){
//
//    }
    
    @objc func nvbtnTapped(){
        revealViewController().revealToggle(self)
    }
}
