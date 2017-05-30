//
//  main.m
//  strings
//
//  Created by sd79 on 2017-05-29.
//  Copyright © 2017 Glen Posey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        while (YES) {
       
        
            NSLog(@"The list of options are: \n 1. UpperCase \n 2. LowerCase \n 3. Number Entered \n 4. Canadianize \n 5. What's your question \n 6. No more spaces \n");
            
            char inputChars [255];
            printf("Input some words:");
            fgets(inputChars, 255, stdin);
            
            NSString *inputString = [NSMutableString stringWithUTF8String:inputChars];
            inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            

            
            char selectOption [255];
            printf("Do some cool stuff with your words!\n");
            printf("\n");
            printf("Pick a number between: 1 - 6");
            fgets(selectOption, 255, stdin);

            NSString *inputNumberString = [NSMutableString stringWithUTF8String:selectOption];
            inputNumberString = [inputNumberString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            
            NSNumberFormatter *inputNumberFormatter = [[NSNumberFormatter alloc] init];
            NSNumber *inputedNumber = [inputNumberFormatter numberFromString:inputNumberString];
            
            if (inputedNumber) {
                
                
                NSNumber *convertedNumber = [inputNumberFormatter numberFromString:inputString];
                
                BOOL doesContainQuestion = [inputString containsString:@"?"];
                
                switch ([inputedNumber intValue]) {
                    case 1:
                        inputString = [inputString uppercaseString ]; //1
                        NSLog(@"%@", inputString);
                        break;
                        
                     case 2:
                        inputString = [inputString lowercaseString ]; //2
                        NSLog(@"%@", inputString);
                     break;
                        
                        
                    case 3:
                        
                        //3
                        if (convertedNumber) {
                            NSLog(@"You entered a number: ");
                        }
                        else {
                            NSLog(@"You didn't enter a number");
                        }

                     break;
                        
                        
                    case 4:
                        NSLog(@"%@ EH", inputString);//4

                    break;
                        
                    case 5:
                        //5]
                        if (doesContainQuestion) {
                            NSLog(@"Thanks for asking!");
                        }
                        else {
                            NSLog(@"You didn't ask a question" );
                        }

                        break;
                    case 6:
                        inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@""];
                        NSLog(@"%@", inputString); //6
                        break;
                        
                    default:
                        NSLog(@"Please make a selection between 1-6");
                        break;
                }
                
            }
            else {
                NSLog(@"You did not follow the rules!");
            }
        
        }
    }
    return 0;
}
