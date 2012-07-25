//
//  DetailViewController.m
//  Week3
//
//  Created by Annis Dan on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"
#import "mapAnnotations.h"
#import "ViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize nameLabel;
@synthesize nameName;
@synthesize latlonLabel;
@synthesize latlonName;
@synthesize stateLabel;
@synthesize stateName;
@synthesize coord;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad


{
     ////////////////////////////////////////////////////////////////////////////////////   
    //////CANNOT ACCESS MY PLIST ARRAY TO DYNAMICALLY LOAD MY MAPS INTO MY DETAIL VIEW///
    /////////////////////////////////////////////////////////////////////////////////////
    
    NSString *myListPath = [[NSBundle mainBundle] pathForResource:@"m" ofType:@"plist"];
    myPList = [[NSMutableArray alloc] initWithContentsOfFile:myListPath];
    NSLog(@"%@",myPList);

    nameLabel.text = nameName;
    latlonLabel.text = latlonName;
    stateLabel.text = stateName;
    
    //::::DEFAULT ZOOM LEVEL::::
    MKCoordinateSpan span;
    span.latitudeDelta = 2.0f; //::::UNITS ACROSS::::
    span.longitudeDelta = 2.0f; //::::UNITS DOWN::::
    
    CLLocationCoordinate2D location;
    location.latitude = 39.103118f;
    location.longitude = -84.51202000000001f;
    
    MKCoordinateRegion region;
    region.center = coord ;
    region.span = span;
    mapView.region = region;
    
    CLLocationCoordinate2D coord;
    coord.latitude = 39.103118f;
    coord.longitude=-84.51202000000001f;
    
    mapAnnotations *annotation = [[mapAnnotations alloc] initWithTitle:@"" coord:coord];
    
    if(annotation != nil)
    {
        [mapView addAnnotation:annotation]; 
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (MKAnnotationView*)mapView: (MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *annView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomPin"];
    
    annView.animatesDrop = TRUE;
    annView.canShowCallout = TRUE;
    annView.calloutOffset = CGPointMake(-5, 5);
    return annView;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
