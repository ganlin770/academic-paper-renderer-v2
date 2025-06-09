#!/bin/bash

# 🚀 Academic Paper Renderer - 一键部署到 Vercel 脚本
# 使用说明：
# 1. 安装 Vercel CLI: npm i -g vercel
# 2. 登录 Vercel: vercel login
# 3. 运行脚本: chmod +x deploy-to-vercel.sh && ./deploy-to-vercel.sh

echo "🚀 开始部署 Academic Paper Renderer 到 Vercel..."

# 检查是否安装了 Vercel CLI
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI 未安装，正在安装..."
    npm install -g vercel
fi

# 登录检查
echo "📋 检查 Vercel 登录状态..."
vercel whoami > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "🔐 请先登录 Vercel..."
    vercel login
fi

echo "📦 安装项目依赖..."
npm install

echo "🏗️ 构建项目..."
npm run build

echo "🔧 设置环境变量..."

# 设置 Supabase URL
echo "https://usyeheyrggjnpsaaccsx.supabase.co" | vercel env add NEXT_PUBLIC_SUPABASE_URL production --force

# 设置 Supabase Anon Key
echo "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVzeWVoZXlyZ2dqbnBzYWFjY3N4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDkyOTE5NDMsImV4cCI6MjA2NDg2Nzk0M30.6tBgGrzz1nmmunapxtqdoYWpcs0JEUqutDVOj2Qytm0" | vercel env add NEXT_PUBLIC_SUPABASE_ANON_KEY production --force

# 设置 Supabase Service Role Key
echo "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVzeWVoZXlyZ2dqbnBzYWFjY3N4Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0OTI5MTk0MywiZXhwIjoyMDY0ODY3OTQzfQ.VfqK9NoYOtUvKjTcrQ58XXu7lnJaNgMhxvkYzTOp2Tk" | vercel env add SUPABASE_SERVICE_ROLE_KEY production --force

# 设置 App URL
echo "https://academic-paper-renderer-v2.vercel.app" | vercel env add NEXT_PUBLIC_APP_URL production --force

echo "🌍 部署到生产环境..."
vercel --prod --confirm

echo "✅ 部署完成！"
echo "🔗 访问你的应用: https://academic-paper-renderer-v2.vercel.app"

# 显示部署信息
echo "📊 部署信息:"
vercel ls