//
//  SSDynamicTextTests.m
//  SSDynamicTextTests
//
//  Created by Jonathan Hersh on 10/23/14.
//  Copyright (c) 2014 Splinesoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <Expecta.h>
#import "SSDynamicText.h"

NSString * const kTestFontName = @"Avenir";
CGFloat    const kTestFontSize = 14.f;

@interface SSDynamicTextTests : XCTestCase

@end

@implementation SSDynamicTextTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testInitializable {
    XCTAssertNotNil([SSDynamicLabel labelWithFont:kTestFontName baseSize:kTestFontSize], @"Label should initialize");
    XCTAssertNotNil([SSDynamicTextField textFieldWithFont:kTestFontName baseSize:kTestFontSize], @"Text field should initialize");
    XCTAssertNotNil([SSDynamicTextView textViewWithFont:kTestFontName baseSize:kTestFontSize], @"Text view should initialize");
}

- (void)testApplicationFontSizeDelta
{
    // This will probably fail if you've set a custom preferred font size in the simulator
    XCTAssertEqual(0, [[UIApplication sharedApplication] preferredFontSizeDelta], @"Font size delta should be zero");
}

@end