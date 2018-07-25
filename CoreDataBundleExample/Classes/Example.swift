//
//  Example.swift
//  CoreDataBundleExample
//
//  Created by Gabrielle Earnshaw on 25/07/2018.
//

import Foundation
import MagicalRecord

class Example {
    func initCoreData() {
        guard
            let bundleURL = Bundle(for: Example.self)
                .url(forResource: "CoreDataBundleExample",
                     withExtension: "bundle"),
            let frameworkBundle = Bundle(url: bundleURL)
            else {
                // Error getting bundle URL"
                return
        }

        let model = NSManagedObjectModel.mergedModel(from: [frameworkBundle])
        NSManagedObjectModel.mr_setDefaultManagedObjectModel(model)
        MagicalRecord.setShouldAutoCreateManagedObjectModel(false)
        MagicalRecord.setupCoreDataStack(withAutoMigratingSqliteStoreNamed: storeName)
    }
}
