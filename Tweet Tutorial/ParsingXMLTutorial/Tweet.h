//
//  Tweet.h
//  ParsingXMLTutorial
//
//  Created by kent franks on 3/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tweet : NSObject

@property (strong, nonatomic)NSString *content;
@property (strong, nonatomic)NSString *dateCreated;
@property (strong, nonatomic)NSString *img;
@property (strong, nonatomic)NSString *city;
@property (strong, nonatomic)NSString *full;
@end
