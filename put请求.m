// Put请求
// 
//
// IDECodeSnippetCompletionPrefix: pt
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: E8871FF0-549B-434B-A2EF-9214366E912E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
[[AJBNetworkRequest shareNetworkRequest] putAtPath:<#AJBNetworkRequestPath#> identifier:<#identifier#> parameters:<#model#> Success:^(AJBPostRespond *successModel) {
           
        } requestFailure:^(id failureMsg) {
            HUD.labelText = failureMsg;
            [HUD hide:YES afterDelay:2];
        }];
