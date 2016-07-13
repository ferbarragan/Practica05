//
//  Login.m
//  Practica05
//
//  Created by Christian Barragan on 11/07/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import "Login.h"
#import <DigitsKit/DigitsKit.h>

@interface Login ()

@property DGTSession *currSession;
@property Boolean isUserLogged;

@end

@implementation Login

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loginProcedure];
    // Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated {
    
}

- (void)loginProcedure {
    /* Try to login, if the user is already logged in, then just show the 'Comenzar' button.
     * else, do the login flow.
     */
    [[Digits sharedInstance] authenticateWithCompletion:^(DGTSession *session, NSError *error) {
        if (session.userID)
        {
            self.currSession = session;
            
            if (self.currSession.userID) {
                self.isUserLogged = YES;
                // TODO: associate the session userID with your user model
                NSString *msg = [NSString stringWithFormat:@"Phone number: %@", self.currSession.phoneNumber];
                
                /* Show a PopUp message. */
                UIAlertController * alert=   [UIAlertController
                                              alertControllerWithTitle:@"Haz ingresado"
                                              message:msg
                                              preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction * ok = [UIAlertAction
                                      actionWithTitle:@"OK"
                                      style:UIAlertActionStyleDefault
                                      handler:^(UIAlertAction * action)
                                      {
                                          [alert dismissViewControllerAnimated:YES completion:nil];
                                          
                                      }];
                [alert addAction:ok];
                [self presentViewController:alert animated:YES completion:nil];
                
                /* Put Logout button into user's view. */
                //[_btnLogout setHidden:NO];
                self.btnLogout.hidden = NO;
                /* Change the text of the first button to 'Comenzar' */
                [_btnLogin setTitle:@"Comenzar" forState:UIControlStateNormal];
                
            } else {
                self.isUserLogged = NO;
                self.btnLogout.hidden = YES;
                /* Change the text of the first button to 'Login' */
                [_btnLogin setTitle:@"Login" forState:UIControlStateNormal];
            }
        }
        else if (error)
        {
            NSLog(@"Authentication error: %@", error.localizedDescription);
        }
        
    }];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button methods.
- (IBAction)btnLoginPressed:(UIButton *)sender {
    if (self.isUserLogged)
    {
        /* Go to the Home Screem. */
        [self performSegueWithIdentifier: @"LoginToHome" sender: self];
    }
    else
    {
        [self loginProcedure];
    }
}

- (IBAction)btnLogoutPressed:(UIButton *)sender {
    self.isUserLogged = NO;
    /* Call Twitter API method to logout. */
    [[Digits sharedInstance] logOut];
    
    /* Show a PopUp message. */
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:@"Info"
                                  message:@"Usuario desconectado exitosamente."
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction * ok = [UIAlertAction
                         actionWithTitle:@"OK"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             [alert dismissViewControllerAnimated:YES completion:nil];
                             
                         }];
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
    
    /* Remove Logout button from user's view. */
    self.btnLogout.hidden = YES;
    
    /* Change the text of the first button from 'Comenzar' to 'Login' */
    [_btnLogin setTitle:@"Login" forState:UIControlStateNormal];
    
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
@end
