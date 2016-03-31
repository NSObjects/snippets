// 单例
// 
//
// IDECodeSnippetCompletionPrefix: soj
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 26B114DE-4A03-4B4E-BDD3-92B52B89322F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+ (instancetype )shareObject {
    
    static id shareObject = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        shareObject = [[[self class]alloc]init];
    });
    
    return shareObject;
}