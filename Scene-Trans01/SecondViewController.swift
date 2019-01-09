//
//  SecondViewController.swift
//  Scene-Trans01
//
//  Created by 윤성호 on 2019. 1. 9..
//  Copyright © 2019년 윤성호. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    // 뒤로가기 버튼 이벤트
    @IBAction func dismiss(_ sender: Any) {
        
        // 화면전환한 뷰컨트롤러로 dismiss...
        self.presentingViewController?.dismiss(animated: true)
    }
}
