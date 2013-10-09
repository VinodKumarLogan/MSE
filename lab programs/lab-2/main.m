#import "calc.h"
int main(int argc, char const *argv[]) {
	int choice,number,dispResult,dispNumber;
	Calculator *calculate = [[Calculator alloc] init];
	printf("Enter the number : ");
	if(scanf("%d",&number)!=1) {
		printf("Error occurred\n");
		exit(0);
	}
	[calculate setResult:number];
	do {
		printf("\n1.Add\n2.Subtract\n3.Multiply\n4.Divide\n5.Remainder\n6.Exit\nEnter your choice:");
		if(scanf("%d",&choice)!=1) {
			printf("Error occurred\n");
			exit(0);
		}
		if(choice!=6) {
			printf("Enter the number : ");
			if(scanf("%d",&number)!=1) {
				printf("Error occurred\n");
				exit(0);
			}
			else {
				if(choice==4 && number==0){
					printf("\nDivision by zero error\n");
					continue;
				}
				[calculate setNumber:number];
				dispNumber = calculate.number;
				dispResult = calculate.result;
			}
		}
		switch(choice) {
			case 1: printf("\n%d + %d = %d",dispResult,dispNumber,[calculate addNumbers]);
					break;
			case 2: printf("\n%d - %d = %d",dispResult,dispNumber,[calculate subNumbers]);
					break;
			case 3: printf("\n%d * %d = %d",dispResult,dispNumber,[calculate mulNumbers]);
					break;
			case 4: printf("\n%d / %d = %d",dispResult,dispNumber,[calculate divNumbers]);
					break;
			case 5: printf("\n%d %% %d = %d",dispResult,dispNumber,[calculate modNumbers]);
					break;
			case 6: printf("\nExiting\n");
					break;
			default: printf("\nInvalid Choice");
		}
	} while ((choice>0)&&(choice<6));
	[calculate release];
	return 0;
}