// InputInfomation
// 表单输入的数据
//
// IDECodeSnippetCompletionPrefix: ifm
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: F7A4DD31-D1D6-4D21-B192-080C10257367
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (NSDictionary *)inputInfomation {
    
    NSArray *validationErrors = [self formValidationErrors];
    
    if (validationErrors.count > 0) {
        
        [self showFormValidationError:[validationErrors firstObject]];
        
        return nil;
        
    }
    
    NSMutableDictionary *result = [NSMutableDictionary dictionary];
    
    for (XLFormSectionDescriptor *section in self.form.formSections) {
        
        if (!section.isMultivaluedSection) {
            
            for (XLFormRowDescriptor *row in section.formRows) {
                
                if (row.tag && ![row.tag isEqualToString:@""]) {
                    [result setObject:(row.value ?: [NSNull null]) forKey:row.tag];
                }
            }
        } else {
            
            NSMutableArray *multiValuedValuesArray = [NSMutableArray new];
            
            for (XLFormRowDescriptor *row in section.formRows) {
                if (row.value) {
                    
                    [multiValuedValuesArray addObject:row.value];
                }
            }
            [result setObject:multiValuedValuesArray forKey:section.multivaluedTag];
        }
    }
    
    return result;
}