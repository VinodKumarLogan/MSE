#import <Foundation/Foundation.h>
@interface Calculator: NSObject {
	int number,result;
}
@property (nonatomic, assign) int number;
@property (nonatomic, assign) int result;
-(int)addNumbers;
-(int)subNumbers;
-(int)mulNumbers;
-(int)divNumbers;
-(int)modNumbers;
@end