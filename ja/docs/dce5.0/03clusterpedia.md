# 集群资源检索 ClusterPedia

- [clusterpedia 官网](https://clusterpedia.io/)
- [clusterpedi repo](https://github.com/clusterpedia-io/clusterpedia)

Clusterpedia 这个名称借鉴自 Wikipedia，是多集群的百科全书，其核心理念是收集、检索和简单控制多集群资源。

通过聚合收集多集群资源，在兼容 Kubernetes OpenAPI 的基础上额外提供更加强大的检索功能，让用户更方便快捷地在多集群中获取想要的任何资源。

支持的功能包括：

- 支持复杂的检索条件、过滤条件、排序、分页等等
- 支持查询资源时请求附带关系资源
- 统一主集群和多集群资源检索入口
- 兼容 kubernetes OpenAPI，可以直接使用 kubectl 进行多集群检索，而无需第三方插件或者工具
- 兼容收集不同版本的集群资源，不受主集群版本约束
- 资源收集高性能，低内存
- 根据集群当前的健康状态，自动开始/停止资源收集
- 插件化存储层，用户可以根据自己需求使用其他存储组件自定义存储层
- 高可用