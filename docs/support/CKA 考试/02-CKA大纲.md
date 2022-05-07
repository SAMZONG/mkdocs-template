# CKA 备考大纲

### Kubernetes入门

- Kubernetes基本概念与应用场景
- Kubernetes主要功能特性、集群架构与组件
- 使用kubeadm安装集群与版本升级
- etcd数据备份与还原
- kubectl使用、shell自动补

---

### Kubernetes工作负载、调度与Helm

- Pod基本操作、生命周期、回调与探针
- 初始化与临时容器
- 使用Deployment部署自修复无状态服务
- 使用Deployment滚动更新/回滚/扩缩无状态服务
- 使用StatefulSet部署有状态服务
- 使用DaemonSet部署守护进程
- 深入理解控制器工作原理
- 使用ConfigMaps和Secrets配置应用程序
- Kubernetes调度策略实践
- 资源限制如何影响Pod调度
- 理解调度器工作原理
- 各种调度策略使用场景总结
- 使用Helm部署/升级/回滚/下线服务
- Helm回调与Chart编写

---

### Kubernetes服务与网络

- 定义Service与Endpoint
- Service Iptables与IPVS代理模式
- 通过Service名称与ClusterIP集群内互访
- 通过NodePort、Ingress、LoadBalancer集群外访问
- CoreDNS原理介绍
- 配置和使用CoreDNS
- 同Pod/同Node/跨Node/跨集群互通性
- 常见网络接口插件工作原理与适用场景
- 常见网络故障排查

---


### Kubernetes存储与安全

- Volume、PV、PVC、StorageClass
- 卷模式、访问模式和卷回收策略
- 理解持久容量声明原语
- 了解如何配置具有持久性存储的应用程序
- 认证、授权与鉴权
- 管理基于角色的访问控制（RBAC）
- Pod和容器操作权限安全策略
- Network Policy

---

### Kubernetes监控日志、故障排查

- 如何监控一个Kubenetes应用
- 查看与管理集群和节点日志
- 管理容器标准输出和标准错误日志
- 如何解决应用程序故障
- 对群集组件故障进行故障排除
- Kubernetes其他常见问题定位