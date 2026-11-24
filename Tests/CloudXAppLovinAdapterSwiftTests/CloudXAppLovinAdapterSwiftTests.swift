import CloudXAppLovinAdapter
import CloudXAppLovinAdapterPackage
import XCTest

final class CloudXAppLovinAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXAppLovinAdapterVersion, "13.6.3.1")
        XCTAssertNotNil(NSClassFromString("CLXAppLovinSDKManager"))
    }
}
