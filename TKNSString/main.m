//
//  main.m
//  TKNSString
//
//  Created by Felix ITs 04 on 07/10/16.
//  Copyright © 2016 Felix-ITs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
     ////Declearation os string
   
        NSString *strName=@"Tushar";
        NSString *strAge=@"24.5";
        
        NSString *strSurname=@"Kolhe";
        
        NSLog(@"Name String:%@",strName);
        NSLog(@"Age String:%@",strAge);
    
        
     ////Enumerating the String
        for (int i=0; i<[strName length]; i++) {
            unichar letter = [strName characterAtIndex:i];
            NSLog(@"%d: %hu", i, letter);
        }
        
    ////Comparing String
        if([strName isEqualToString:@"Tushar"])
        {
            NSLog(@"Both Strings are Equal");
        }
        //Checking Prefix
        if ([strName hasPrefix:@"Tu"]) {
            NSLog(@"Tushar has Prefix Tu");
        }
        
        //Checking Suffix
        if ([strName hasSuffix:@"ar"]) {
            NSLog(@"Tushar has Suffix ar");
        }
        
    ////Compare string in ordering
        NSComparisonResult result=[strName compare:strSurname];
        
        if(result == NSOrderedAscending)
        {
            NSLog(@"Letter T comes before letter K");
        }else if (result == NSOrderedSame)
        {
            NSLog(@"Both are Same Strings");
        }else if (result == NSOrderedDescending)
        {
            NSLog(@"Letter K comes before letter T");
        }
        
    ////Combining String
        NSString *fullName;
        
        fullName=[strName stringByAppendingString:strSurname];
        NSLog(@"Combined String is:%@", fullName);
        
        //Add Space
        fullName=[strName stringByAppendingFormat:@" %@",strSurname];
        NSLog(@"Combined String With space:%@",fullName);
    
    ////Searching String
        
        NSRange searchResult=[fullName rangeOfString:@"Kolhe"];
        
        if (searchResult.location == NSNotFound) {
            NSLog(@"Search String was not found");
        }else
        {
            NSLog(@"String 'Kolhe' is at location %lu and its length is %lu",searchResult.location,searchResult.length);
        }
        
    ////SubDividing String
        
        NSLog(@"%@",[fullName substringToIndex:7]);
        
        NSLog(@"%@",[fullName substringFromIndex:7]);
        
        NSRange rng=NSMakeRange(7, 5);
        NSLog(@"%@",[fullName substringWithRange:rng]);
        
    ////Replacing Substring
        
        //Directly by string
        NSString *replace=[fullName stringByReplacingOccurrencesOfString:@"Kolhe" withString:@"Jagdish Kolhe" ];
        NSLog(@"%@",replace);
        
        //Using Range
        NSRange range=NSMakeRange(7, 5);
        
        NSString *rplc =[fullName stringByReplacingCharactersInRange:range withString:@"Tushar"];
        NSLog(@"%@",rplc);
        
        
    ////Changing Case
        
        NSLog(@"%@",[fullName uppercaseString]);
        NSLog(@"%@",[fullName lowercaseString]);
        NSLog(@"%@",[fullName capitalizedString]);
        
    ////Numerical Conversion
        
        BOOL asBool = [strAge boolValue];
        int asInt = [strAge intValue];
        NSInteger asInteger = [strAge integerValue];
        long long asLongLong = [strAge longLongValue];
        float asFloat = [strAge floatValue];
        double asDouble = [strAge doubleValue];

        
        
    }
    return 0;
}
