# 学点呗 - 后台管理系统

iOS-only 项目「学点呗」的后台管理系统。
基于 Vue 3 + Vite + TypeScript + Ant Design Vue 开发。
全本地 Mock 数据，无需后端服务器即可运行。

## 🚀 极速上手 (Windows)

1. **双击运行** 根目录下的 `start_admin.bat`
   - 脚本会自动检测 Node.js 环境
   - 自动安装依赖 (pnpm)
   - 自动启动服务并打开浏览器

2. **登录演示账号**
   - **超级管理员**: `admin` / `admin123` (拥有所有权限)
   - **运营人员**: `operator` / `op123` (无法管理账号/权限)
   - **审计人员**: `auditor` / `audit123` (只读权限)

3. **重置数据**
   - 如果演示数据乱了，双击 `reset_mock_data.bat`
   - 或者在系统内点击“重置演示数据”按钮

## 📚 演示路线 (3分钟)

1. **Dashboard**: 查看聚合的 Mock 数据指标、趋势图、漏斗图。
2. **用户管理**: 搜索用户，查看详情(多Tab)，尝试**封禁**用户(红名操作+审计)。
3. **策略管理**: 新建/编辑拦截策略，查看“强拦截”与“仅提醒”的区别。
4. **工单系统**: 查看用户反馈，以客服身份回复工单。
5. **系统设置**:
   - **RBAC**: 切换不同账号登录，观察菜单和按钮的变化。
   - **审计日志**: 查看刚才的“封禁”或“修改策略”操作是否被记录。
   - **配置中心**: 修改全局配置。

## 🛠️ 技术栈

- **Core**: Vue 3, Vite, TypeScript (Strict)
- **UI**: Ant Design Vue, Tailwind CSS (via inline styles/classes)
- **State**: Pinia
- **Router**: Vue Router (Dynamic Permissions)
- **Network**: Axios + TanStack Query (Vue Query)
- **Mock**: MSW (Mock Service Worker) - 拦截请求模拟真实后端
- **Charts**: ECharts
- **Tests**: Vitest

## 📂 目录结构

```
src/
├── api/          # Axios 封装与 API Client
├── components/   # 通用组件 (ProTable, SearchForm, etc.)
├── mocks/        # MSW Mock 数据与 Handlers
├── pages/        # 页面视图 (按模块划分)
├── router/       # 路由配置
├── stores/       # Pinia 状态管理
├── types/        # TypeScript 类型定义
└── utils/        # 工具函数
```

## ❓ 常见问题

- **Q: 浏览器打开是空白？**
  - A: 请检查控制台是否有报错。首次加载可能需要几秒钟编译。
- **Q: 依赖安装失败？**
  - A: 请确保网络畅通，或尝试手动运行 `npm install -g pnpm` 然后 `pnpm install`。
- **Q: 端口 5173 被占用？**
  - A: Vite 会自动切换到下一个端口 (5174)，请留意命令行输出。
