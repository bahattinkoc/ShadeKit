# ShadeKit

![SwiftUI](https://img.shields.io/badge/-SwiftUI-blue)
[![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-Compatible-orange.svg)](#installation)
[![iOS 13+](https://img.shields.io/badge/iOS-13%2B-blue.svg)](#)
[![License](https://img.shields.io/badge/License-MIT-lightgrey.svg)](#license)

A lightweight Swift framework that brings **solid shadows** and **3D-press animations** to SwiftUI via the **Western Effect Modifier**. Instead of standard blurred shadows, ShadeKit provides a crisp, solid “drop shadow” shape that lives behind your content—creating a unique “cut-out” look.

---

## Screenshots

<div align="center">
  <img src="https://github.com/bahattinkoc/ShadeKit/blob/main/Assets/video.gif" alt="Screenshot" width="200">
</div>

---

## Features

- **Western Effect Modifier**:  
  Adds a second shape behind your content as a “solid shadow” and animates your view toward it when tapped/pressed.

- **Customizable Positions**:  
  `ShadowPosition` supports top, bottom, left, right, corners, or a custom offset.

- **Shapes & Corners**:  
  Use built-in shapes like `Circle`, `RoundedRectangle`, `Rectangle`, or your own custom `Shape`.

- **Tap Interactivity**:  
  Enable or disable the press gesture via `isTappable`.

- **Minimal API**:  
  Just one modifier to add to any SwiftUI `View`.

---

## Installation

ShadeKit is distributed via **Swift Package Manager** (SPM).

1. **Xcode (recommended)**  
   - Go to `File > Add Packages...`  
   - Enter the URL:  
     ```
     https://github.com/bahattinkoc/ShadeKit.git
     ```
   - Choose your target and add the package.

2. **Enjoy! :)**
