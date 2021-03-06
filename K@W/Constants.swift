//
//  Constants.swift
//  KnowledgeATWharton
//
//  Created by Vishal Bharam on 2/10/16.
//  Copyright © 2016 DevJiva-KrishnaVeni. All rights reserved.
//

import Foundation
import UIKit


let SHADOW_COLOR: CGFloat = 157.0 / 255.0


// Screen
let SCREEN_WIDTH: CGFloat = UIScreen.mainScreen().bounds.size.width
let MAX_SCREEN_WIDTH: CGFloat = 414.0
let SCREEN_HEIGHT: CGFloat = UIScreen.mainScreen().bounds.size.height

let SCREEN_WIDTH_MULTIPLIER: CGFloat = MAX_SCREEN_WIDTH / SCREEN_WIDTH


let IMAGE_ASPECT_RATIO: CGFloat = 15/8

// Image View HEIGHT & WIDTH adjustment:
let IMAGEVIEW_FIXED_WIDTH: CGFloat = 300
let SCREEN_MARGIN: CGFloat = 20.0
let IMAGEVIEW_ADJUSTED_WIDTH: CGFloat = SCREEN_WIDTH - SCREEN_MARGIN

let HEIGHT_MULTIPLIER: CGFloat = (IMAGEVIEW_ADJUSTED_WIDTH / IMAGEVIEW_FIXED_WIDTH)

let IMAGEVIEW_FIXED_HEIGHT: CGFloat = 160.0
let IMAGEVIEW_ADJUSTED_HEIGHT: CGFloat = IMAGEVIEW_FIXED_HEIGHT * HEIGHT_MULTIPLIER
let IMAGEVIEW_HEIGHT_CHANGE : CGFloat = IMAGEVIEW_ADJUSTED_HEIGHT - IMAGEVIEW_FIXED_HEIGHT

let IMAGEVIEW_Y_ORIGIN: CGFloat = (SCREEN_MARGIN) * HEIGHT_MULTIPLIER

// Table View:
let TABLECELL_FIXED_HEIGHT: CGFloat = 285.0

let TABLECELL_ADJUSTED_HEIGHT :CGFloat = SCREEN_WIDTH / 2.5 / IMAGE_ASPECT_RATIO

let CAROUSELCELL_ADJUSTED_HEIGHT :CGFloat = SCREEN_WIDTH / IMAGE_ASPECT_RATIO



// All Full View HEIGHT adjustments:
let IMAGEVIEW_TOP_MARGIN: CGFloat = (SCREEN_MARGIN - 5)/HEIGHT_MULTIPLIER
let CONTENTVIEW_ADJUSTED_HEIGHT : CGFloat = TABLECELL_ADJUSTED_HEIGHT + IMAGEVIEW_TOP_MARGIN

