//
//  ViewController.swift
//  Scene-Trans01
//
//  Created by 윤성호 on 2019. 1. 9..
//  Copyright © 2019년 윤성호. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func moveNext(_ sender: Any) {
        
        // 이동할 뷰 컨트롤러 객체를 StoryboardID 정보를 이용하여 참조.
        // self.storyboary가 nil일때 메서드를 종료 -> guard ~ else 문
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        
        /**
         - 스토리보드가 여러 개 존재할 때는 원하는 스토리보드를 지정
         
         let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
         let uvc = mainStoryboard.instantiateViewController(withIdentifier: "SecondVC")
         
         **/
        
        // 화면 전환할 때의 애니메이션 타입
        uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        
        /**
         - 기본 전환 스타일 4가지
         
         1. UIModalTransitionStyle.coverVertical : 아래에서 위쪽으로 새로운 화면이 올라가면서 전환되는 효과
         2. UIModalTransitionStyle.crossDissolve : 디졸브 상황에서 두 화면이 서로 교차하면서 전 화면이 사라지고 다음화면이 뚜렷하게 나타나는 전화되는 효과
         3. UIModalTransitionStyle.flipHorizontal : 화면 중앙 가상의 축을 기준으로 화면이 돌아가는 효과(=Flip)를 주면서 새로운 화면으로 전환되는 효과
         4. UIModalTransitionStyle.partialCurl : 화면의 오른쪽 아래 모서리에서 시작해 페이지가 말려 올라가는 효과를 주며 새로운 화면을 전환되는 효과
         
         **/
        
        // 인자값으로 뷰 컨트롤러 인스턴스를 넣고 프레젠트 메소드 호출
        self.present(uvc, animated: true)
    }
    
}

