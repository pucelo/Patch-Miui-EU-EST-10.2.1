.class Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;
.super Landroid/media/IMediaResourceMonitor$Stub;
.source "MediaResourceMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaResourceMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaResourceMonitorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaResourceMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaResourceMonitorService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-direct {p0}, Landroid/media/IMediaResourceMonitor$Stub;-><init>()V

    return-void
.end method

.method private getPackageNamesFromPid(I)[Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_c

    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v3

    :catch_1f
    move-exception v0

    const-string/jumbo v3, "MediaResourceMonitor"

    const-string/jumbo v4, "ActivityManager.getRunningAppProcesses() failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public notifyResourceGranted(II)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->-get0()Z

    move-result v8

    if-eqz v8, :cond_33

    const-string/jumbo v8, "MediaResourceMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyResourceGranted(pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_37
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_91

    move-result-object v4

    if-nez v4, :cond_41

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_41
    :try_start_41
    iget-object v8, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v8}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v6

    if-eqz v6, :cond_5d

    array-length v8, v6
    :try_end_5b
    .catchall {:try_start_41 .. :try_end_5b} :catchall_91

    if-nez v8, :cond_61

    :cond_5d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_61
    :try_start_61
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.extra.MEDIA_RESOURCE_TYPE"

    invoke-virtual {v2, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    array-length v8, v6

    :goto_76
    if-ge v7, v8, :cond_8d

    aget v5, v6, v7

    iget-object v9, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v9}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    const-string/jumbo v11, "android.permission.RECEIVE_MEDIA_RESOURCE_USAGE"

    invoke-virtual {v9, v2, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_61 .. :try_end_8a} :catchall_91

    add-int/lit8 v7, v7, 0x1

    goto :goto_76

    :cond_8d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_91
    move-exception v7

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method
