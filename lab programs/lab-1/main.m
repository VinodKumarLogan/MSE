#import "printdata.h"
int main(int argc,const char* argv[]) {
	PrintData* buf = [[PrintData alloc] init];
	if([buf setBuffer])
		[buf print];
	else
		printf("\nError occured");
	[buf release];
	return 0;
}