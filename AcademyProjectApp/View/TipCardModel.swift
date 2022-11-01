//
//  TipCardModel.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 25/10/22.
//

import Foundation

class TipCardModel : ObservableObject {
    @Published var savedTips : [Tip] = []
    
    init(){
        self.savedTips = User.instance.savedTips
    }
    
    func insert(savedTip: Tip){
        self.savedTips.append(savedTip)
    }
    
    func remove(savedTip: Tip){
        self.savedTips.removeAll(where: {$0 == savedTip})
    }
    
}
