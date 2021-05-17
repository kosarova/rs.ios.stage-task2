#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    NSMutableString *resultStr = [NSMutableString stringWithString:@""];
    
    if (numbersArray.count == 0 || numbersArray == nil) {
        return @"";
    }
    
    for (NSInteger i = 0; i < 4; i++) {
        if (i < numbersArray.count && [numbersArray[i] intValue] < 0) {
            [resultStr setString:@"Negative numbers are not valid for input."];
            break;
        }
        if (i < numbersArray.count && [numbersArray[i] intValue] > 255) {
            [resultStr setString:@"The numbers in the input array can be in the range from 0 to 255."];
            break;
        }
        if (i >= numbersArray.count) {
            [resultStr appendFormat:@"%@", @"0"];
        } else {
            [resultStr appendFormat:@"%@", numbersArray[i]];
        }
        if (i != 3) {
            [resultStr appendFormat:@"%@", @"."];
        }
    }
    return [[NSString alloc] initWithString:resultStr];
}

@end
    
