//
//  ViewController.m
//  Practica03
//
//  Created by Christian Barragan on 25/06/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import "Home.h"
#import <Google/Analytics.h>

@interface Home ()

@property NSInteger StateIndex;

@end

@implementation Home

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    self.StateIndex = 0;

}

- (void) viewWillAppear:(BOOL)animated {
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:@"Home"];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
}

/**********************************************************************************************/
#pragma mark - Table methods and delegates
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return MAX_STATES;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 190;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellHome *cell = (cellHome *)[tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellHome" bundle:nil] forCellReuseIdentifier:@"cellHome"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    }
    
    /* Fill cell with info from arrays */
    cell.lblTitle.text = [NSString stringWithUTF8String:stStates[indexPath.row].Name];
    cell.lblDesc.text = [NSString stringWithUTF8String:stStates[indexPath.row].Desc];
    cell.imgCell.image = [UIImage imageNamed:[NSString stringWithUTF8String:stStates[indexPath.row].imgPath]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.StateIndex = indexPath.row;
    [self performSegueWithIdentifier:@"StateToMunic" sender:self];
}

/**********************************************************************************************/
#pragma mark - Segue methods
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[Municipios class]])
    {
        Municipios *municObj = [segue destinationViewController];
        municObj.StateIndex = self.StateIndex;
    }
}

@end
