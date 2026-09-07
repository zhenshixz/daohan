# 小智 AI 应用导航门户 (Smart Navigation Portal)

这是一个为部署在 Vercel 及云端的系列产品打造的**高颜值轻量入口聚合页**。整体采用现代日间浅色毛玻璃风格，色彩明快通透，包含全域实时搜索、多分类即时过滤以及高健壮性的双轨图标加载方案。

---

## 📂 项目结构

```text
daohan/
├── assets/                  # 静态应用图标 (png / jpg)
│   ├── shitou.png           # 手头剪子布
│   ├── voice.png            # 音画随心
│   ├── xxtf.png             # 汐汐公主城堡防御
│   ├── xzchuxin.png         # 小智出行
│   ├── xzmap.jpg            # 中国旅游地图
│   ├── xzrl.png             # 小智日历
│   └── zhoumoyou.jpg        # 周末轻松游
├── index.html               # 门户主入口 (含卡片网格、双轨图标与即时过滤)
├── style.css                # 现代浅色毛玻璃界面样式表
├── run.bat                  # 本地启动脚本 (自动映射真实IP与局域网热更新)
└── README.md                # 项目概要与部署说明
```

---

## 🎨 核心特性

1. **日间高级浅色风**：柔和毛玻璃质感（`backdrop-filter: blur(12px)`）搭配纯 CSS 动态渐变浮球光晕，视觉通透、富有呼吸感。
2. **双轨容错图标机制**：优先读取 `assets/` 高清实体图，加载异常自动触发 `onerror` 降级为专属配色矢量 SVG，确保界面永不裂图。
3. **实时检索与分类过滤**：支持应用名称、拼音与多维度标签即时模糊搜索，并配备空状态重置交互。
4. **极致轻量零依赖**：原生 HTML5 + Vanilla CSS + ES6+，无框架与打包环节，秒级加载。

---

## 🔗 聚合应用矩阵 (10 Apps)

| 应用名称 | 线上地址 | 分类标签 | 功能简介 |
| :--- | :--- | :--- | :--- |
| **中国旅游地图** | [xzmap.xzbest.site](https://xzmap.xzbest.site/) | 旅游生活 | 省份地标深度探索与旅行足迹管理 |
| **周末轻松游** | [zmy.xzbest.site](https://zmy.xzbest.site) | 旅游生活 | 周边吃住行游娱 AI 智能短途定制 |
| **小智日历** | [xzrl.xzbest.site](https://xzrl.xzbest.site/) | 效率工具 | 极简日程规划与待办时间助手 |
| **小智股票精选** | [xzgp.xzbest.site](https://xzgp.xzbest.site/) | 金融理财 | A股基本面诊断与退市/ST风险预警 |
| **星骏跨境多模态AI** | [xjzn.xzbest.site](https://xjzn.xzbest.site/) | AI 工具 | 跨境出海图影生成与退款原因分析 |
| **小智云盘聚合搜索** | [wanpan.xzbest.site](https://wanpan.xzbest.site/) | 资源检索 | 跨网盘公开资源一站式极速去重搜索 |
| **手头剪子布大作战** | [shitou.xzbest.site](https://shitou.xzbest.site/) | 游戏娱乐 | 移动端极简经典休闲对战游戏 |
| **汐汐公主城堡防御** | [xxtf.xzbest.site](https://xxtf.xzbest.site/) | 游戏娱乐 | 魔法少女策略城堡防守塔防 |
| **小智出行** | [xzchuxin.xzbest.site](https://xzchuxin.xzbest.site/) | 旅游生活 | 12306火车票与直飞航班双轨比价 |
| **音画随心** | [voice.xzbest.site](https://voice.xzbest.site/) | 效率工具 | 极速音轨替换、MP3混音、时间改写与无损音量放大 |

---

## 🚀 本地运行与部署

### 1. 本地启动
双击 `run.bat` 即可启动本地 HTTP 服务。脚本会自动检测并排除虚拟网卡，打印 Local 与 LAN 局域网访问地址；前端修改刷新即生效（无需重启）。

### 2. Vercel 部署
推送至 GitHub 后，在 Vercel 导入该仓库：
- **Root Directory**：设置为 `daohan`
- **Build Command**：留空
- 点击 **Deploy** 即可极速发布。
