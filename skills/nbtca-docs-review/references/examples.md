# Examples

Every 原文 is a sentence from the site. Each shows one finding as it should appear in a report.

## 行文

**Praise in place of a description** (`repair/tools.md`)

- 原文：“Everything 强大的文件搜索工具，帮助您快速定位计算机上的文件和文件夹。凭借其小的安装文件、干净而简单的用户界面、快速的文件索引和快速搜索能力，Everything 使得找到您要寻找的内容变得轻松。”
- 问题：两句话只说了一件事，就是它能搜文件。其余都是评价，读者没法据此决定用不用。
- 改法：“Everything：搜索电脑上的文件和文件夹。”

**A degree word with no number** (`tutorial/manual/windows-from-scratch.md`)

- 原文：“建议安装 uBlock Origin 扩展来屏蔽广告，显著提升浏览体验。”
- 问题：“显著提升浏览体验”没有告诉读者任何事，屏蔽广告本身已经是理由。
- 改法：“安装 uBlock Origin 扩展来屏蔽广告。”

**A sign-off** (`repair/tools.md`)

- 原文：“感谢您的访问，祝您使用愉快！😊”
- 问题：读者读到这里已经拿到了要的东西，这句话不带任何信息。
- 改法：删掉。

## 结构

**A title that names the document, not the task** (`tutorial/manual/tailscale-usage.md`)

- 原文：“# 社团自建 Tailscale 使用指南”
- 问题：标题说的是这份文档叫什么，没说读者能用它做成什么。“使用指南”四个字放在哪一页都成立。
- 改法：改成“用 Tailscale 访问协会内部服务”，这是页面第一段自己说的用途。H1 决定侧边栏里的名字，不影响网址。

For comparison, three titles on the site that already work: “写一页文档”, “借教室”, “配一台能跑本站的电脑”.

**A heading that names a topic, not a situation** (`tutorial/manual/tailscale-usage.md`)

- 原文：“### 部分代理软件不能与Tailscale同时使用的解决方案”
- 问题：读者是带着症状来找的，标题却是一个名词短语，扫一眼认不出是不是自己的情况。
- 改法：改成“如果代理软件和 Tailscale 不能同时使用”。改小标题会改变锚点，要先查有没有别的页面链到这里。

**A manual that stops to sell** (`tutorial/manual/tailscale-usage.md`)

- 原文：“### 主要功能和优势”一节的七条，以及“### 使用场景”一节的四条。
- 问题：这是手册，读者已经决定要接入了。这两节没有一条会改变他接下来的操作，却把“准备工作”推到了第二屏。
- 改法：删掉这两节。“它是怎么工作的”那一段解释了后面的配置项，可以留下，或者移到教程里再链过来。

**A page that does several jobs** (`repair/guide.md`)

- 原文：全页 299 行，依次是安全、维修前沟通、故障诊断、软件维护、重装系统、拆机和各厂商 BIOS 入口表。
- 问题：一句话说不出读者读完能做成什么。来查 BIOS 按键的人要翻过两百多行，来学诊断的人又会被重装步骤打断。
- 改法：按任务拆成几页，本页留作入口，各节只留一句话加链接。拆页会改变网址和导航，要另开 PR，并先和页面的维护者商量。

**A promise the page does not keep** (`tutorial/manual/tailscale-usage.md`)

- 原文：开头说“这份指南讲它怎么工作、各平台客户端怎么接入，以及连不上时怎么排查”。
- 问题：正文没有排查的内容，照着做却连不上的读者到这里就没有下一步了。
- 改法：请作者补上排查一节，或者把开头那半句删掉，并在结尾写明连不上时找谁。排查步骤要由作者提供，不由审稿人代写。

## 需要核实

**A hedge whose condition the page does not give** (`repair/guide.md`)

- 原文：“视情况使用镊子或手断开电源排线。”
- 问题：什么情况用镊子、什么情况用手，页面没有说。新人恰恰是在这一步需要判断依据。
- 问作者：哪种排线或卡扣要用镊子？答案补上之前，这句保持原样。

**A hedge the page partly answers** (`tutorial/manual/tailscale-usage.md`)

- 原文：“通常不需要使用pre auth key，正常启动会跳转使用统一身份认证，如有需要请在连接一台设备后，联系社团管理员获取预注册密钥（Pre-auth key）。”
- 改法（行文部分）：“正常启动会跳转到统一身份认证，不需要预注册密钥（pre-auth key）。”
- 问作者：什么情况下才需要预注册密钥？知道之后，后半句才能写成“如果……，先连上一台设备，再联系社团管理员获取”。

**Advice with nothing to act on** (`repair/guide.md`)

- 原文：“如果需要物理维护，请小心谨慎。”
- 问题：读者不知道该小心什么。
- 问作者：这里要防的是什么，静电、划伤还是排线？说不出具体的，这句就该删。

**A contradiction inside the page** (`tutorial/manual/tailscale-usage.md`)

- 原文：启动步骤里创建的目录是 `tailscale-state`，compose 文件挂载的却是 `./tailscale-data`。
- 问作者：哪一个是对的？审稿人指出矛盾，不替作者选。
