.class public Landroid/content/pm/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/content/pm/IShortcutService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo v0, "shortcut"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/ShortcutManager;-><init>(Landroid/content/Context;Landroid/content/pm/IShortcutService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IShortcutService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    return-void
.end method


# virtual methods
.method public addDynamicShortcuts(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IShortcutService;->addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_16

    move-result v1

    return v1

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, v3}, Landroid/content/pm/IShortcutService;->createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disableShortcuts(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IShortcutService;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public disableShortcuts(Ljava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v5

    const/4 v3, 0x0

    move-object v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IShortcutService;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public disableShortcuts(Ljava/util/List;Ljava/lang/CharSequence;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v5

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IShortcutService;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public disableShortcuts(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public enableShortcuts(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, v3}, Landroid/content/pm/IShortcutService;->enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDynamicShortcuts()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getDynamicShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    return-object v1

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getIconMaxHeight()I
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getIconMaxDimensions(Ljava/lang/String;I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    return v1

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getIconMaxWidth()I
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getIconMaxDimensions(Ljava/lang/String;I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    return v1

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getManifestShortcuts()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getManifestShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    return-object v1

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMaxShortcutCountForActivity()I
    .registers 2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    move-result v0

    return v0
.end method

.method public getMaxShortcutCountPerActivity()I
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getMaxShortcutCountPerActivity(Ljava/lang/String;I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    return v1

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPinnedShortcuts()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getPinnedShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    return-object v1

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRateLimitResetTime()J
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getRateLimitResetTime(Ljava/lang/String;I)J
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-wide v2

    return-wide v2

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRemainingCallCount()I
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getRemainingCallCount(Ljava/lang/String;I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    return v1

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected injectMyUserId()I
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public isRateLimitingActive()Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v3, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IShortcutService;->getRemainingCallCount(Ljava/lang/String;I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_15

    move-result v2

    if-nez v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isRequestPinShortcutSupported()Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->isRequestPinItemSupported(II)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    return v1

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onApplicationActive(Ljava/lang/String;I)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IShortcutService;->onApplicationActive(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeAllDynamicShortcuts()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->removeAllDynamicShortcuts(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeDynamicShortcuts(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, v3}, Landroid/content/pm/IShortcutService;->removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportShortcutUsed(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, v3}, Landroid/content/pm/IShortcutService;->reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, p2, v3}, Landroid/content/pm/IShortcutService;->requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    return v1

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDynamicShortcuts(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IShortcutService;->setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_16

    move-result v1

    return v1

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateShortcuts(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IShortcutService;->updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_16

    move-result v1

    return v1

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
