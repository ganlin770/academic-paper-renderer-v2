# 📚 Academic Paper Renderer

一个专业的学术论文写作和渲染平台，支持 Markdown 编辑、LaTeX 公式、SVG 图表，具备完整的用户系统和版本管理功能。

## ✨ 功能特性

### 🎯 核心功能
- **📝 Markdown 编辑器**: 支持实时预览的富文本编辑器
- **🧮 LaTeX 公式渲染**: 完整支持数学公式和符号
- **📊 SVG 图表渲染**: 直接渲染 SVG 代码生成高质量图表
- **👁️ 实时预览**: 所见即所得的编辑体验
- **📥 多格式导出**: 支持 PDF、HTML、Markdown 格式导出

### 👥 用户系统
- **🔐 安全认证**: 基于 Supabase Auth 的完整用户系统
- **👤 个人工作空间**: 每个用户独立的论文管理空间
- **🤝 协作功能**: 支持多人协作编辑和评论
- **🛡️ 权限管理**: 灵活的访问权限控制

### 🔄 版本管理
- **📚 版本控制**: 完整的论文版本历史追踪
- **🔍 差异对比**: 版本间内容变更可视化
- **↩️ 回滚功能**: 轻松恢复到任意历史版本
- **🏷️ 标签系统**: 为重要版本添加标签标记

### 🎨 界面设计
- **🌙 深色模式**: 支持浅色/深色主题切换
- **📱 响应式设计**: 完美适配桌面端和移动端
- **⚡ 性能优化**: 基于 Next.js 14 的极速加载体验
- **🎯 直观交互**: 符合学术写作习惯的用户界面

## 🏗️ 技术架构

### 前端技术栈
```
Next.js 14 (App Router)    # React 全栈框架
TypeScript                # 类型安全的 JavaScript
Tailwind CSS              # 原子化 CSS 框架
React Hook Form           # 高性能表单处理
Zustand                   # 轻量级状态管理
Monaco Editor             # VS Code 编辑器内核
```

### 后端技术栈
```
Supabase                  # 后端即服务 (BaaS)
├── PostgreSQL           # 关系型数据库
├── Auth                 # 用户认证系统
├── Storage              # 文件存储服务
├── Real-time            # 实时数据同步
└── Edge Functions       # 服务端逻辑
```

### 渲染引擎
```
react-markdown            # Markdown 渲染
KaTeX                     # LaTeX 数学公式
SVG                       # 矢量图形渲染
Prism.js                  # 代码语法高亮
```

### 部署平台
```
Vercel                    # 前端部署平台
├── Edge Runtime         # 边缘计算
├── Serverless Functions # 无服务器函数
└── CDN                  # 全球内容分发
```

## 🚀 快速开始

### 环境要求
```bash
Node.js >= 18.0.0
npm >= 9.0.0
```

### 1. 克隆项目
```bash
git clone https://github.com/ganlin770/academic-paper-renderer-v2.git
cd academic-paper-renderer-v2
```

### 2. 安装依赖
```bash
npm install
```

### 3. 环境配置
创建 `.env.local` 文件：
```env
# Supabase 配置
NEXT_PUBLIC_SUPABASE_URL=your_supabase_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key
SUPABASE_SERVICE_ROLE_KEY=your_service_role_key

# 应用配置
NEXT_PUBLIC_APP_URL=http://localhost:3000
```

### 4. 数据库初始化
```bash
# 运行数据库迁移
npm run db:migrate

# 生成类型定义
npm run db:types
```

### 5. 启动开发服务器
```bash
npm run dev
```

访问 http://localhost:3000 查看应用

## 🚀 部署指南

本项目配置了自动部署到 Vercel。当代码推送到 GitHub 时，会自动触发部署流程。

### 环境变量配置
在 Vercel 中需要配置以下环境变量：
- `NEXT_PUBLIC_SUPABASE_URL`
- `NEXT_PUBLIC_SUPABASE_ANON_KEY`
- `SUPABASE_SERVICE_ROLE_KEY`
- `NEXT_PUBLIC_APP_URL`

## 📄 许可证

MIT License - 查看 [LICENSE](LICENSE) 文件了解详情。

## 🙏 致谢

感谢以下开源项目的支持：
- [Next.js](https://nextjs.org/)
- [Supabase](https://supabase.com/)
- [Tailwind CSS](https://tailwindcss.com/)
- [Monaco Editor](https://microsoft.github.io/monaco-editor/)
- [KaTeX](https://katex.org/)

---

⭐ 如果这个项目对你有帮助，请给它一个星标！