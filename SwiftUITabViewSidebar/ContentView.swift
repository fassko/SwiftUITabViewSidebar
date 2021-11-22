//
//  ContentView.swift
//  SwiftUITabViewSidebar
//
//  Created by Kristaps Grinbergs on 21/11/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    if UIDevice.isIpad {
      sidebar
    } else {
      tabview
    }
  }
  
  private var sidebar: some View {
    NavigationView {
      List {
        NavigationLink(destination: DashboardView()) {
          Label("Dashboard", systemImage: "square.dashed")
        }
        
        NavigationLink(destination: SettingsView()) {
          Label("Settings", systemImage: "gear")
        }
        
        NavigationLink(destination: AboutView()) {
          Label("About", systemImage: "info")
        }
      }
      
      DashboardView()
    }
  }
  
  private var tabview: some View {
    TabView {
      DashboardView()
        .tabItem {
          Label("Dashboard", systemImage: "square.dashed")
        }
      
      SettingsView()
        .tabItem {
          Label("Settings", systemImage: "gear")
        }
      
      AboutView()
        .tabItem {
          Label("About", systemImage: "info")
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView()
        .previewDevice("iPhone 13 Pro")
      
      ContentView()
        .previewInterfaceOrientation(.landscapeRight)
        .previewDevice("iPad Air (4th generation)")
    }
  }
}
