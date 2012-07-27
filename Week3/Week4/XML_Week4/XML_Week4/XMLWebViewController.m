//
//  XMLWebViewController.m
//  XML_Week4
//
//  Created by Annis Dan on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "XMLWebViewController.h"
#import "ViewController.h"
#import "XMLParser.h"
#import "Objects.h"
#import "XMLDetailViewController.h"

@interface XMLWebViewController ()

@end

@implementation XMLWebViewController

@synthesize webView;


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
    [super viewDidLoad];
    // Add code to load web content in UIWebView
    NSURL *url =[NSURL URLWithString:@"http://dinkydetails.com/mdf/m.xml"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
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
