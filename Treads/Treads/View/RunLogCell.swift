//
//  RunLogCell.swift
//  Treads
//
//  Created by Ahmad Fatayri on 3/26/19.
//  Copyright © 2019 Ahmad Fatayri. All rights reserved.
//

import UIKit

class RunLogCell: UITableViewCell {

    @IBOutlet weak var runDurationLbl: UILabel!
    @IBOutlet weak var totalDistanceLbl: UILabel!
    @IBOutlet weak var averagePaceLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(run: Run) {
        runDurationLbl.text = run.duration.formateTimeDurationToString()
        totalDistanceLbl.text = "\(run.distance.metersToMiles(places: 2)) mi"
        averagePaceLbl.text = run.pace.formateTimeDurationToString()
        dateLbl.text = run.date.getDateString()
    }
    
}
