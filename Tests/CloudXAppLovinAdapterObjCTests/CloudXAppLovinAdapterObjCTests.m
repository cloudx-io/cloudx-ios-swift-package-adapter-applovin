@import CloudXAppLovinAdapter;
@import CloudXAppLovinAdapterPackage;
@import XCTest;

@interface CloudXAppLovinAdapterObjCTests : XCTestCase
@end

@implementation CloudXAppLovinAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXAppLovinAdapterVersion, @"13.6.4.0");
    XCTAssertNotNil(NSClassFromString(@"CLXAppLovinSDKManager"));
}

@end
