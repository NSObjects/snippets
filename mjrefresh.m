// MJRefresh
// 下拉刷新代码
//
// IDECodeSnippetCompletionPrefix: mj
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: E1C08BE2-CC7D-45B7-A275-47001FD4D643
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
self.tableView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        
    }];
    
    self.tableView.footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
        
    }];