#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    NSInteger countPairs = 0;
    NSInteger lenghtArr = array.count;
    
    for (int i = 0; i < lenghtArr; i++) {
        for (int j = i+1; j < lenghtArr; j++) {
            if (abs([array[i] intValue] + [number intValue]) == [array[j] intValue]){
                countPairs += 1;
            }
        }
    }
    
    return countPairs;
}

@end
