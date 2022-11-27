#import <Foundation/Foundation.h>

#import <CoreFoundation/CFRuntime.h>

#include <stdio.h>

void __attribute__((constructor)) NSInitialize() {
    printf("NSInitialize\n");

    _CFRuntimeBridgeTypeToClass(CFStringGetTypeID(), [NSString class]);

}
