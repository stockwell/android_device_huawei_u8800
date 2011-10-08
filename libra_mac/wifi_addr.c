#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>

#define LOG_TAG "LibraMAC"
#include "cutils/log.h"
#include "cutils/misc.h"

extern void huawei_oem_rapi_streaming_function(int n, int p1, int p2, int p3, int *v1, int *v2, char *v3);

int main(void){
    char x[8];
    int  y;
    char mac_param[64];

    memset(x,0,8);
	y=0;
	huawei_oem_rapi_streaming_function(3,0,0,0,0,&y,x);
    LOGI("huawei_oem_rapi_streaming_function %p %x %x",x,x[0],y);
	sprintf(mac_param,"mac_param=%02X:%02X:%02X:%02X:%02X:%02X ",x[5],x[4],x[3],x[2],x[1],x[0]);
    LOGI("Got MAC Address: %s ",mac_param);
    property_set("ro.wifi.macaddr", mac_param);
    return 0;
}
