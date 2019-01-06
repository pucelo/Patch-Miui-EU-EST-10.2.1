.class Lcom/android/server/oemlock/OemLockService$2;
.super Landroid/service/oemlock/IOemLockService$Stub;
.source "OemLockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oemlock/OemLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oemlock/OemLockService;


# direct methods
.method constructor <init>(Lcom/android/server/oemlock/OemLockService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-direct {p0}, Landroid/service/oemlock/IOemLockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isDeviceOemUnlocked()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v1}, Lcom/android/server/oemlock/OemLockService;->-wrap3(Lcom/android/server/oemlock/OemLockService;)V

    const-string/jumbo v1, "ro.boot.flash.locked"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    return v1

    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method public isOemUnlockAllowed()Z
    .registers 4

    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-wrap3(Lcom/android/server/oemlock/OemLockService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-get0(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-get0(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByDevice()Z
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_25

    move-result v2

    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_23
    const/4 v2, 0x0

    goto :goto_1f

    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isOemUnlockAllowedByCarrier()Z
    .registers 4

    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-wrap1(Lcom/android/server/oemlock/OemLockService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-get0(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_17

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isOemUnlockAllowedByUser()Z
    .registers 4

    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-wrap2(Lcom/android/server/oemlock/OemLockService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-get0(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByDevice()Z
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_17

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setOemUnlockAllowedByCarrier(Z[B)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-wrap1(Lcom/android/server/oemlock/OemLockService;)V

    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-wrap4(Lcom/android/server/oemlock/OemLockService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-get0(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByCarrier(Z[B)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1b

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setOemUnlockAllowedByUser(Z)V
    .registers 6

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-wrap2(Lcom/android/server/oemlock/OemLockService;)V

    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-wrap4(Lcom/android/server/oemlock/OemLockService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_15
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-wrap0(Lcom/android/server/oemlock/OemLockService;)Z

    move-result v2

    if-nez v2, :cond_2b

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Admin does not allow OEM unlock"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_2b
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-get0(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    if-nez v2, :cond_40

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Carrier does not allow OEM unlock"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_40
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-get0(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByDevice(Z)V

    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2, p1}, Lcom/android/server/oemlock/OemLockService;->-wrap5(Lcom/android/server/oemlock/OemLockService;Z)V
    :try_end_4e
    .catchall {:try_start_2b .. :try_end_4e} :catchall_26

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method
