#import "calc.h"
@implementation Calculator
@synthesize number;
@synthesize result;
-(int)addNumbers {
	result=result+number;
	return result;
}
-(int)subNumbers {
	result=result-number;
	return result;
}
-(int)mulNumbers {
	result=result*number;
	return result;
}
-(int)divNumbers {
	result=result/number;
	return result;
}
-(int)modNumbers {
	result=result%number;
	return result;
}
@end