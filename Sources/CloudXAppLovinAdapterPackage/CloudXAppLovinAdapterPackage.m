#import <CloudXAppLovinAdapter/CloudXAppLovinAdapter.h>

@interface CloudXAppLovinAdapterPackageLoader : NSObject
@end

@implementation CloudXAppLovinAdapterPackageLoader

+ (void)load {
    CloudXAppLovinAdapterRegister();
}

@end
