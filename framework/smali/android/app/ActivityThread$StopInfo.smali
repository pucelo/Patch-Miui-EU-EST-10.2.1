.class Landroid/app/ActivityThread$StopInfo;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StopInfo"
.end annotation


# instance fields
.field activity:Landroid/app/ActivityThread$ActivityClientRecord;

.field description:Ljava/lang/CharSequence;

.field persistentState:Landroid/os/PersistableBundle;

.field state:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread$StopInfo;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/ActivityThread$StopInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/ActivityThread$StopInfo;->state:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/app/ActivityThread$StopInfo;->persistentState:Landroid/os/PersistableBundle;

    iget-object v7, p0, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/app/IActivityManager;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    new-instance v2, Landroid/util/LogWriter;

    const-string/jumbo v3, "ActivityThread"

    const/4 v4, 0x5

    invoke-direct {v2, v4, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "  "

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string/jumbo v3, "Bundle stats:"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/ActivityThread$StopInfo;->state:Landroid/os/Bundle;

    invoke-static {v1, v3}, Landroid/os/Bundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    const-string/jumbo v3, "PersistableBundle stats:"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/ActivityThread$StopInfo;->persistentState:Landroid/os/PersistableBundle;

    invoke-static {v1, v3}, Landroid/os/Bundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    instance-of v3, v0, Landroid/os/TransactionTooLargeException;

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v3, v3, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v3}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x18

    if-ge v3, v4, :cond_54

    const-string/jumbo v3, "ActivityThread"

    const-string/jumbo v4, "App sent too much data in instance state, so it was ignored"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_54
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method
