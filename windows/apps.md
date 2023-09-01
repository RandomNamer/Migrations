# [NSSM](http://nssm.cc/) - the Non-Sucking Service Manager

> nssm is a service helper which doesn't suck. srvany and other service helper programs suck because they don't handle failure of the application running as a service. If you use such a program you may see a service listed as started when in fact the application has died. nssm monitors the running service and will restart it if it dies. With nssm you know that if a service says it's running, it really is. Alternatively, if your application is well-behaved you can configure nssm to absolve all responsibility for restarting it and let Windows take care of recovery actions.
> 
A non-sucking tool to create user-defined Windows services, compared to [Microsoft's approach](https://learn.microsoft.com/en-us/troubleshoot/windows-client/deployment/create-user-defined-service).

# NVIDIA Geforce GameStream
> Availabilty of GameStream feature relies heavily on internet quality.

> Streaming Service use a request to check if the system supports GameStream. If the request fails (and by default it WILL fail in China), the SHIELD tab won't show up in Geforce Experience
A sample log `C:\ProgramData\NVIDIA Corporation\nvstreamsvc\SSASCurrent.log` be like:
```
#2(D)[2022-11-03 14:43:01,216]=22:43:01=*00000*{16218914113594989393}&6FFCC129&<PocoRequestHandl> Request Uri: https://gfwsl.geforce.com/nvidia_web_services/controller.gfeclientcontent.NG.php/com.nvidia.services.GFEClientContent_NG.getShieldReady/{"gcV":"3.26.0.154","dID":"220A","osC":"10.00","is6":"1","lg":"1033","GFPV":"526.47","isO":"1","sM":"32GB"}
#1(I)[2022-11-03 14:43:06,220]=22:43:06=*00000*{5952921378961139830}&C5774750&<GfeWebService>    We did not get response from GFE Webservice.
#2(I)[2022-11-03 14:43:06,220]=22:43:06=*00000*{5952921378961139830}&BCF6179C&<GfeWebService>    Checking driver version: 52647 locally
#3(I)[2022-11-03 14:43:06,220]=22:43:06=*00000*{5952921378961139830}&F61C1ECF&<GfeWebService>    Streaming support status : 0x5
#4(I)[2022-11-03 14:43:06,220]=22:43:06=*00000*{5952921378961139830}&D80A8B14&<GfeWebService>    	OS: 0x00000001
#5(I)[2022-11-03 14:43:06,220]=22:43:06=*00000*{5952921378961139830}&74705700&<GfeWebService>    	GPU: 0x00000000
#6(I)[2022-11-03 14:43:06,220]=22:43:06=*00000*{5952921378961139830}&E84B5F5B&<GfeWebService>    	DD: 0x00000001
#7(I)[2022-11-03 14:43:06,220]=22:43:06=*00000*{5952921378961139830}&74A53536&<GfeWebService>    	RAM: 0x00000001
#8(I)[2022-11-03 14:43:06,220]=22:43:06=*00000*{5952921378961139830}&8B313B27&<NvStreamControl>  Streaming is not supported for GPU ID: 0x0000220a
#9(I)[2022-11-03 14:43:06,220]=22:43:06=*00000*{5952921378961139830}&F177CDC6&<NvStreamControl>  Set streaming state changed event
#0(I)[2022-11-03 14:43:06,221]=22:43:06=*05009*{16317164174784747347}&3FE94F49&<MdnsPlugin>       Streaming unsupported event received
#0(E)[2022-11-03 14:43:13,618]=22:43:13=*00000*{16218914113594989393}&D393A5A6&<GfeWebService>    Failed to get response from gfswl with status = 301, result = 0000000000
#1(D)[2022-11-03 14:43:13,618]=22:43:13=*00000*{16218914113594989393}&FC3645A1&<GfeWebService>    Request to gfe web server failed 1 of 1. Next attempt in 600000ms.
```
**Solution:** Add `43.156.27.78 gfwsl.geforce.com` to hosts. Or any other usable proxy.
