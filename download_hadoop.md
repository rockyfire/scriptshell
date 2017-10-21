#### 获取前准备

1. 安装 wget 工具
- Ubuntu
```
    sudo apt-get  install wget
```
- Centos
```
    sudo yum -y install wget
```
- Mac OS
```
    brew install wget
```
2. 下载链接
```
    ftp://ftp.ncdc.noaa.gov/pub/data/noaa/isd-lite/
```

#### Shell Script

##### 代码
```
# Author : rockyfire
# !/bin/bash
for i in {1901..2017}  
do  
    cd /linuxtext  
    wget -r -np -nH --cut-dirs=3 -R index.html ftp://ftp.ncdc.noaa.gov/pub/data/noaa/isd-lite/$i/
    cd isd-lite/$i              
    gzip -d *.gz
done                                            
```
##### 说明
- 定义变量i，i为1901年到2016年
- 切换到/linuxtext目录下(自己创建的目录下)
下载文件到该目录下
- -r 递归下载
- --cut-dirs=3 下载数据时，在本地创建目录时，忽略3层目录结构

##### 改变sh文件权限

    chmod a+x download.sh
    
##### 运行
    
    ./download.sh
