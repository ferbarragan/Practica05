//
//  Municipios.m
//  Practica03
//
//  Created by Christian Barragan on 26/06/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import "Municipios.h"

@interface Municipios ()

@property NSInteger MunicIndex;

@end

@implementation Municipios

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
    
}

/**********************************************************************************************/
#pragma mark - Table methods and delegates
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
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
    cell.lblTitle.text = [NSString stringWithUTF8String:stStates[self.StateIndex].stMunicipalities[indexPath.row].Name];
    cell.lblDesc.text = [NSString stringWithUTF8String:stStates[self.StateIndex].stMunicipalities[indexPath.row].DescPrev];
    cell.imgCell.image = [UIImage imageNamed:[NSString stringWithUTF8String:stStates[self.StateIndex].stMunicipalities[indexPath.row].imgPath]];
    
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.MunicIndex = indexPath.row;
    [self performSegueWithIdentifier:@"MunicDetails" sender:self];
}

/**********************************************************************************************/
#pragma mark - Segue methods
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[Description class]])
    {
        Description *descObj = [segue destinationViewController];
        descObj.MunicIndex = self.MunicIndex;
        descObj.StateIndex = self.StateIndex;
    }
    else if ([segue.destinationViewController isKindOfClass:[GMapLocation class]])
    {
        GMapLocation *gmapObj = [segue destinationViewController];
        gmapObj.Glatitude = (CLLocationDegrees)(stStates[self.StateIndex].latitude);
        gmapObj.Glongitude = (CLLocationDegrees)(stStates[self.StateIndex].longitude);
        gmapObj.Gzoom = (CLLocationDegrees)(stStates[self.StateIndex].zoom);
        gmapObj.bSetStatePins = YES;
        gmapObj.StateIndex = self.StateIndex;
    }
    else
    {
        /* Do nothing... */
    }
}

@end
