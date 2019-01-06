.class Lcom/android/server/display/WifiDisplayAdapter$2;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/WifiDisplayController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get7(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap4(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_48

    :cond_46
    monitor-exit v1

    return-void

    :catchall_48
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 14

    const/4 v7, 0x2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v6

    monitor-enter v6

    :try_start_8
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get7(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v7, :cond_2c

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-nez v0, :cond_3e

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_4d

    :cond_3c
    monitor-exit v6

    return-void

    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_4d

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3c

    goto :goto_2c

    :catchall_4d
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get7(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v2, :cond_22

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-nez v0, :cond_34

    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_43

    :cond_32
    monitor-exit v1

    return-void

    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_43

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_32

    goto :goto_22

    :catchall_43
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayConnectionFailed()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_28

    :cond_17
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_2a

    :cond_28
    monitor-exit v1

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayDisconnected()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap3(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_2d

    :cond_1c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2f

    :cond_2d
    monitor-exit v1

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set6(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplaySessionInfo;)Landroid/hardware/display/WifiDisplaySessionInfo;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_13

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onFeatureStateChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get5(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eq v0, p1, :cond_19

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set4(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onScanFinished()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get8(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set5(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onScanResults([Landroid/hardware/display/WifiDisplay;)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get7(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get2(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    const/4 v1, 0x0

    :goto_1e
    if-nez v0, :cond_3d

    array-length v2, p1

    if-ge v1, v2, :cond_3d

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v2

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayAdapter;->-get2(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v4

    if-eq v2, v4, :cond_3b

    const/4 v0, 0x1

    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_3b
    const/4 v0, 0x0

    goto :goto_38

    :cond_3d
    if-eqz v0, :cond_53

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap1(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_55

    :cond_53
    monitor-exit v3

    return-void

    :catchall_55
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onScanStarted()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get8(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eq v0, v2, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set5(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
