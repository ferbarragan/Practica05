//
//  GMapLocationViewController.h
//  Practica04
//
//  Created by Christian Barragan on 03/07/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
@import GoogleMaps;

@interface GMapLocation : UIViewController

@property CLLocationDegrees Glatitude;
@property CLLocationDegrees Glongitude;
@property float Gzoom;
@property Boolean bSetStatePins;
@property NSInteger StateIndex;

@end
