#include <stdio.h>
int main(void)
{
  int read=0;
  FILE *fp;
  fp=fopen("/dev/block/mmcblk0p13", "r+b");
  read = getc (fp);
  fseek(fp, 0, 0);
  switch (read){
  case 0:
    printf("Flag is already correct.\n");
    break;
  case 2:
    putc(0x00, fp);
    printf( "Got recovery bootflag.\nKicking out of recovery!\n" );
    break;
  default:
    printf("Unknown bootflag! Aborted.\n");
    fclose(fp);
    return -1;
    break;
  }
  fclose(fp);
  return 0;
}
