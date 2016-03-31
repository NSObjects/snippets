// 警告信息
// 
//
// IDECodeSnippetCompletionPrefix: wms
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 4563E5E6-9E0C-46FD-9189-4E5C46A57C45
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (void)showWaningMsg:(NSString *)msg {
    [TSMessage showNotificationWithTitle:@"错误"
                                subtitle:msg
                                    type:TSMessageNotificationTypeWarning];
}