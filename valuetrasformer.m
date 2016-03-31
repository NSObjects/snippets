// ValueTrasformer
// 值转换
//
// IDECodeSnippetCompletionPrefix: vt
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 2300C1CC-9A9A-4A92-BF28-6CA7B1257C7F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
@interface <#name#>ValueTrasformer : NSValueTransformer

@end

@implementation <#name#>ValueTrasformer

+ (Class)transformedValueClass {
    
    return [NSString class];
}

+ (BOOL)allowsReverseTransformation {
   
    return NO;
}

- (id)transformedValue:(id)value {
    
    if (!value) {
        return nil;
    }
    
    
    return value;
}

@end