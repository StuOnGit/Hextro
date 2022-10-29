//
//  TipCardModel.swift
//  AcademyProjectApp
//
//  Created by Francesco De Stasio on 25/10/22.
//

import Foundation

class TipCardModel : ObservableObject {
    @Published var tips = User.instance.savedTips
}
