//
//  AboutViewController.m
//  Week3
//
//  Created by Annis Dan on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AboutViewController.h"
#import "mapAnnotations.h"

@interface AboutViewController ()

@end

@implementation AboutViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{    //::::DEFAULT ZOOM LEVEL::::
    MKCoordinateSpan span;
    span.latitudeDelta = 40.0f; //::::UNITS ACROSS::::
    span.longitudeDelta = 40.0f; //::::UNITS DOWN::::
    
    CLLocationCoordinate2D location;
    location.latitude = 40.0f;
    location.longitude = -98.0f;
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    mapView.region = region;
    
    
    //***NOT HAPPY WITH THIS ONE -- I NEED TO PULL FROM THE PLIST!!!! ****///
    CLLocationCoordinate2D Aliendro;
    Aliendro.latitude = 36.09986;
    Aliendro.longitude=80.24421599999999;
    mapAnnotations *annotation = [[mapAnnotations alloc] initWithTitle:@"Danielle Aliendro" coord:Aliendro];
    
    CLLocationCoordinate2D Annis;
    Annis.latitude = 39.103118;
    Annis.longitude= -84.51202000000001;
    mapAnnotations *annotation2 = [[mapAnnotations alloc] initWithTitle:@"Dan Annis" coord:Annis];
    
    CLLocationCoordinate2D Buth;
    Buth.latitude = 33.435598;
    Buth.longitude=-112.349602;
    mapAnnotations *annotation3 = [[mapAnnotations alloc] initWithTitle:@"Nathan Buth" coord:Buth];
    
    CLLocationCoordinate2D Clark;
    Clark.latitude = 38.982228;
    Clark.longitude= -94.67079200000001;
    mapAnnotations *annotation4 = [[mapAnnotations alloc] initWithTitle:@"Darius Clark" coord:Clark];
    
    CLLocationCoordinate2D Cote;
    Cote.latitude = 39.961176;
    Cote.longitude= -82.998794;
    mapAnnotations *annotation5 = [[mapAnnotations alloc] initWithTitle:@"Shanna Cote" coord:Cote];
    
    CLLocationCoordinate2D Evans;
    Evans.latitude = 39.290385;
    Evans.longitude= -76.612189;
    mapAnnotations *annotation6 = [[mapAnnotations alloc] initWithTitle:@"Mark Evans" coord:Evans];
    
    CLLocationCoordinate2D Faerman;
    Faerman.latitude = 44.058173;
    Faerman.longitude=-80.233104;
    mapAnnotations *annotation7 = [[mapAnnotations alloc] initWithTitle:@"Ryan Faerman" coord:Faerman];
    
    CLLocationCoordinate2D Fox;
    Fox.latitude = 33.95;
    Fox.longitude=-83.38333299999999;
    mapAnnotations *annotation8 = [[mapAnnotations alloc] initWithTitle:@"Jeremy Fox" coord:Fox];
    
    CLLocationCoordinate2D Johnson;
    Johnson.latitude = 41.158611;
    Johnson.longitude=-95.934167;
    mapAnnotations *annotation9 = [[mapAnnotations alloc] initWithTitle:@"Jen Johnson" coord:Johnson];
    
    CLLocationCoordinate2D Cumberworth;
    Cumberworth.latitude = 32.221743;
    Cumberworth.longitude=-110.926479;
    mapAnnotations *annotation10 = [[mapAnnotations alloc] initWithTitle:@"Mike Cumberworth" coord:Cumberworth];
    
    CLLocationCoordinate2D Kaminer;
    Kaminer.latitude = 34.00071;
    Kaminer.longitude=-81.034814;
    mapAnnotations *annotation11 = [[mapAnnotations alloc] initWithTitle:@"Wes Kaminer" coord:Kaminer];
    
    CLLocationCoordinate2D Klusman;
    Klusman.latitude = 47.381802;
    Klusman.longitude=-122.829803;
    mapAnnotations *annotation12 = [[mapAnnotations alloc] initWithTitle:@"Shae Klusman" coord:Klusman];
    
    CLLocationCoordinate2D Malone;
    Malone.latitude = 43.455346;
    Malone.longitude=-76.510497;
    mapAnnotations *annotation13 = [[mapAnnotations alloc] initWithTitle:@"Joe Malone" coord:Malone];
    
    CLLocationCoordinate2D Martinez;
    Martinez.latitude = 33.93807;
    Martinez.longitude=-118.352575;
    mapAnnotations *annotation14 = [[mapAnnotations alloc] initWithTitle:@"Andres Martinez" coord:Martinez];
    
    CLLocationCoordinate2D McDonald;
    McDonald.latitude = 45.523452;
    McDonald.longitude=-122.676207;
    mapAnnotations *annotation15 = [[mapAnnotations alloc] initWithTitle:@"Crystal McDonald" coord:McDonald];
    
    CLLocationCoordinate2D Peters;
    Peters.latitude = 45.021276;
    Peters.longitude=-74.730345;
    mapAnnotations *annotation16 = [[mapAnnotations alloc] initWithTitle:@"Monica Peters" coord:Peters];
    
    CLLocationCoordinate2D Ray;
    Ray.latitude = 36.99764;
    Ray.longitude=-79.891977;
    mapAnnotations *annotation17 = [[mapAnnotations alloc] initWithTitle:@"Meisha Ray" coord:Ray];
    
    CLLocationCoordinate2D Salisbury;
    Salisbury.latitude = 43.786736;
    Salisbury.longitude=-75.49185;
    mapAnnotations *annotation18 = [[mapAnnotations alloc] initWithTitle:@"Janelle Salisbury" coord:Salisbury];
    
    CLLocationCoordinate2D williamsLocation;
    williamsLocation.latitude = 44.058173;
    williamsLocation.longitude=-121.31531;
    mapAnnotations *annotation19 = [[mapAnnotations alloc] initWithTitle:@"Fred Williams" coord:williamsLocation];
    
    MapAnnotations = [[NSArray alloc] initWithObjects:
                        annotation,
                        annotation2,
                        annotation3,
                        annotation4,
                        annotation5,
                        annotation6,
                        annotation7,
                        annotation8,
                        annotation9,
                        annotation10,
                      annotation11,
                      annotation12,
                      annotation13,
                      annotation14,
                      annotation15,
                      annotation16,
                      annotation17,
                      annotation18,
                      annotation19,
                      
                        nil];
    if(MapAnnotations !=nil)
    {
        [mapView addAnnotations:MapAnnotations];
    }
    
    
     [super viewDidLoad];
	// Do any additional setup after loading the view.
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
