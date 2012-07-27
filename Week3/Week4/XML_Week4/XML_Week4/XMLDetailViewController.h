//
//  XMLDetailViewController.h
//  XML_Week4
//
//  Created by Annis Dan on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XMLDetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *XMLLabel;
@property (nonatomic, strong) NSString *XMLName;
@property (nonatomic, strong) IBOutlet UILabel *XMLCityLabel;
@property (nonatomic, strong) NSString *CityName;
@property (nonatomic, strong) IBOutlet UILabel *XMLStateLabel;
@property (nonatomic, strong) NSString *StateName;
@property (nonatomic, strong) IBOutlet UILabel *XMLInfoLabel;
@property (nonatomic, strong) NSString *InfoName;
@property (nonatomic, strong) IBOutlet UILabel *DetailLabel;
@property (nonatomic, strong) NSString *DetailName;

@end
