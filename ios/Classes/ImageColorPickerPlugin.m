#import "ImageColorPickerPlugin.h"
#if __has_include(<image_color_picker/image_color_picker-Swift.h>)
#import <image_color_picker/image_color_picker-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "image_color_picker-Swift.h"
#endif

@implementation ImageColorPickerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftImageColorPickerPlugin registerWithRegistrar:registrar];
}
@end
