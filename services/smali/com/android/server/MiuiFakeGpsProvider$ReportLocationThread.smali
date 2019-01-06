.class Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;
.super Ljava/lang/Thread;
.source "MiuiFakeGpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiFakeGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportLocationThread"
.end annotation


# instance fields
.field private mLocation:Landroid/location/Location;

.field private mOnceRun:Z

.field private mPause:Z

.field private mStop:Z

.field final synthetic this$0:Lcom/android/server/MiuiFakeGpsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/MiuiFakeGpsProvider;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mPause:Z

    iput-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    iput-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mOnceRun:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public letStop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    invoke-virtual {p0}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->interrupt()V

    return-void
.end method

.method public reschedule()V
    .registers 3

    sget-boolean v0, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "MiuiGpsProvider"

    const-string/jumbo v1, "location thread reschedule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mPause:Z

    invoke-virtual {p0}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->interrupt()V

    return-void
.end method

.method public run()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-static {v1}, Lcom/android/server/MiuiFakeGpsProvider;->-get2(Lcom/android/server/MiuiFakeGpsProvider;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/MiuiFakeGpsProvider;->-set0(Lcom/android/server/MiuiFakeGpsProvider;Z)Z

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-static {v1}, Lcom/android/server/MiuiFakeGpsProvider;->-get2(Lcom/android/server/MiuiFakeGpsProvider;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_35

    monitor-exit v2

    :goto_17
    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    if-nez v1, :cond_5e

    :goto_1b
    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    if-nez v1, :cond_45

    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mPause:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    iget-object v2, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mLocation:Landroid/location/Location;

    invoke-static {v1, v2}, Lcom/android/server/MiuiFakeGpsProvider;->-wrap3(Lcom/android/server/MiuiFakeGpsProvider;Landroid/location/Location;)V

    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mOnceRun:Z

    if-eqz v1, :cond_38

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_38
    :try_start_38
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-static {v1}, Lcom/android/server/MiuiFakeGpsProvider;->-get1(Lcom/android/server/MiuiFakeGpsProvider;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_42} :catch_43

    goto :goto_1b

    :catch_43
    move-exception v0

    goto :goto_1b

    :cond_45
    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    if-eqz v1, :cond_4a

    return-void

    :cond_4a
    :try_start_4a
    const-string/jumbo v1, "MiuiGpsProvider"

    const-string/jumbo v2, "report location pause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5b} :catch_5c

    goto :goto_17

    :catch_5c
    move-exception v0

    goto :goto_17

    :cond_5e
    return-void
.end method

.method public setLocationLocked(Landroid/location/Location;)V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mLocation:Landroid/location/Location;

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mLocation:Landroid/location/Location;

    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mPause:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_14

    if-eqz v0, :cond_17

    :cond_14
    invoke-virtual {p0}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->interrupt()V

    :cond_17
    return-void
.end method

.method public setOnceRun(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mOnceRun:Z

    return-void
.end method
