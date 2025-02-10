#include<graphics.h>
#include<conio.h>
int main()
{
	int gd=DETECT, gm;
	initgraph(&gd,&gm,(char*)"");
	setcolor(RED);
	rectangle(300,300,300,300);
	
	getch();
	closegraph();
	return 0;
}
