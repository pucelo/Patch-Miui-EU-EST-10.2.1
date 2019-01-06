.class Lcom/miui/server/SecurityManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mAccessControlLockConvenientUri:Landroid/net/Uri;

.field private final mAccessControlLockEnabledUri:Landroid/net/Uri;

.field private final mAccessControlLockModedUri:Landroid/net/Uri;

.field private final mAccessMiuiOptimizationUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;


# direct methods
.method public constructor <init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v1, "access_control_lock_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockEnabledUri:Landroid/net/Uri;

    const-string/jumbo v1, "access_control_lock_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockModedUri:Landroid/net/Uri;

    const-string/jumbo v1, "access_control_lock_convenient"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockConvenientUri:Landroid/net/Uri;

    const-string/jumbo v1, "miui_optimization"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessMiuiOptimizationUri:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockEnabledUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockModedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockConvenientUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessMiuiOptimizationUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/server/SecurityManagerService$SettingsObserver;->onChange(ZLandroid/net/Uri;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 7

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v1, p3}, Lcom/miui/server/SecurityManagerService;->-wrap3(Lcom/miui/server/SecurityManagerService;I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v1, v0}, Lcom/miui/server/SecurityManagerService;->-wrap7(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    :cond_16
    :goto_16
    monitor-exit v2

    return-void

    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockModedUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v1, v0}, Lcom/miui/server/SecurityManagerService;->-wrap9(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_26

    goto :goto_16

    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessControlLockConvenientUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v1, v0}, Lcom/miui/server/SecurityManagerService;->-wrap8(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V

    goto :goto_16

    :cond_37
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->mAccessMiuiOptimizationUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$SettingsObserver;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v1, v0}, Lcom/miui/server/SecurityManagerService;->-wrap10(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_26

    goto :goto_16
.end method
