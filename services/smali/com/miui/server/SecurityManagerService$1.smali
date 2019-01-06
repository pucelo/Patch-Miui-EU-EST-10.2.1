.class Lcom/miui/server/SecurityManagerService$1;
.super Ljava/lang/Thread;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/SecurityManagerService;->checkSystemSelfProtection(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;

.field final synthetic val$onlyCore:Z


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;Z)V
    .registers 3

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    iput-boolean p2, p0, Lcom/miui/server/SecurityManagerService$1;->val$onlyCore:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    const/16 v12, 0xa

    invoke-static {v12}, Landroid/os/Process;->setThreadPriority(I)V

    sget-boolean v12, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v12, :cond_11c

    iget-boolean v12, p0, Lcom/miui/server/SecurityManagerService$1;->val$onlyCore:Z

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_11c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->-get0(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v7, 0x0

    :try_start_1e
    const-string/jumbo v12, "android"

    const/16 v13, 0x40

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_26} :catch_9d

    move-result-object v7

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->-wrap2(Lcom/miui/server/SecurityManagerService;)Z

    move-result v12

    if-eqz v12, :cond_36

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v12, v10}, Lcom/miui/server/SecurityManagerService;->-wrap6(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;)V

    :cond_36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v12, "com.lbe.security.miui"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "com.android.updater"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "com.miui.securitycenter"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "com.xiaomi.finddevice"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "com.miui.home"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "com.miui.guardprovider"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "com.miui.gallery"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v12, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v12, :cond_87

    sget-boolean v12, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_87

    sget-boolean v12, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_87

    const-string/jumbo v12, "com.miui.player"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "com.android.browser"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "com.xiaomi.market"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_aa

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v12, v11, v8}, Lcom/miui/server/SecurityManagerService;->-wrap4(Lcom/miui/server/SecurityManagerService;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    goto :goto_8b

    :catch_9d
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "System error: cannot find android package."

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_aa
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string/jumbo v13, "com.android.updater"

    const/4 v14, 0x1

    invoke-static {v12, v10, v13, v14}, Lcom/miui/server/SecurityManagerService;->-wrap5(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string/jumbo v13, "com.miui.securitycenter"

    const/4 v14, 0x0

    invoke-static {v12, v10, v13, v14}, Lcom/miui/server/SecurityManagerService;->-wrap5(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string/jumbo v13, "com.xiaomi.finddevice"

    const/4 v14, 0x1

    invoke-static {v12, v10, v13, v14}, Lcom/miui/server/SecurityManagerService;->-wrap5(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    sget-boolean v12, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v12, :cond_de

    sget-boolean v12, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_de

    sget-boolean v12, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_de

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string/jumbo v13, "com.xiaomi.market"

    const/4 v14, 0x0

    invoke-static {v12, v10, v13, v14}, Lcom/miui/server/SecurityManagerService;->-wrap5(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    :cond_de
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->-wrap1(Lcom/miui/server/SecurityManagerService;)Z

    move-result v6

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->-wrap2(Lcom/miui/server/SecurityManagerService;)Z

    move-result v12

    if-eqz v12, :cond_11f

    xor-int/lit8 v12, v6, 0x1

    if-eqz v12, :cond_11f

    const-string/jumbo v12, "SecurityManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "nativeIsReleased set and "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v13, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->-wrap0(Lcom/miui/server/SecurityManagerService;)Z

    move-result v12

    if-eqz v12, :cond_11d

    const/4 v12, 0x1

    :goto_115
    invoke-static {v13, v12}, Lcom/miui/server/SecurityManagerService;->-set0(Lcom/miui/server/SecurityManagerService;I)I

    :goto_118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_11c
    return-void

    :cond_11d
    const/4 v12, 0x0

    goto :goto_115

    :cond_11f
    const-string/jumbo v12, "SecurityManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "nativeIsReleased not set or "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_118
.end method
