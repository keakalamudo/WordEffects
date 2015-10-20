//
//  main.m
//  WordEffects
//
//  Created by Kelo Akalamudo on 10/19/15.
//  Copyright (c) 2015 Kelo. All rights reserved.
//

#import <Foundation/Foundation.h>

void printMenu() {
    printf ("Enter a number for the following operations: \n");
    printf ("1. Uppercase \n");
    printf ("2. Lowercase \n");
    printf ("3. Numberize \n");
    printf ("4. Canadianize \n");
    printf ("5. Respond \n");
    printf ("6. De-Space-it \n");
    printf ("0. Exit");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // 255 unit long array of characters
        char inputChars[255];
        
        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        // print as a c string
        printf("Your string is %s\n", inputChars);
        
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        // print NSString object
        NSLog(@"Input was: %@", inputString);
        
     
        int value;
        do{
        printMenu();
        
        
        scanf ("%i", &value);
            switch (value) {
                case 0:
                    NSLog (@"Exiting..");
                    
                    break;
                case 1: {
                    // convert NSString object to Uppercase
                    NSString *upperCase = [ inputString uppercaseString];
                    
                    // print NSString objectx
                    NSLog(@"Input was: %@", upperCase);
                    
                    break;
                }
                case 2: { // convert NSString object to Lowercase
                    NSString *lowerCase = [ inputString lowercaseString];
                    
                    // print NSString object
                    NSLog(@"Input was: %@", lowerCase);
                    break;
                }
                case 3:{
                    // convert NSString object to Numberize
                    int numberize = [ inputString intValue];
                    
                    // print Numberize result
                    NSLog(@"Input was: %d", numberize);
                    break;
                }
                case 4:{
                    // convert NSString object to Canadianize
                    NSString *canadianize = [ inputString stringByAppendingString:@", eh?"];
                    
                    // print NSString object
                    NSLog(@"Input was: %@", canadianize);
                    break;
                }
                case 5:{
                    // Response to NSString object
                    NSString *response = inputString;
                    if ([response containsString:@"?"]){
                        NSLog(@"I don't know.");
                    }else if([response containsString:@"!"]){
                        NSLog(@"Woah calm down");
                    }else {
                        NSLog(@"Input was: %@", response);
                    }
                    break;
                }
                case 6:{
                    // convert NSString object to replace space
                    NSString *despace = [ inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    
                    // print NSString object
                    NSLog(@"Input was: %@", despace);
                    break;
                    
                }
                default:
                    NSLog (@"Integer out of range");
                    break;
            }

        }//end do
        while(value!=0);
        
    }
    return 0;
}
