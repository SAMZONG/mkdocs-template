---
tags:
    - HowTo
---

# 文档站使用说明

- 本产品文档站采用了 Mkdocs 开发的 Material 风格 建站
- 支持文档语法为 Markdown

## 文档站结构

!!! important 文档站结构

    文档内容全部存放在 `docs/` 目录下，修改内容仅编辑 `docs/` 目录下的文件即可

```sh
docs
├── .pages.yaml     # 站点顶部导航配置文件，控制顺序和名称，一般不增加
├── README.md       # 默认情况下 目录下 README.md 作为 default 页面
├── SUMMARY.md
├── dce5.0          # 子文件夹，支持多级目录，自动检测配置
│   ├── .pages.yaml
│   ├── 01kpanda.md # 子文件自动检测，可以通过文件名前缀数字控制排序
│   ├── 02ghippo.md
│   ├── 03clusterpedia.md
│   ├── ...
├── design
│   ├── .pages.yaml # 每个目录下都有一个 `.pages.yaml` 用来进行目录的配置
│   ├── README.md
│   ├── ...
├── images          # 图片文件夹，使用相对路径引入即可
│   ├── ghippo.png
│   ├── icon.png
│   ├── ...
├── products
│   ├── .pages.yaml
│   ├── README.md
│   ├── ...
├── scaffolds       # 这里存放模板文件，一般不需要修改
│   ├── .pages.yaml
│   └── tags.md
├── stylesheets     # 基于主题的自定义样式，一般不需要修改
│   └── extra.css
├── support
│   ├── .pages.yaml
│   ├── 01-mkdocs-material.md
│   ├── README.md
│   ├── ...
└── survey
    ├── .pages.yaml
    ├── README.md
    ├── ...
```

### `.pages.yaml` 介绍

通过对每个文件下的特定处理，默认情况下 `.pages.yaml` 为空即可，如需要特殊处理，可以在文档添加下方参数

```yaml
title: Products     # 文件夹展示的标题
order: 1            # 文件夹的顺序，数字越小越靠前
hide: false         # 是否隐藏，默认不隐藏
nav:                # 采用自定义导航
    - filename.md
    - filename2.md
    - ...
```

