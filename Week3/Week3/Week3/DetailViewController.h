//
//  DetailViewController.h
//  Week3
//
//  Created by Annis Dan on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/Mapkit.h>


@interface DetailViewController : UIViewController
{
    IBOutlet MKMapView *mapView; 
    NSMutableArray *myPList; 
;

}
@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) NSString *nameName;
@property (nonatomic, strong) IBOutlet UILabel *latlonLabel;
@property (nonatomic, strong) NSString *latlonName;
@property (nonatomic, strong) IBOutlet UILabel *stateLabel;
@property (nonatomic, strong) NSString *stateName;

;

@end
