.class public Lcom/miui/daemon/performance/PerfShielderManager;
.super Ljava/lang/Object;
.source "PerfShielderManager.java"


# static fields
.field public static final PerfShieldService:Ljava/lang/String; = "perfshielder"

.field private static volatile sPerfManager:Lcom/android/internal/app/IPerfShielder;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkService()Z
    .registers 1

    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static getFreeMemory()Ljava/lang/Long;
    .registers 4

    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->checkService()Z

    const-wide/16 v2, 0x0

    sget-object v1, Lcom/miui/daemon/performance/PerfShielderManager;->sPerfManager:Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_f

    :try_start_9
    sget-object v1, Lcom/miui/daemon/performance/PerfShielderManager;->sPerfManager:Lcom/android/internal/app/IPerfShielder;

    invoke-interface {v1}, Lcom/android/internal/app/IPerfShielder;->getFreeMemory()J
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_14

    move-result-wide v2

    :cond_f
    :goto_f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :catch_14
    move-exception v0

    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method

.method public static getService()Lcom/android/internal/app/IPerfShielder;
    .registers 4

    sget-object v1, Lcom/miui/daemon/performance/PerfShielderManager;->sPerfManager:Lcom/android/internal/app/IPerfShielder;

    if-nez v1, :cond_1d

    const-class v2, Lcom/miui/daemon/performance/PerfShielderManager;

    monitor-enter v2

    :try_start_7
    sget-object v1, Lcom/miui/daemon/performance/PerfShielderManager;->sPerfManager:Lcom/android/internal/app/IPerfShielder;

    if-nez v1, :cond_1c

    const-string/jumbo v1, "perfshielder"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IPerfShielder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPerfShielder;

    move-result-object v0

    const-class v1, Lcom/miui/daemon/performance/PerfShielderManager;

    monitor-enter v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_23

    :try_start_19
    sput-object v0, Lcom/miui/daemon/performance/PerfShielderManager;->sPerfManager:Lcom/android/internal/app/IPerfShielder;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_20

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_23

    :cond_1c
    monitor-exit v2

    :cond_1d
    sget-object v1, Lcom/miui/daemon/performance/PerfShielderManager;->sPerfManager:Lcom/android/internal/app/IPerfShielder;

    return-object v1

    :catchall_20
    move-exception v3

    :try_start_21
    monitor-exit v1

    throw v3
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1
.end method
