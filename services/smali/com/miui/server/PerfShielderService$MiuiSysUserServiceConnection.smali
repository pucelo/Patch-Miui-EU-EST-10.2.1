.class final Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;
.super Ljava/lang/Object;
.source "PerfShielderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MiuiSysUserServiceConnection"
.end annotation


# instance fields
.field private isServiceDisconnected:Z

.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method static synthetic -get0(Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->isServiceDisconnected:Z

    return v0
.end method

.method private constructor <init>(Lcom/miui/server/PerfShielderService;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->isServiceDisconnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;-><init>(Lcom/miui/server/PerfShielderService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->isServiceDisconnected:Z

    invoke-static {p2}, Lcom/android/internal/app/IMiuiSysUser$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMiuiSysUser;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setMiuiSysUser(Lcom/android/internal/app/IMiuiSysUser;)V

    iget-object v2, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v2}, Lcom/miui/server/PerfShielderService;->-get1(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$BindServiceHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->removeMessages(I)V

    :try_start_14
    const-string/jumbo v2, "PerfShielderService"

    const-string/jumbo v3, "MiuiSysUser service connected!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lcom/android/internal/app/IMiuiSysUser;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->this$0:Lcom/miui/server/PerfShielderService;

    iget-object v3, v3, Lcom/miui/server/PerfShielderService;->mMiuiSysUserDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_29} :catch_2a

    :goto_29
    return-void

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setMiuiSysUser(Lcom/android/internal/app/IMiuiSysUser;)V

    const-string/jumbo v0, "PerfShielderService"

    const-string/jumbo v1, "MiuiSysUser service disconnected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->isServiceDisconnected:Z

    iget-object v0, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->-get0(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->-get0(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v1}, Lcom/miui/server/PerfShielderService;->-get3(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_27
    return-void
.end method
