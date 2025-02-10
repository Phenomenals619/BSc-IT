#include<graphics.h>
#include<conio.h>
int main()
{
int gd=DETECT,gm;
initgraph(&gd,&gm,"C:\\TC\\BGI");
circle(100,100,50);
outtextxy(70,100,"CIRCLE");
outtextxy(50,20,"Ahmed Shaikh 232");
getch();
closegraph();
return 0;
}
