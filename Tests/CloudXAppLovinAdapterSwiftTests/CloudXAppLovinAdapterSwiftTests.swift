import CloudXAppLovinAdapter
import CloudXAppLovinAdapterPackage
import XCTest

final class CloudXAppLovinAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXAppLovinAdapterVersion, "13.6.4.0")
        XCTAssertNotNil(NSClassFromString("CLXAppLovinSDKManager"))
    }
}