> `nav` 的配置方式，还有更多高级用法，可以参考插件做的的 Github 介绍 [传送门](https://github.com/lukasgeiter/mkdocs-awesome-pages-plugin#customize-navigation)

### 如何添加一篇文档

    1. 在 `docs/` 目录下创建一个文件夹，如 `dce5.0`
    2. 或者在 `docs/` 目录下创建一个文件，如 `01kpanda.md`
    3. 完成对文档的编写
    4. 推送此变更到 gitlab , 一般 2 分钟后，其他人就可以在文档站上看到

### Front Matter

通过在文档的头部 增加对应的 Front Matter，可以设置文档的标题、描述、标签、额外的配置等

本文档采用了 Tag 的组件，可以进行文档的 全站关联，比如：

```yaml
tags:
    - HowTo

```

还可以使用的参数：

- title: 用来定义文档的标题，如果未定义 Mkdocs 会默认采用 文档内第一个 `#` 作为标题


## Markdown 语法介绍

在基础的 Markdown 语法之外，`Material` 风格支持以下语法 `Obsidian` 可以和 `Material` 有很好的兼容，安装对应的插件即可


### 快捷传送门

Lorem ipsum[^1] dolor sit amet, consectetur adipiscing elit.[^2]

### Video

<figure class="mdx-video" markdown>
  <div class="mdx-video__inner">
    <iframe src="https://streamable.com/e/yslhdu" allowfullscreen></iframe>
  </div>
  <figcaption markdown>
  </figcaption>
</figure>

### Inner Table

=== "C"

    ``` c
    #include <stdio.h>

    int main(void) {
      printf("Hello world!\n");
      return 0;
    }
    ```

=== "C++"

    ``` c++
    #include <iostream>

    int main(void) {
      std::cout << "Hello world!" << std::endl;
      return 0;
    }
    ```

### Annotations

!!! note "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.


=== "Unordered list"

    * Sed sagittis eleifend rutrum
    * Donec vitae suscipit est
    * Nulla tempor lobortis orci

=== "Ordered list"

    1. Sed sagittis eleifend rutrum
    2. Donec vitae suscipit est
    3. Nulla tempor lobortis orci


!!! note "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.



!!! abstract "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.


!!! todo "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! info "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! success "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! question "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.


!!! warning "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! fail "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! error "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! Bug "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! example "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

!!! quote "Phasellus posuere in sem ut cursus"

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

### Table

=== "Left"

    | Method      | Description                          |
    | ----------- | ------------------------------------ |
    | `GET`       | :material-check:     Fetch resource  |
    | `PUT`       | :material-check-all: Update resource |
    | `DELETE`    | :material-close:     Delete resource |

=== "Center"

    | Method      | Description                          |
    | :---------: | :----------------------------------: |
    | `GET`       | :material-check:     Fetch resource  |
    | `PUT`       | :material-check-all: Update resource |
    | `DELETE`    | :material-close:     Delete resource |

=== "Right"

    | Method      | Description                          |
    | ----------: | -----------------------------------: |
    | `GET`       | :material-check:     Fetch resource  |
    | `PUT`       | :material-check-all: Update resource |
    | `DELETE`    | :material-close:     Delete resource |



### Charts

``` mermaid
graph LR
  A[Start] --> B{Error?};
  B -->|Yes| C[Hmm...];
  C --> D[Debug];
  D --> B;
  B ---->|No| E[Yay!];
```


``` mermaid
sequenceDiagram
  Alice->>John: Hello John, how are you?
  loop Healthcheck
      John->>John: Fight against hypochondria
  end
  Note right of John: Rational thoughts!
  John-->>Alice: Great!
  John->>Bob: How about you?
  Bob-->>John: Jolly good!
```


``` mermaid
stateDiagram-v2
  state fork_state <<fork>>
    [*] --> fork_state
    fork_state --> State2
    fork_state --> State3

    state join_state <<join>>
    State2 --> join_state
    State3 --> join_state
    join_state --> State4
    State4 --> [*]
```

``` mermaid
classDiagram
  Person <|-- Student
  Person <|-- Professor
  Person : +String name
  Person : +String phoneNumber
  Person : +String emailAddress
  Person: +purchaseParkingPass()
  Address "1" <-- "0..1" Person:lives at
  class Student{
    +int studentNumber
    +int averageMark
    +isEligibleToEnrol()
    +getSeminarsTaken()
  }
  class Professor{
    +int salary
  }
  class Address{
    +String street
    +String city
    +String state
    +int postalCode
    +String country
    -validate()
    +outputAsLabel()  
  }
```


``` mermaid
erDiagram
  CUSTOMER ||--o{ ORDER : places
  ORDER ||--|{ LINE-ITEM : contains
  CUSTOMER }|..|{ DELIVERY-ADDRESS : uses
```



Lorem ipsum[^1] dolor sit amet, consectetur adipiscing elit.[^2]




[^1]: Lorem ipsum dolor sit amet, consectetur adipiscing elit.
[^2]: 
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.


### Formatting


#### Highlighting changes


Text can be {--deleted--} and replacement text {++added++}. This can also be
combined into {~~one~>a single~~} operation. {==Highlighting==} is also
possible {>>and comments can be added inline<<}.

{==

Formatting can also be applied to blocks by putting the opening and closing
tags on separate lines and adding new lines between the tags and the content.

==}


#### Highlighting text

- ==This was marked==
- ^^This was inserted^^
- ~~This was deleted~~


#### Sub- and superscripts

- H~2~0
- A^T^A


#### Adding keyboard keys

++ctrl+alt+del++


### emojis

:smile:


### Images

#### image

![images](https://opencollective-production.s3-us-west-1.amazonaws.com/79246e20-b283-11e7-aea9-770057e229d7.png){ width="480" }


#### figcaption

<figure markdown>
  ![Image title](https://opencollective-production.s3-us-west-1.amazonaws.com/79246e20-b283-11e7-aea9-770057e229d7.png){ width="300" }
  <figcaption>Image caption</figcaption>
</figure>


### Lists

#### Using unorder lists

- Nulla et rhoncus turpis. Mauris ultricies elementum leo. Duis efficitur
  accumsan nibh eu mattis. Vivamus tempus velit eros, porttitor placerat nibh
  lacinia sed. Aenean in finibus diam.

    * Duis mollis est eget nibh volutpat, fermentum aliquet dui mollis.
    * Nam vulputate tincidunt fringilla.
    * Nullam dignissim ultrices urna non auctor.


#### Using ordered lists

1.  Vivamus id mi enim. Integer id turpis sapien. Ut condimentum lobortis
    sagittis. Aliquam purus tellus, faucibus eget urna at, iaculis venenatis
    nulla. Vivamus a pharetra leo.

    1.  Vivamus venenatis porttitor tortor sit amet rutrum. Pellentesque aliquet
        quam enim, eu volutpat urna rutrum a. Nam vehicula nunc mauris, a
        ultricies libero efficitur sed.

    2.  Morbi eget dapibus felis. Vivamus venenatis porttitor tortor sit amet
        rutrum. Pellentesque aliquet quam enim, eu volutpat urna rutrum a.

        1.  Mauris dictum mi lacus
        2.  Ut sit amet placerat ante
        3.  Suspendisse ac eros arcu

#### task list

- [x] Lorem ipsum dolor sit amet, consectetur adipiscing elit
- [ ] Vestibulum convallis sit amet nisi a tincidunt
    * [x] In hac habitasse platea dictumst
    * [x] In scelerisque nibh non dolor mollis congue sed et metus
    * [ ] Praesent sed risus massa
- [ ] Aenean pretium efficitur erat, donec pharetra, ligula non scelerisque
