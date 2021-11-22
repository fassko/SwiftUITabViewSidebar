//
//  MultipleTabsView.swift
//  SwiftUITabViewSidebar
//
//  Created by Kristaps Grinbergs on 22/11/2021.
//

import SwiftUI

struct MultipleTabsView: View {
  var body: some View {
    TabView {
      DashboardView()
        .tabItem {
          Label("Dashboard", systemImage: "square.dashed")
        }
      
      SettingsView()
        .tabItem {
          Label("Settings", systemImage: "gear")
        }
      
      Text("List")
        .tabItem {
          Label("List", systemImage: "list.dash")
        }
      
      Text("Documents")
        .tabItem {
          Label("Documents", systemImage: "icloud.fill")
        }
      
      Text("About")
        .tabItem {
          Label("About", systemImage: "info")
        }
      
      Text("History")
        .tabItem {
          Label("History", systemImage: "clock.fill")
        }
    }
  }
}

struct MultipleTabsView_Previews: PreviewProvider {
  static var previews: some View {
    MultipleTabsView()
  }
}
