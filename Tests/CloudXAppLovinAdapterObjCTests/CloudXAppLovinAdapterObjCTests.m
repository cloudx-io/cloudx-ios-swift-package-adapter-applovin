@import CloudXAppLovinAdapter;
@import CloudXAppLovinAdapterPackage;
@import XCTest;

@interface CloudXAppLovinAdapterObjCTests : XCTestCase
@end

@implementation CloudXAppLovinAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXAppLovinAdapterVersion, @"13.6.3.0");
    XCTAssertNotNil(NSClassFromString(@"CLXAppLovinInitializer"));
}

@end
