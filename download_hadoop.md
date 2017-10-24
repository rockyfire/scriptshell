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
    cd /linuxtext/isd-lite  
    if [ -d $i ]; then
        continue
    fi
    wget -r -np -nH --cut-dirs=4 -R index.html ftp://ftp.ncdc.noaa.gov/pub/data/noaa/isd-lite/$i/
    cd $i              
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

---

#### 循环执行的例行性工作调度

##### 命令

    crontab -e
    
    0 9 * 10 * /home/candy/Desktop/git/download.sh
    
##### 说明

运行了俩天才下载了到1950年，而且1950年之前的文件比较小。懒惰的我使用crontab命令每天早上自动执行。

