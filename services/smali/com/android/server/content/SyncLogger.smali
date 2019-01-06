.class public Lcom/android/server/content/SyncLogger;
.super Ljava/lang/Object;
.source "SyncLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncLogger$RotatingFileLogger;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncLogger"

.field private static sInstance:Lcom/android/server/content/SyncLogger;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/content/SyncLogger;
    .registers 5

    const-class v2, Lcom/android/server/content/SyncLogger;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    if-nez v1, :cond_25

    const-string/jumbo v3, "1"

    const-string/jumbo v4, "debug.synclog"

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_29

    const-string/jumbo v1, "1"

    :goto_14
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v1, Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    invoke-direct {v1}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;-><init>()V

    sput-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    :cond_25
    :goto_25
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_35

    monitor-exit v2

    return-object v1

    :cond_29
    :try_start_29
    const-string/jumbo v1, "0"

    goto :goto_14

    :cond_2d
    new-instance v1, Lcom/android/server/content/SyncLogger;

    invoke-direct {v1}, Lcom/android/server/content/SyncLogger;-><init>()V

    sput-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_35

    goto :goto_25

    :catchall_35
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .registers 2

    return-void
.end method

.method public enabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public varargs log([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public purgeOldLogs()V
    .registers 1

    return-void
.end method
