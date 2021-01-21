# NtrQQ设置
个人的NtrQQ设置备份



#### 绿色版制作过程：

1. 解压缩QQ安装包中的File文件夹
2. 在根目录使用QQ精简脚本
3. 删除Plugin目录下一系列无用插件(详见下方标记为 [删] 的插件)
4. 放置NtrQQ插件至bin目录或者使用去校验补丁
5. 解压缩QQ安装包中的.rsrc/2052/MSI/102，提取TXSSOSetup.exe，并解压TXSSOSetup.exe中的TXSSO文件夹至bin目录
6. 放置VideoShowPlayerInstall至bin目录

7. 放置QQ绿化脚本至根目录并使用



#### 插件目录详解

[删] Com.Tencent.Advertisement（广告插件，可删。）

Com.Tencent.AppStore（腾讯的游戏中心，不用可删。）

Com.Tencent.AudioVideo（重要组件，语言视频功能，从QQ8.x版本后，腾讯课题、兴趣部落也关联在里面。）

Com.Tencent.BabyQ（腾讯QQ群的图灵机器人，可删。）

Com.Tencent.CRM（企业好友）

Com.Tencent.FileTransfer（重要组件，发送接收文件。）

Com.Tencent.GameLife（游戏人生，腾讯游戏爱好者需要，不用可删。）

[删] Com.Tencent.Graffito（QQ8.8已移除了涂鸦编辑和魔法表情，取而代之的是表情DIY，已经不依赖这个插件，可删。）

[删] Com.Tencent.HRTX（基本没人用的，叫什么腾讯通，可删。）

[删] Com.Tencent.IOT（智能物联？对大多人没有什么用，可删。）

Com.Tencent.Mail（邮件，删除后没有快捷邮箱入口，也不会提示有新邮件。）

Com.Tencent.MMOG（QQ网游，腾讯提供多人电脑游戏联机服务的相关插件，不用可删。）

Com.Tencent.MobileGame （手游中心，应用盒子点击它会下载腾讯模拟器，可删。）

Com.Tencent.MsgBackup （9.1版本新增的消息备份转移功能）

Com.Tencent.NetBar（网吧，在QQ合作的网吧登录，可享受经验值加成、免费道具等丰富多彩的活动和奖品，不用可删。）

Com.Tencent.NetDisk（重要组件，关联微云，群共享等。）

Com.Tencent.PayCenter（我的钱包，支付组件，不用可删。）

Com.Tencent.QQGame（QQ游戏，不用可删。）

Com.Tencent.QQLive（腾讯视频，不用可删。）

Com.Tencent.QQMusic（QQ音乐。他人转发的音乐是依赖于TXSSO\QzoneMusic来播放，而不是这个插件。从QQ9.0.3开始，如果删除此插件，好友或者群里发的链接，选择打开会没有任何反应，无法通过默认浏览器打开。）

[删] Com.Tencent.QQRing（会员炫铃，不用可删。9.x版本后已经下线了。）

Com.Tencent.QQShow（QQ秀，如果打了“去所有QQ秀框架补丁”则可删。）

Com.Tencent.QQVip（会员服务增值入口等。）

Com.Tencent.QQWebsite（QQ订阅等，关联迷你资讯，不用可删。以前叫QQ书签。）

Com.Tencent.Qzone（QQ空间，删除后无主面板快捷图标，无法在最近联系人中点开空间动态回复。）

Com.Tencent.RemoteControl（远程协助核心控制模块）

Com.Tencent.RemoteHelp（远程协助）

Com.Tencent.SNSApp（社交模块，关联多个功能，比如抖动等。）

[删] Com.Tencent.Soso（腾讯搜搜，聊天窗口那个搜索图标和涂黑聊天信息显示搜索，可删。9.x版本已经下线了。）

[删] Com.Tencent.Stock（财经股票，专业玩股票的估计也不用腾讯的这东西，可删。）

Com.Tencent.Today（迷你腾讯，和QQ订阅相互关联，可删。）

[删] Com.Tencent.Tribe（兴趣部落，兴趣社交产品，帮助你找到趣味相投的那群人，可删。9.x版本下线了。）

Com.Tencent.VAS（会员增值服务，会员专用。）

[删] Com.Tencent.WBlog（腾讯微博，项目组都解散了，还留着干毛，删。）

Com.Tencent.Weather（腾讯天气）

[删] Com.Tencent.WenWen（随着腾讯搜搜业务的死掉，这东西真没必要留着，删。）

Com.Tencent.Winks（作为魔法表情已在QQ8.8被移除了，但是从QQ8.0开始新增的送礼物的播放仍需要此插件。）

Com.Tencent.Wireless（无线组件，关联主面板我的设备显示，发送到手机功能。）

Com.Tencent.XiuRoom（腾讯课堂、花样交友、花样直播、齐齐直播；群视频功能也需要Bin目录下的odProxy.dll和本插件，后台下载的群视频组件目录是%AppData%\od。）