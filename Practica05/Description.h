//
//  Description.h
//  Practica03
//
//  Created by Christian Barragan on 26/06/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "GMapLocation.h"

@interface Description : UIViewController

@property NSInteger MunicIndex;
@property NSInteger StateIndex;

@property (strong, nonatomic) IBOutlet UIImageView *imgDesc;
@property (strong, nonatomic) IBOutlet UILabel *lblDescTitle;
@property (strong, nonatomic) IBOutlet UILabel *lblDesc;

@end
