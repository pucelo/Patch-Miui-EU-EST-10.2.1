.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "LauncherAppsService.java"

# interfaces
.implements Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    return-void
.end method

.method private onShortcutChangedInner(Ljava/lang/String;I)V
    .registers 25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v19

    :try_start_c
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v21

    const/16 v16, 0x0

    :goto_12
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_af

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v18

    check-cast v18, Landroid/content/pm/IOnAppsChangedListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onShortcutChanged"

    move-object/from16 v0, v21

    invoke-static {v5, v0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4c

    :cond_49
    :goto_49
    add-int/lit8 v16, v16, 0x1

    goto :goto_12

    :cond_4c
    iget-object v5, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get1(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get1(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xf

    move-object/from16 v10, p1

    move/from16 v14, p2

    invoke-virtual/range {v5 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_79
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_79} :catch_98
    .catchall {:try_start_c .. :try_end_79} :catchall_bb

    move-result-object v17

    :try_start_7a
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v5}, Landroid/content/pm/IOnAppsChangedListener;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_8a} :catch_8b
    .catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_8a} :catch_98
    .catchall {:try_start_7a .. :try_end_8a} :catchall_bb

    goto :goto_49

    :catch_8b
    move-exception v20

    :try_start_8c
    const-string/jumbo v5, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    move-object/from16 v0, v20

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catch Ljava/lang/RuntimeException; {:try_start_8c .. :try_end_97} :catch_98
    .catchall {:try_start_8c .. :try_end_97} :catchall_bb

    goto :goto_49

    :catch_98
    move-exception v15

    :try_start_99
    const-string/jumbo v5, "LauncherAppsService"

    invoke-virtual {v15}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_99 .. :try_end_a3} :catchall_bb

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    :goto_ae
    return-void

    :cond_af
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    goto :goto_ae

    :catchall_bb
    move-exception v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v5
.end method


# virtual methods
.method synthetic lambda$-com_android_server_pm_LauncherAppsService$LauncherAppsImpl$MyPackageMonitor_38368(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onShortcutChangedInner(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 12

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_58

    :try_start_16
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onPackageAdded"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_4d

    move-result v6

    if-nez v6, :cond_3e

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_3e
    :try_start_3e
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_4d

    goto :goto_3b

    :catch_42
    move-exception v4

    :try_start_43
    const-string/jumbo v6, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4d

    goto :goto_3b

    :catchall_4d
    move-exception v6

    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v6

    :cond_58
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 11

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_58

    :try_start_16
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onPackageModified"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_4d

    move-result v6

    if-nez v6, :cond_3e

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_3e
    :try_start_3e
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_4d

    goto :goto_3b

    :catch_42
    move-exception v4

    :try_start_43
    const-string/jumbo v6, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4d

    goto :goto_3b

    :catchall_4d
    move-exception v6

    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v6

    :cond_58
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 12

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_58

    :try_start_16
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onPackageRemoved"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_4d

    move-result v6

    if-nez v6, :cond_3e

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_3e
    :try_start_3e
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_4d

    goto :goto_3b

    :catch_42
    move-exception v4

    :try_start_43
    const-string/jumbo v6, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4d

    goto :goto_3b

    :catchall_4d
    move-exception v6

    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v6

    :cond_58
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 11

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_5c

    :try_start_16
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onPackagesAvailable"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_51

    move-result v6

    if-nez v6, :cond_3e

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    move-result v6

    invoke-interface {v2, v5, p1, v6}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_45} :catch_46
    .catchall {:try_start_3e .. :try_end_45} :catchall_51

    goto :goto_3b

    :catch_46
    move-exception v4

    :try_start_47
    const-string/jumbo v6, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_51

    goto :goto_3b

    :catchall_51
    move-exception v6

    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v6

    :cond_5c
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .registers 11

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_58

    :try_start_16
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onPackagesSuspended"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_4d

    move-result v6

    if-nez v6, :cond_3e

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_3e
    :try_start_3e
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_4d

    goto :goto_3b

    :catch_42
    move-exception v4

    :try_start_43
    const-string/jumbo v6, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4d

    goto :goto_3b

    :catchall_4d
    move-exception v6

    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v6

    :cond_58
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesSuspended([Ljava/lang/String;)V

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 11

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_5c

    :try_start_16
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onPackagesUnavailable"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_51

    move-result v6

    if-nez v6, :cond_3e

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    move-result v6

    invoke-interface {v2, v5, p1, v6}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_45} :catch_46
    .catchall {:try_start_3e .. :try_end_45} :catchall_51

    goto :goto_3b

    :catch_46
    move-exception v4

    :try_start_47
    const-string/jumbo v6, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_51

    goto :goto_3b

    :catchall_51
    move-exception v6

    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v6

    :cond_5c
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .registers 11

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_58

    :try_start_16
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v8, "onPackagesUnsuspended"

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_4d

    move-result v6

    if-nez v6, :cond_3e

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_3e
    :try_start_3e
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_4d

    goto :goto_3b

    :catch_42
    move-exception v4

    :try_start_43
    const-string/jumbo v6, "LauncherAppsService"

    const-string/jumbo v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4d

    goto :goto_3b

    :catchall_4d
    move-exception v6

    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    throw v6

    :cond_58
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    return-void
.end method

.method public onShortcutChanged(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    new-instance v1, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, p0, p1}, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;-><init>(BILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->postToPackageMonitorHandler(Ljava/lang/Runnable;)V

    return-void
.end method
