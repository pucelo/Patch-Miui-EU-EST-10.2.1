.class public Lcom/android/server/content/SyncManagerInjector;
.super Lcom/android/server/content/SyncManagerAccountChangePolicy;
.source "SyncManagerInjector.java"


# static fields
.field public static final SYNC_DELAY_ON_BATTERY_LOW:J = 0x1b7740L

.field public static final SYNC_DELAY_ON_DISALLOW_METERED:J = 0x36ee80L

.field public static final SYNC_DELAY_ON_FORBIDDEN:J = 0x1d4c0L

.field public static final SYNC_DELAY_ON_ROOM_UNAVAILABLE:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final XIAOMI_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"

.field private static final XIAOMI_MAX_PARALLEL_SYNC_NUM:I = 0x1

.field public static final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "sync_on_wifi_only"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncManagerInjector;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManagerAccountChangePolicy;-><init>()V

    return-void
.end method

.method public static canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static cancelForbiddenActiveSyncs(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/content/SyncOperation;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncOperation;

    invoke-static {p0, v0, p2}, Lcom/android/server/content/SyncManagerInjector;->isSyncForbidden(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "SyncManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "injector: cancelNonManualActiveSyncs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_4

    :cond_4a
    return-void
.end method

.method public static checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z
    .registers 4

    const/4 v1, 0x3

    if-eqz p0, :cond_7

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-nez v0, :cond_1b

    :cond_7
    const-string/jumbo v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "SyncManager"

    const-string/jumbo v1, "injector: checkSyncOperationAccount: false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v0, 0x0

    return v0

    :cond_1b
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string/jumbo v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "injector: checkSyncOperationAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const-string/jumbo v0, "com.xiaomi"

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBatteryLowForbidden(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z
    .registers 8

    const/4 v4, 0x3

    const/4 v3, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_19

    :cond_6
    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isBatteryLowForbidden: null parameter, false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return v3

    :cond_19
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isManual()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isIgnoreSettings()Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_2b
    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isBatteryLowForbidden: init or ignore settings, false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return v3

    :cond_3e
    iget v1, p1, Lcom/android/server/content/SyncOperation;->reason:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_56

    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isBatteryLowForbidden: sync for auto, false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return v3

    :cond_56
    const-string/jumbo v1, "battery_low"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDisallowMeteredBySettings(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sync_on_wifi_only"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public static isSyncForbidden(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z
    .registers 8

    const/4 v4, 0x3

    const/4 v3, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_19

    :cond_6
    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isSyncForbidden: null parameter, false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return v3

    :cond_19
    invoke-static {p1}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isSyncForbidden: not xiaomi account, false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return v3

    :cond_32
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isManual()Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isIgnoreSettings()Z

    move-result v1

    if-eqz v1, :cond_57

    :cond_44
    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_56

    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isSyncForbidden: init or ignore settings, false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return v3

    :cond_57
    iget v1, p1, Lcom/android/server/content/SyncOperation;->reason:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_6f

    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6e

    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isSyncForbidden: sync for auto, false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    return v3

    :cond_6f
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const-string/jumbo v1, "com.miui.gallery.cloud.provider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    const-string/jumbo v1, "com.miui.gallery"

    invoke-static {p0, v1}, Lcom/android/server/content/SyncManagerInjector;->isPackageNameForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_97

    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "injector: isSyncForbidden: false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    return v3

    :cond_98
    invoke-static {p1}, Lcom/android/server/content/SyncManagerInjector;->rebuildSyncOperation(Lcom/android/server/content/SyncOperation;)V

    invoke-static {v0}, Lcom/android/server/content/SyncManagerInjector;->getSyncForbiddenStrategy(Ljava/lang/String;)Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;

    move-result-object v1

    invoke-interface {v1, p0, v0, p2}, Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;->isSyncForbidden(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public static isSyncRoomAvailable(Lcom/android/server/content/SyncOperation;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncOperation;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/content/SyncOperation;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string/jumbo v4, "SyncManager"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string/jumbo v4, "SyncManager"

    const-string/jumbo v5, "injector: isSyncRoomAvailable: not xiaomi account, true"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return v3

    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isManual()Z

    move-result v4

    if-eqz v4, :cond_34

    const-string/jumbo v4, "SyncManager"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_33

    const-string/jumbo v4, "SyncManager"

    const-string/jumbo v5, "injector: isSyncRoomAvailable: sync is manual, true"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return v3

    :cond_34
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_39
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    invoke-static {v1}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v4

    if-eqz v4, :cond_39

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_4e
    if-ge v0, v3, :cond_51

    :goto_50
    return v3

    :cond_51
    const/4 v3, 0x0

    goto :goto_50
.end method
