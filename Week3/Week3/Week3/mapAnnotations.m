//
//  mapAnnotations.m
//  Week3
//
//  Created by Annis Dan on 7/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "mapAnnotations.h"

@implementation mapAnnotations
@synthesize title, coordinate;

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord;
{
    if((self = [super init]))
    {
        title = text;
        coordinate = coord;
    }
    return self;
}
@end
