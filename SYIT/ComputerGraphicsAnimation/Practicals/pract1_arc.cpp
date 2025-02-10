#include<graphics.h>
#include<conio.h>
int main()
{
int gd=DETECT,gm;
initgraph(&gd,&gm,"C:\\TC\\BGI");
arc(100,100,0,135,50);
outtextxy(90,120,"ARC");
outtextxy(50,20,"Ahmed Shaikh 232");
getch();
closegraph();
return 0;
}
