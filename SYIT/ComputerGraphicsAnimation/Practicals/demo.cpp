#include<graphics.h>
int main()
{
	int gd=DETECT, gm;
	initgraph(&gd, &gm, (char*)"");
	rectangle(200,200,300,400);
	getch();
	closegraph();
	return 0;
}
