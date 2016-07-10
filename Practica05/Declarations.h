//
//  Declarations.h
//  Practica03
//
//  Created by Christian Barragan on 26/06/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import <Foundation/Foundation.h>
@import GoogleMaps;

@interface Declarations : NSObject

#define MAX_STATES (5)
#define MAX_MUNIC  (5)

typedef struct{
    char * Name;
    char * DescPrev;
    char * DescFull;
    char *imgPath;
    /* For Google Maps integration */
    CLLocationDegrees latitude;
    CLLocationDegrees longitude;
    float zoom;
}tst_Municipality;

typedef struct{
    char * Name;
    char * Desc;
    char * imgPath;
    tst_Municipality stMunicipalities[MAX_MUNIC];
    /* For Google Maps integration */
    CLLocationDegrees latitude;
    CLLocationDegrees longitude;
    float zoom;
}tst_State;

extern tst_State stStates[MAX_STATES];

@end
