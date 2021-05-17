#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    //Возможно, не совсем по условию, т.к. решено не сдвигом побитово, но перебором цикла по степеням двойки
    NSInteger i = 8;
    UInt8 resultBuff = 0;
    while (i--) {
        resultBuff += (n % 2) * pow( 2, i);
        n = n / 2;
    }
    
    return resultBuff;
}
