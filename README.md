# Academic Paper Renderer

学术论文渲染器 - 基于 Next.js 15 和 Supabase 的现代化学术论文管理平台

## 功能特性

- 📝 **Markdown 编辑器**: 基于 Monaco Editor 的专业编辑体验
- 🔬 **LaTeX 数学公式**: 支持复杂数学公式渲染
- 📊 **图表支持**: SVG 图表和数据可视化
- 👥 **协作功能**: 实时多人协作编辑
- 📱 **响应式设计**: 完美适配桌面和移动设备
- 🔐 **用户认证**: 基于 Supabase 的安全认证系统

## 技术栈

- **前端**: Next.js 15, React 19, TypeScript
- **样式**: Tailwind CSS, Radix UI
- **后端**: Supabase (数据库 + 认证 + 实时功能)
- **编辑器**: Monaco Editor, React Markdown
- **数学渲染**: KaTeX
- **部署**: Vercel

## 快速开始

### 环境要求

- Node.js 18+
- npm 或 yarn
- Supabase 账户

### 安装依赖

```bash
npm install
```

### 环境配置

创建 `.env.local` 文件：

```bash
NEXT_PUBLIC_SUPABASE_URL=your_supabase_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key
SUPABASE_SERVICE_ROLE_KEY=your_service_role_key
NEXT_PUBLIC_APP_URL=http://localhost:3000
```

### 数据库设置

```bash
# 安装 Supabase CLI
npm install -g supabase

# 登录 Supabase
supabase login

# 运行数据库迁移
npm run db:migrate
```

### 启动开发服务器

```bash
npm run dev
```

访问 [http://localhost:3000](http://localhost:3000) 查看应用。

## 部署

查看 [DEPLOYMENT.md](./DEPLOYMENT.md) 了解详细的部署指南。

## 贡献

欢迎提交 Issue 和 Pull Request！

## 许可证

MIT License