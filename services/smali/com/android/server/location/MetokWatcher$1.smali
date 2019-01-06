.class Lcom/android/server/location/MetokWatcher$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "MetokWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/MetokWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/MetokWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/location/MetokWatcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get1(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get0(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lcom/android/server/location/MetokWatcher;->-wrap0(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    monitor-exit v2

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 8

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get1(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get0(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lcom/android/server/location/MetokWatcher;->-wrap0(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1d

    monitor-exit v2

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v1

    return v1

    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get1(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get0(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lcom/android/server/location/MetokWatcher;->-wrap0(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    monitor-exit v2

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get1(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get0(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lcom/android/server/location/MetokWatcher;->-wrap0(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    monitor-exit v2

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method
