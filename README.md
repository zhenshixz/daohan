# 小智 AI 应用导航门户 (Smart Navigation Portal)

这是一个为部署在 Vercel 上的系列 AI 应用制作的**简约高颜值入口聚合页**。整体设计风格轻量优雅、色彩明快（非暗黑风），并包含实时搜索、分类检索以及高健壮性的 ICON 加载方案。

---

## 📂 项目结构

页面位于 `daohan` 目录下，结构清晰规范：

```text
daohan/
├── assets/
│   ├── xzmap.jpg       # 中国旅游地图 LOGO
│   ├── xzrl.png        # 3D 小智日历 ICON (Flash 生成)
│   └── zhoumoyou.jpg   # 周末轻松游 LOGO
├── index.html          # 主入口文件 (包含精美 SVG 备用图标及搜索过滤逻辑)
└── style.css           # 界面样式表 (包含柔和毛玻璃、流体动效及响应式布局)
```

---

## 🎨 核心设计与体验

1. **高端简约浅色调**：
   - 采用大气的线性渐变与三个在后台缓慢移动和缩放的模糊渐变球（Blob），营造现代感与空间深度。
   - 主体采用毛玻璃卡片（Glassmorphism），结合极细边框（`rgba(241, 245, 249, 0.8)`）与轻柔投影，视觉质感极佳。
2. **像素级一致的 ICON 加载机制**：
   - 对于已通过 AI 生成的 3 个 PNG 图标（`xzmap`、`xzrl`、`zhoumoyou`）直接读取使用。
   - 对于其他 3 个项目（由于生成限制暂无 PNG 图标），在 HTML 中通过 `onerror` 机制**无缝自动回退**到设计精美、颜色饱满的矢量 SVG 图标。
   - 如果未来在 `assets/` 放入对应的 PNG 图标（如 `xzgp.png`），页面会自动切换为 PNG 图标，无需修改任何代码。
3. **流畅的微动效**：
   - 卡片在悬停时会平滑上浮 `6px`，阴影向外扩散并带有微弱的主题色晕染。
   - 按钮和链接悬停时包含横向位移或轻微缩放。
4. **实时过滤与检索**：
   - **关键词搜索**：通过输入框实时匹配项目名称、分类标签及隐藏的关键字（包含拼音及英文缩写）。
   - **分类导航**：提供全部、旅游生活、效率工具、金融理财、AI 工具及资源检索六个标签页进行快速筛选。

---

## 🔗 聚合应用列表

| 应用名称 | 部署地址 | 分类标签 | 图标类型 |
| :--- | :--- | :--- | :--- |
| **中国旅游地图** | [xzmap.xzbest.site](https://xzmap.xzbest.site/) | 旅游生活 / 地图导览 | JPG (备用 SVG) |
| **周末轻松游** | [zmy.xzbest.site](https://zmy.xzbest.site) | 旅游生活 / AI 推荐 | JPG (备用 SVG) |
| **小智日历** | [xzrl.xzbest.site](https://xzrl.xzbest.site/) | 效率工具 / 智能日程 | PNG (备用 SVG) |
| **小智股票精选** | [xzgp.xzbest.site](https://xzgp.xzbest.site/) | 金融理财 / 风险预警 | 默认 SVG (支持 PNG 覆盖) |
| **星骏跨境多模态AI** | [xjzn.xzbest.site](https://xjzn.xjcerp.com/ -> xjzn.xzbest.site) | AI 工具 / 跨境出海 | 默认 SVG (支持 PNG 覆盖) |
| **小智云盘聚合搜索** | [wanpan.xzbest.site](https://wanpan.xzbest.site/) | 资源检索 / 极速去重 | 默认 SVG (支持 PNG 覆盖) |

---

## 🚀 部署至 Vercel

若要将该聚合页发布到 Vercel：
1. 本地直接在 Vercel CLI 执行：
   ```bash
   cd d:/anti/daohan
   vercel
   ```
2. 或将代码推送至 GitHub，在 Vercel 后台新建项目，选择 `daohan` 文件夹作为根目录（Root Directory）进行导入，构建命令保留为空，发布即可。
