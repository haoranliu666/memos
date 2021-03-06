# markdown_memo

##  Markdown 命令备忘录

1. **粗体** `**粗体**`

1. ***斜体*** `*斜体*`

1. **标题** 一级标题 `##`, `###`

1. **段落** 行结尾加两个空格

1. **分割线** `---` 效果如下
---

1. **无序列表**
- 一级 `- 一级` (`-` 后有空格)
    - 二级 `Tab - 二级` (`-`前有Tab制表符)
        - 三级 `Tab Tab - 三级` (`-`前有两个Tab)
        - 三级
        - 三级
    - 二级
    - 二级
- 一级

1. **有序列表** `1. ` 类似无序列表

1. ~~删除线~~ `~~删除线~~`

1. > 引用块 (非正文内容) `>`

1. **转义** \> 在写作内容和 Markdown 语法冲突时, 例如`>`, 在前面添加反斜线 `\` 即可

1. **插入网页** [baidu](http://www.baidu.com "百度") `[baidu](http://www.baidu.com)`

1. **插入图片** ![百度国庆](https://images.gitee.com/uploads/images/2019/1007/144613_884dcad2_5298849.gif "百度国庆") `![百度国庆]](https://images.gitee.com/uploads/images/2019/1007/144613_884dcad2_5298849.gif "百度国庆")`

1. **表格** `:`表示对齐方式

|Left|Middle|Right|
|:---|:----:|----:|
|1   |1     |1    |
|123 |123   |123  |
~~~
|Left|Middle|Right|
|:---|:----:|----:|
|1   |1     |1    |
|123 |123   |123  |
~~~

1. [Markdown数学公式](https://blog.csdn.net/katherine_hsr/article/details/79179622)
[希腊字母对照表](https://www.rapidtables.com/math/symbols/greek_alphabet.html)

$$ \cos (2\theta)=\cos^{\lim _{x \to \infty} \exp (-x)}\theta-\sin^2\theta + \sum ^n _{i=1} \phi^{2^{z_1}}_i $$

$$
\begin{bmatrix}
1 & 2 & 3 \\
4 & 5 & 6 \\
7 & 8 & 9
\end{bmatrix}
$$

1. **代码块**
~~~
这是代码块, 不用担心和 Markdown 语法冲突
> Hello World!
~~~

使用方法: 将代码块上下两行插入行 `~~~`
