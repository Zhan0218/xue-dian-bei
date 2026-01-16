# Permissions

## User Management
- `users.view`: 查看用户列表/详情
- `users.ban`: 封禁/解封用户
- `users.export`: 导出用户数据
- `devices.view`: 查看设备列表

## Policy Management
- `policies.view`: 查看策略
- `policies.create`: 新建策略
- `policies.edit`: 编辑策略
- `policies.delete`: 删除策略
- `planTemplates.view`: 查看计划模板
- `planTemplates.create`: 新建模板
- `planTemplates.edit`: 编辑模板
- `planTemplates.delete`: 删除模板

## Support
- `tickets.view`: 查看工单
- `tickets.reply`: 回复工单

## Analytics
- `analytics.view`: 查看数据分析/事件

## Feature Flags
- `featureFlags.view`: 查看开关
- `featureFlags.edit`: 修改开关

## System
- `system.adminUsers.view`: 查看管理员
- `system.adminUsers.manage`: 管理管理员 (create/edit/delete)
- `system.rbac.view`: 查看角色权限
- `system.auditLogs.view`: 查看审计日志
- `system.config.view`: 查看配置
- `system.config.edit`: 修改配置

## Dashboard
- `dashboard.view`: 查看总览

---

# Roles

## Admin (admin)
- All permissions

## Operator (operator)
- users.view, users.ban
- policies.*, planTemplates.*
- tickets.*
- analytics.*
- dashboard.view
- (Cannot manage system users/roles/audit/config)

## Auditor (auditor)
- *.view (Read only)
- users.export
- system.auditLogs.view
