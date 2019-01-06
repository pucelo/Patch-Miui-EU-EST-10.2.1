.class public Lcom/miui/whetstone/WhetstoneSysInfoManager;
.super Ljava/lang/Object;
.source "WhetstoneSysInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneSysInfoManager$1;,
        Lcom/miui/whetstone/WhetstoneSysInfoManager$Holder;
    }
.end annotation


# static fields
.field private static final FAIL:J = -0x1L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/whetstone/WhetstoneSysInfoManager;Lcom/miui/whetstone/IWhetstoneSysInfoService;)Lcom/miui/whetstone/IWhetstoneSysInfoService;
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/whetstone/WhetstoneSysInfoManager$1;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/WhetstoneSysInfoManager$1;-><init>(Lcom/miui/whetstone/WhetstoneSysInfoManager;)V

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/whetstone/WhetstoneSysInfoManager;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/whetstone/WhetstoneSysInfoManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/whetstone/WhetstoneSysInfoManager;
    .registers 1

    invoke-static {}, Lcom/miui/whetstone/WhetstoneSysInfoManager$Holder;->-get0()Lcom/miui/whetstone/WhetstoneSysInfoManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized bindWhetstoneSysInfoService(Landroid/content/Context;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-nez v2, :cond_3a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.miui.whetstone"

    const-string/jumbo v4, "com.miui.whetstone.sysinfo.WhetstoneSysInfoService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    sget-object v2, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bindWhetstoneSysInfoService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_43

    :goto_38
    monitor-exit p0

    return-void

    :cond_3a
    :try_start_3a
    sget-object v2, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "bindWhetstoneSysInfoService but mService is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_43

    goto :goto_38

    :catchall_43
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getSysInfo(Ljava/lang/String;)J
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    invoke-interface {v1, p1}, Lcom/miui/whetstone/IWhetstoneSysInfoService;->getSysInfo(Ljava/lang/String;)J
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_19
    .catchall {:try_start_1 .. :try_end_a} :catchall_38

    move-result-wide v2

    monitor-exit p0

    return-wide v2

    :cond_d
    :try_start_d
    sget-object v1, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSysInfo: Service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_19
    .catchall {:try_start_d .. :try_end_15} :catchall_38

    :goto_15
    const-wide/16 v2, -0x1

    monitor-exit p0

    return-wide v2

    :catch_19
    move-exception v0

    :try_start_1a
    sget-object v1, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSysInfo long RemoteException e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_38

    goto :goto_15

    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSysInfos([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    invoke-interface {v1, p1}, Lcom/miui/whetstone/IWhetstoneSysInfoService;->getSysInfos([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_18
    .catchall {:try_start_2 .. :try_end_b} :catchall_37

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_e
    :try_start_e
    sget-object v1, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSysInfo: Service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_18
    .catchall {:try_start_e .. :try_end_16} :catchall_37

    :goto_16
    monitor-exit p0

    return-object v4

    :catch_18
    move-exception v0

    :try_start_19
    sget-object v1, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSysInfo String[] RemoteException e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_37

    goto :goto_16

    :catchall_37
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unbindWhetstoneSysInfoService(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->mService:Lcom/miui/whetstone/IWhetstoneSysInfoService;

    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unbindWhetstoneSysInfoService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_20

    :goto_15
    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unbindWhetstoneSysInfoService but service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_15

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
