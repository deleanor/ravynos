#import <Foundation/CFBaseShim.h>

CFHashCode CFHashShim(CFTypeRef self){
	return [(id)self hash];
}

Boolean CFEqualShim(CFTypeRef self,CFTypeRef other){
	return [(id) self isEqual:(id)other];
}

CFStringRef CFCopyTypeIDDescriptionShim(CFTypeID typeID){
	NSUnimplementedFunction();
	return 0;
}

CFStringRef CFCopyDescriptionShim(CFTypeRef self){
   return (CFStringRef)[[(id) self description] copy];
}

CFTypeRef CFMakeCollectableShim(CFTypeRef self){
   //does nothing on cocotron
   return 0;
}

CFTypeID CFGetTypeIDShim(CFTypeRef self){
   return [(id)self _cfTypeID];
}

CFTypeRef CFRetainShim(CFTypeRef self){
	return (CFTypeRef)[(id) self retain];
}

void CFReleaseShim(CFTypeRef self){
	[(id) self release];
}
CFIndex CFGetRetainCountShim(CFTypeRef self){
   return [(id) self retainCount];
}
