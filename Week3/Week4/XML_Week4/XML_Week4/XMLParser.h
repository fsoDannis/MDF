//
//  XMLParser.h
//  XML_Week4
//
//  Created by Annis Dan on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Objects.h"

@interface XMLParser : NSObject  <NSXMLParserDelegate>

@property (strong, readonly) NSMutableArray *myData;

-(id) loadXMLByURL:(NSString *)urlString;

@end
