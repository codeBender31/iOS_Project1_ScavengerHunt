//
//  Task.swift
//  Scavenger_Hunt
//
//  Created by Bender on 2/29/24.
//
import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Find the WaterFall",
                 description: ""),
            Task(title: "Find the Tulips ",
                 description: ""),
            Task(title: "Find the other waterfalls",
                 description: "This is a test")
        ]
    }
}
