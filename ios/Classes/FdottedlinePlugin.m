#import "FdottedlinePlugin.h"
#if __has_include(<fdottedline/fdottedline-Swift.h>)
#import <fdottedline/fdottedline-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fdottedline-Swift.h"
#endif

@implementation FdottedlinePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFdottedlinePlugin registerWithRegistrar:registrar];
}
@end
