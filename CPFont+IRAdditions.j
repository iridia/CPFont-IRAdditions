//	CPFont+IRAdditions.j
//	Evadne Wu at Iridia, 2010

@import <AppKit/CPFont.j>

var	CPFonts                = {},
	CPFontSystemFontFace   = @"Arial, sans-serif";

var	CPCreateCSSString = function (aName, aSize, isBold) {
		
		return (isBold ? @"bold " : @"") + ROUND(aSize) + @"px " + ((aName === CPFontSystemFontFace) ? aName : (@"\"" + aName.replace(CPWrapRegExp, '", "') + @"\", " + CPFontSystemFontFace)) 
		
	};
	
var	CPCachedFont = function (aName, aSize, isBold) { return CPFonts[CPCreateCSSString(aName, aSize, isBold)] };
	




@implementation CPFont (IRAdditions)

+ (void) setSystemFontString:(CPString)inString {
	
	CPFontSystemFontFace = inString;
	CPFonts = {};
	
}

+ (CPFont) systemFontOfSize:(CPSize)aSize {

	return CPCachedFont(CPFontSystemFontFace, aSize, NO) || [[CPFont alloc] _initWithName:CPFontSystemFontFace size:aSize bold:NO];

}

+ (CPFont) boldSystemFontOfSize:(CPSize)aSize {

	return CPCachedFont(CPFontSystemFontFace, aSize, YES) || [[CPFont alloc] _initWithName:CPFontSystemFontFace size:aSize bold:YES];

}

@end




