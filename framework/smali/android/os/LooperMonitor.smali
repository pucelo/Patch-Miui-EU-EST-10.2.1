.class public Landroid/os/LooperMonitor;
.super Ljava/lang/Object;
.source "LooperMonitor.java"

# interfaces
.implements Landroid/os/ILooperMonitorable;


# instance fields
.field private mEnableMonitor:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableMonitor(Z)V
    .registers 7

    iput-boolean p1, p0, Landroid/os/LooperMonitor;->mEnableMonitor:Z

    if-eqz p1, :cond_1f

    :try_start_4
    const-string/jumbo v2, "getQueue"

    const-class v3, Landroid/os/MessageQueue;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3, v4}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/MessageQueue;

    if-eqz v1, :cond_1f

    const-string/jumbo v2, "enableMonitor"

    const-class v3, Ljava/lang/Void;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_20

    :cond_1f
    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f
.end method

.method public isMonitorLooper()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/LooperMonitor;->mEnableMonitor:Z

    return v0
.end method
