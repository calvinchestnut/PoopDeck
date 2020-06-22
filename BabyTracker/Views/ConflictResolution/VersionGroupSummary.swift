//
//  FileVersionGroupSummary.swift
//  BabyTracker
//
//  Created by Calvin Chestnut on 6/21/20.
//  Copyright © 2020 Calvin Chestnut. All rights reserved.
//

import SwiftUI

struct FileVersionGroupSummary: View {
    var name: String
    var versions: [NSFileVersion]
    var onSelect: ((NSFileVersion) -> Void)?
    var body: some View {
        NavigationLink(destination: VersionList(versions: versions, onSelect: onSelect)) {
            HStack {
                Text(name)
                    .bold()
                Spacer()
                Text("\(versions.count) versions")
            }
        }
    }
}

/// Not sure how to best show a preview using stubb NSFileVersions. May want to accept strings or some view model
