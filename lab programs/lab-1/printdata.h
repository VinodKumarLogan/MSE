#import <Foundation/Foundation.h>
@interface PrintData:NSObject {
	char buffer[100];
}
-(int)setBuffer;
-(void)print;
@end