# Vagrant Virtualbox Dce Box

本项目是从 [bento](https://github.com/chef/bento) 中提取测试修改得来

### 版本说明

1. vagrant 1.8.5
1. virtualbox 5.0.28
1. packer 0.11.0

### 环境说明

1. 目前测试环境均在 osx 系统下，理论上应该支持 windows && linux
1. 确保系统装有 vagrant && packer
  1. vagrant https://www.vagrantup.com/downloads.html
  1. packer https://github.com/mitchellh/packer osx 下可使用 homebrew 安装
1. 确保 iso 文件夹下有需要安装的官方镜像，没有可以使用 iso 下 download.sh 从阿里云下载

### 使用方式

``` bash
rm -rf ./build/*.box # 删除所有 box，准备重新安装
./build.sh # 会自行调用 virtualbox 图形化界面 自动安装系统
./load.sh # 移除已加载 box，并加载新安装的 box

vagrant destroy -f # 移除在跑系统
vagrant up # 拉起 box 系统
vagrant ssh $NODE_NAME # 登入系统
```

### 如有时间后期的一些想法

1. 添加一个命令行工具，弱化 vagrant 和 packer 配置，形成一个更少配置，专门服务容器或者DCE的配置项，类似于 docker + compose.yml
  - vagrant 和 packer 工作目录移至隐藏目录
  - vagrant 和 packer 是动态后生成的
1. 宿主环境暂只选择 ubuntu 16.04 amd 64 有可能添加 centos 最新版支持
1. 根据 docker + DCE 版本做多版本固化
1. 虚拟化暂只支持 virtualbox，代码化成型后考虑其他虚拟化平台
  - 最终达到可以作为 DCE 虚拟化模版的效果
