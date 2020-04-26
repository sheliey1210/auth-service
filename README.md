### 权限服务

> 关于`系统`与`权限`说明

* 一个`系统`可以包含`访问权限`和`操作权限`

* `访问权限` 指是否可以访问系统中某个菜单，所以一般提及访问权限范指能否访问系统中某个菜单

* `操作权限` 指是否可以操作页面中某个按钮，一般这个操作对应后台服务某个方法

> 关于`角色`与`权限`说明

* 根据不同人员使用的权限不同，可以划分为不同的角色，比如管理员可以有增、删、改、查权限，而操作员只需增、查权限，`管理员`和`操作员`就是所谓的角色

* 一个角色可以拥有多个访问权限和多个操作权限

> 关于数据库表的说明

* t_staff （员工表)
  * username 登录时用户名，用户手机号

  * password 用户密码

  * name 用户中文名

  * token 用户登录成功后，自动生成的一个身份ID，在请求后端接口时可通过此字段鉴别用户

* t_app （应用服务)

* t_menu （应用菜单）

  * code 菜单编码，以 'ACCESS_' 开头

  * name 菜单名称

  * uri 菜单对应uri，如： www.baidu.com/api/user, 则对应uri为：`/api/user`

  * visible 是否可见

* t_role （角色表）
  
  * code 角色编码  如：MARKET_MANAGER(市场管理员），MARKET_OPERATOR(市场操作员）

* t_permission (操作权限表）

  * code 权限编码，如：MARKET_ADD, MARKET_UPDATE, MARKET_LIST(查看）

  * uri 权限对应的后端接口uri，如：www.baidu.com/api/user, 则对应uri为：`/api/user`

* t_staff_role 用户角色关联表

* t_role_permission 角色权限关联表


