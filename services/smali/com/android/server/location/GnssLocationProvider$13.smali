.class Lcom/android/server/location/GnssLocationProvider$13;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, 0x0

    new-instance v2, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get18(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v2}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v3

    if-eqz v3, :cond_21

    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v4, "calling native_inject_xtra_data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    array-length v4, v0

    invoke-static {v3, v0, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap35(Lcom/android/server/location/GnssLocationProvider;[BI)V

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get20(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/location/GnssLocationProvider$BackOff;->reset()V

    :cond_30
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/location/GnssLocationProvider;->-wrap40(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    if-nez v0, :cond_4e

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get9(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->-get20(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider$BackOff;->nextBackoffMillis()J

    move-result-wide v4

    const/4 v6, 0x6

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4e
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get12(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_55
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get5(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_86

    move-result v3

    if-eqz v3, :cond_89

    :try_start_61
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get5(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v3

    if-eqz v3, :cond_79

    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v5, "WakeLock released by handleDownloadXtraData()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_79} :catch_7b
    .catchall {:try_start_61 .. :try_end_79} :catchall_86

    :cond_79
    :goto_79
    monitor-exit v4

    return-void

    :catch_7b
    move-exception v1

    :try_start_7c
    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v5, "Wakelock timeout & release race exception in handleDownloadXtraData()"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_86

    goto :goto_79

    :catchall_86
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_89
    :try_start_89
    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v5, "WakeLock expired before release in handleDownloadXtraData()"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_86

    goto :goto_79
.end method
