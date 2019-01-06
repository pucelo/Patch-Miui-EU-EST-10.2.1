.class final Lcom/android/server/LocationManagerServiceInjector$1;
.super Landroid/location/ILocationPolicyListener$Stub;
.source "LocationManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/location/ILocationPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .registers 5

    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRestrictBackgroundChanged(restrictBackground="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->-get1()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_27
    invoke-static {p1}, Lcom/android/server/LocationManagerServiceInjector;->-set0(Z)Z
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2c

    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onUidRulesChanged(II)V
    .registers 7

    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->-get1()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->-get2()Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1e

    move-result v0

    if-ne v0, p2, :cond_12

    monitor-exit v2

    return-void

    :cond_12
    :try_start_12
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->-get2()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1e

    monitor-exit v2

    invoke-static {p1, p2}, Lcom/android/server/LocationManagerServiceInjector;->-wrap0(II)V

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method
