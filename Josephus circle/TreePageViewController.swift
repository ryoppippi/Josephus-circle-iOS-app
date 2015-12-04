//
//  TreePageViewController.swift
//  Josephus circle
//
//  Created by 三浦亮太朗 on 2015/12/03.
//  Copyright © 2015年 ICU. All rights reserved.
//

import UIKit

class TreePageViewController: UIViewController {

    @IBOutlet weak var abouttxt: UITextView!
    
    @IBAction func changeLang(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            abouttxt.text = "The ancient times were full of wars. The old Romans used geometric formations made of soldiers when they went to fight. One of the common soldier formations was a simple circle. The soldier Josephus made the following observation: when his formation was fighting with the enemy, every ninth soldier in the circle (starting from the head position number 1) was going to be killed. It was a good question that time to ask who was going to be the last one to survive (or what position you had better take). You can see it at the picture below that the soldier number 21 was going to die the last.\n Given a circular formation of n soldiers where every m-th soldier is to be killed, find out who will be the last to survive. "
            
        case 1:
            abouttxt.text = "古代ではたくさんの戦争がありました。古代ローマ人は戦闘において兵士を幾何学的に配置しました。よく用いられた陣形に単純な円があります。一兵士であるJosephusは、「敵と交戦したときに、陣形の中心である１の兵士から数えて、9人毎に倒されている。」という観察結果を得ました。だとすると、 「最後まで生き残るのは誰か？」あるいは一兵士として「どの位置にいることがよいか」ということが重要な問題になります。\n下の図からこの場合、21番の兵士が最後まで 生き残ることがわかります。\n n人の兵士の円形の陣形でm人毎に倒されるとして、最後まで生き残る兵士を求めてください"
            
        default:
            abouttxt.text = "The ancient times were full of wars. The old Romans used geometric formations made of soldiers when they went to fight. One of the common soldier formations was a simple circle. The soldier Josephus made the following observation: when his formation was fighting with the enemy, every ninth soldier in the circle (starting from the head position number 1) was going to be killed. It was a good question that time to ask who was going to be the last one to survive (or what position you had better take). You can see it at the picture below that the soldier number 21 was going to die the last.\n Given a circular formation of n soldiers where every m-th soldier is to be killed, find out who will be the last to survive. "
            
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
