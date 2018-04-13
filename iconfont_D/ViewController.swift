//
//  ViewController.swift
//  iconfont_D
//
//  Created by idea on 2018/4/13.
//  Copyright © 2018年 idea. All rights reserved.
//

import UIKit
import Cupcake

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let  lab = UILabel()
        lab.font =  UIFont.init(name: "iconFont", size: 20)
        lab.numberOfLines = 2
        lab.text = "\u{e609}体在网页始的应页始的应\u{e612}页始的应页始的应用"
        self.view.addSubview(lab)
        lab.makeCons { (make) in
            make.left.equal(50)
            make.right.equal(-50)
            make.top.equal(50)
        }
        var att = AttStr("\u{e728}体在网\u{e715}页始的应页始的应\u{e638}页始的应页始的应用\u{e716}页始的应页始的应用\u{e61b}页始的应页始的应用").font(15).color("#3A3A3A")
        att.select("\u{e728}").color("red").font("iconFont,20")
            .select("\u{e715}").color("darkGray").font("iconFont,15")
            .select("\u{e638}").color("cyan").font("iconFont,20")
            .select("\u{e716}").color("green").font("iconFont,18")
            .select("\u{e61b}").color("purple").font("iconFont,18")
            .select(.range(8, 2)).underline()
        Label.str(att)
            .lines(0)
            .addTo(view)
            .pin(.xy(50,180))
            .makeCons { (make) in
                make.right.equal(view).offset(-50)
        }
        att = AttStr("Created \u{e631}by idea\u{e62c} on 2018/4/13.").font(15)
            
        att.select(.number).color("cyan")
        .select("idea").underline()
        .select("\u{e631}").color("red").font("iconFont,20")
        .select("\u{e62c}").color("purple").font("iconFont,25")
        
        Label.str(att)
        .lines(0)
        .addTo(view)
            .makeCons { (make) in
                make.left.right.equal(50,-50)
                make.top.equal(260)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


