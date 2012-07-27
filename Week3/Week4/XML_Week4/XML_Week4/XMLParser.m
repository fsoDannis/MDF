//
//  XMLParser.m
//  XML_Week4
//
//  Created by Annis Dan on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XMLParser.h"
#import "ViewController.h"
#import "Objects.h"
#import "XMLDetailViewController.h"
#import "XMLWebViewController.h"
@implementation XMLParser 
@synthesize myData = _myData;


NSMutableString	*currentNodeContent;
NSXMLParser		*parser;
Objects			*currentObjects;
bool            isStatus;

-(id) loadXMLByURL:(NSString *)urlString
{
	_myData		= [[NSMutableArray alloc] init];
	NSURL *url		= [NSURL URLWithString:urlString];
	NSData	*data   = [[NSData alloc] initWithContentsOfURL:url];
	parser			= [[NSXMLParser alloc] initWithData:data];
	parser.delegate = self;
	[parser parse];
	return self;
}

- (void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
	currentNodeContent = (NSMutableString *) [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementname namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
	if ([elementname isEqualToString:@"person"]) 
	{
		currentObjects = [Objects alloc];
        isStatus = YES;
	}
    //	if ([elementname isEqualToString:@"user"]) 
    //	{
    //        isStatus = NO;
    //	}
}

- (void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementname namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if (isStatus) 
    {
        if ([elementname isEqualToString:@"state"]) 
        {
            currentObjects.dateCreated = currentNodeContent;
        }
        if ([elementname isEqualToString:@"fullname"]) 
        {
            currentObjects.content = currentNodeContent;
        }
        if ([elementname isEqualToString:@"image"]) 
        {
            currentObjects.img = currentNodeContent;
        }
        if ([elementname isEqualToString:@"city"]) 
        {
            currentObjects.city = currentNodeContent;
        }
        
    }   
	if ([elementname isEqualToString:@"person"]) 
	{
		[self.myData addObject:currentObjects];
		currentObjects = nil;
		currentNodeContent = nil;
	}
}

@end
