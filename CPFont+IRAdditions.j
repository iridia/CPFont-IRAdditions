//	CPFont+IRAdditions.j
//	Evadne Wu at Iridia, 2010

@import <AppKit/CPFont.j>

@implementation CPFont (IRAdditions)

+ (void) setSystemFontString:(CPString)inString {
	
	_CPFontSystemFontFace = inString;
	_CPFonts = {};
	
}

@end