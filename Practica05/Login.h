//
//  Login.h
//  Practica05
//
//  Created by Christian Barragan on 11/07/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Login : UIViewController

- (IBAction)btnLoginPressed:(UIButton *)sender;
- (IBAction)btnLogoutPressed:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIButton *btnLogin;
@property (strong, nonatomic) IBOutlet UIButton *btnLogout;

@end
