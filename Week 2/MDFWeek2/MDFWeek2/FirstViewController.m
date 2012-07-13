
//  MDFWeek2
//
//  Created by Annis Dan on 7/10/12.

//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import"infoScreenController.h"
#import "detailViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"goFast Racing", @"goFast Racing");
        self.tabBarItem.image = [UIImage imageNamed:@"home"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}


// Load my second page using a NavPUSH and Controller
- (IBAction)onClick:(id)sender
{
    infoScreenController *pushInfoScreen = [[infoScreenController alloc] initWithNibName:@"infoScreenController" bundle:nil];

    if (pushInfoScreen != nil)
    {
        [self.navigationController pushViewController:pushInfoScreen  animated:TRUE];
    }
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
