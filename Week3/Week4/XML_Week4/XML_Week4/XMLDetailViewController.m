//
//  XMLDetailViewController.m
//  XML_Week4
//
//  Created by Annis Dan on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "XMLDetailViewController.h"
#import "ViewController.h"
#import "XMLParser.h"
#import "Objects.h"
#import "XMLWebViewController.h"

@interface XMLDetailViewController ()
@end

@implementation XMLDetailViewController
@synthesize XMLName;
@synthesize XMLLabel;
@synthesize XMLCityLabel;
@synthesize XMLInfoLabel;  
@synthesize XMLStateLabel;
@synthesize InfoName;
@synthesize StateName;
@synthesize CityName;
@synthesize DetailLabel;
@synthesize DetailName;



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
   
    XMLLabel.text = XMLName;
    XMLCityLabel.text = CityName;
    XMLStateLabel.text= StateName;
    XMLInfoLabel.text= InfoName;
    DetailLabel.text = DetailName;
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
