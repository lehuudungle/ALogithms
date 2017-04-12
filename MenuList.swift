//
//  MenuList.swift
//  Algorithms
//
//  Created by TTung on 3/28/17.
//  Copyright © 2017 LocTran. All rights reserved.
//

import Foundation
import UIKit

struct Menu {
    var title: String
    var viewClass: String
    var inputClass: UIViewController
};

struct MenuSection {
    var section: String
    var menus: [Menu]
}

class MenuList: NSObject {
    
    var menu : [MenuSection]!
    class func boot(window:UIWindow){
        let basic = MenuSection(section: "Sort", menus:[
            Menu(title: "Bubble Sort", viewClass: "BubbleSortSVC",inputClass: SelectionSortIVC() ),
            Menu(title: "Selection Sort", viewClass: "SelectionSortSVC",inputClass: SelectionSortIVC()),
            Menu(title: "Insertion Sort", viewClass: "InsertionSortSVC",inputClass: SelectionSortIVC()),

            Menu(title: "Merge Sort", viewClass: "MergeSortSVC",inputClass: SelectionSortIVC()),
            Menu(title: "Quick Sort", viewClass: "QuickSortSVC",inputClass: SelectionSortIVC()),
            Menu(title: "Heap Sort", viewClass: "HeapSortSVC",inputClass: SelectionSortIVC())

            ])

//        let inter = MenuSection(section: "inter", menus:[
//            Menu(title: "Rock", viewClass: "ClassVC"),
//            Menu(title: "Home", viewClass: "ClassVC")
//            ])
//        
//        let advance = MenuSection(section: "advance", menus:[
//            Menu(title: "Rock", viewClass: "ClassVC"),
//            Menu(title: "Home", viewClass: "ClassVC")
//            ])

        let mainScreen = MainScreen(style: UITableViewStyle.grouped)
        mainScreen.menu = [basic]
        mainScreen.title = "Algorithms"
        mainScreen.about = "KLTD Team"
        
        let nav = UINavigationController(rootViewController: mainScreen)
        
        window.rootViewController = nav
        
    }
}
