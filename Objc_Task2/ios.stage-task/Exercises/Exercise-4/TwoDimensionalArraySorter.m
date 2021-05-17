#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    if (array.count == 0 || array == nil) {
    return @[];
    }
    
    for (int i = 0; i < array.count; i++) {
        if (!([array[i] isKindOfClass:[NSArray class]])) {
            return @[];
        }
    }
    
    NSMutableArray *numArr = [NSMutableArray arrayWithArray:@[]];
    NSMutableArray *strArr = [NSMutableArray arrayWithArray:@[]];
    
    for (int i = 0; i < array.count; i++) {
        for (int j = 0; j < array[i].count; j++) {
            if ([array[i][j] isKindOfClass:[NSNumber class]]){
                [numArr addObject:array[i][j]];
            } else {
                [strArr addObject:array[i][j]];
            }
        }
    }
    
    NSArray *numArrSorted = [numArr sortedArrayUsingSelector:@selector(compare:)];
    NSArray *strArrSorted = [strArr sortedArrayUsingSelector:@selector(compare:)];
    
    if (numArr.count == 0) {
        return strArrSorted;
    } else if (strArr.count == 0){
        return numArrSorted;
    } else {
        NSArray *reversedArr = [[strArrSorted reverseObjectEnumerator] allObjects];
        return @[numArrSorted, reversedArr];
    }
}

@end
