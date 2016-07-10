//
//  GMapLocationViewController.m
//  Practica04
//
//  Created by Christian Barragan on 03/07/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import "GMapLocation.h"

@interface GMapLocation ()

@end

@implementation GMapLocation {
    GMSMapView *mapView_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createGMap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) createGMap {
    
    /* Create a GMSCameraPosition that tells the map to display the
     * desired coordinates.
     */
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:_Glatitude
                                                            longitude:_Glongitude
                                                                 zoom:_Gzoom];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    if (_bSetStatePins) /* We will put the municipalities pins into the state. */
    {
        /* Put the each municipality marker in the state */
        
        int i;
        for (i = 0; i < MAX_MUNIC; i++)
        {
            /* Creates a marker on the map. */
            GMSMarker *marker = [[GMSMarker alloc] init];
            marker.position = CLLocationCoordinate2DMake(stStates[self.StateIndex].stMunicipalities[i].latitude,
                                                         stStates[self.StateIndex].stMunicipalities[i].longitude);
            marker.title = [NSString stringWithUTF8String:stStates[self.StateIndex].stMunicipalities[i].Name];
            //marker.snippet = @"";
            marker.map = mapView_;
        }
    }
    else /* We will center the map in the selected municipality. */
    {
        /* Nothing to do... */
    }
}

@end
