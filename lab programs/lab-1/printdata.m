#import "printdata.h"
@implementation PrintData
-(int)setBuffer {
	int retVal;
	printf("Enter the input string : ");
	if((scanf("%s",buffer))==1)
		retVal = 1;
	else
		retVal = 0;
	return retVal;
}
-(void)print {
	printf("The input is : %s\n",buffer);
}
@end