//
//  AboutViewController.h
//  Week3
//
//  Created by Annis Dan on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/Mapkit.h>

@interface AboutViewController : UIViewController
{
    IBOutlet MKMapView *mapView;
    NSArray *MapAnnotations;
}


@end
