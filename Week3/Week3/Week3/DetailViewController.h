//
//  DetailViewController.h
//  Week3
//
//  Created by Annis Dan on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/Mapkit.h>


@interface DetailViewController : UIViewController <MKMapViewDelegate>
{
    IBOutlet MKMapView *mapView; 
    NSMutableArray *myPList; 
;

}
@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, retain) NSString *nameName;
@property (nonatomic, strong) IBOutlet UILabel *latlonLabel;
@property (nonatomic, retain) NSString *latlonName;
@property (nonatomic, strong) IBOutlet UILabel *stateLabel;
@property (nonatomic, retain) NSString *stateName;
@property (nonatomic, readwrite) CLLocationCoordinate2D coord;

;

@end
