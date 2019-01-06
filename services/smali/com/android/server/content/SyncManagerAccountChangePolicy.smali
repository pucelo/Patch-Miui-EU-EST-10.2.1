.class public Lcom/android/server/content/SyncManagerAccountChangePolicy;
.super Ljava/lang/Object;
.source "SyncManagerAccountChangePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;,
        Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;,
        Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;
    }
.end annotation


# static fields
.field private static final ALLOW_FIRST_NUM_SYNCS:I = 0x3

.field private static final ALLOW_FIRST_NUM_SYNCS_FOR_BROWSER:I = 0x8

.field private static final AUTHORITY_BROWSER:Ljava/lang/String; = "com.miui.browser"

.field private static final AUTHORITY_CALENDAR:Ljava/lang/String; = "com.android.calendar"

.field private static final AUTHORITY_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field protected static final AUTHORITY_GALLERY:Ljava/lang/String; = "com.miui.gallery.cloud.provider"

.field private static final AUTHORITY_NOTES:Ljava/lang/String; = "notes"

.field private static final DEFAULT_SCREEN_OFF_PENDING_TIME:J = 0x1d4c0L

.field static final EXTRA_KEY_BATTERY_CHARGING:Ljava/lang/String; = "battery_charging"

.field static final EXTRA_KEY_BATTERY_LOW:Ljava/lang/String; = "battery_low"

.field static final EXTRA_KEY_INTERACTIVE:Ljava/lang/String; = "interactive"

.field static final EXTRA_KEY_LAST_SCREEN_OFF_TIME:Ljava/lang/String; = "last_screen_off_time"

.field static final EXTRA_KEY_NUM_SYNCS:Ljava/lang/String; = "num_syncs"

.field private static final LOW_BATTERY_LEVEL_LIMIT:I = 0x14

.field protected static final PACKAGE_NAME_GALLERY:Ljava/lang/String; = "com.miui.gallery"

.field private static final REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string/jumbo v1, "com.android.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string/jumbo v1, "notes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string/jumbo v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncForbiddenStrategy(Ljava/lang/String;)Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;-><init>(Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;)V

    return-object v0

    :cond_f
    new-instance v0, Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;-><init>(Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;)V

    return-object v0
.end method

.method public static isBatteryCharging(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v1, 0x5

    if-ne p0, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isBatteryCharging(Landroid/content/Context;)Z
    .registers 6

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "status"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->isBatteryCharging(I)Z

    move-result v3

    return v3
.end method

.method public static isBatteryLow(II)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_9

    const/16 v1, 0x14

    if-gt p1, v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public static isBatteryLow(Landroid/content/Context;)Z
    .registers 7

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "level"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->isBatteryLow(II)Z

    move-result v4

    return v4
.end method

.method protected static isPackageNameForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_17
    return v4

    :cond_18
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_23

    return v4

    :cond_23
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private static maskAccounts([Landroid/accounts/Account;)[Landroid/accounts/Account;
    .registers 11

    const/4 v9, 0x0

    const/4 v5, 0x0

    if-nez p0, :cond_5

    return-object v5

    :cond_5
    array-length v5, p0

    new-array v2, v5, [Landroid/accounts/Account;

    const/4 v0, 0x0

    :goto_9
    array-length v5, p0

    if-ge v0, v5, :cond_58

    aget-object v5, p0, v0

    iget-object v3, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v4, v5, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    new-array v7, v4, [C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    const-string/jumbo v7, "\u0000"

    const-string/jumbo v8, "*"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4a
    new-instance v5, Landroid/accounts/Account;

    aget-object v6, p0, v0

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v5, v3, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_58
    return-object v2
.end method

.method public static rebuildSyncOperation(Lcom/android/server/content/SyncOperation;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    sget-object v1, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "require_charging"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method static scheduleSyncForChangedAccountUnknownStateAuthorities(Lcom/android/server/content/SyncManager;Landroid/content/Intent;I)V
    .registers 16

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string/jumbo v1, "account_changed_action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    :try_start_a
    const-string/jumbo v1, "accounts"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/accounts/Account;

    move-object v8, v0
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_15} :catch_57

    :goto_15
    const-string/jumbo v4, "SyncManager"

    const-string/jumbo v6, "Account changed. Action: %s, Accounts: %s. "

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v9, v7, v3

    if-nez v8, :cond_7a

    const-string/jumbo v1, "NULL"

    :goto_25
    const/4 v11, 0x1

    aput-object v1, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "altered"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string/jumbo v1, "added"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    :cond_41
    if-eqz v8, :cond_83

    array-length v12, v8

    move v11, v3

    :goto_45
    if-ge v11, v12, :cond_83

    aget-object v2, v8, v11

    if-eqz v2, :cond_53

    const/4 v4, -0x2

    const/4 v7, -0x1

    move-object v1, p0

    move v3, p2

    move-object v6, v5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;I)V

    :cond_53
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_45

    :catch_57
    move-exception v10

    const-string/jumbo v1, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad account extra: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_7a
    invoke-static {v8}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->maskAccounts([Landroid/accounts/Account;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_83
    return-void
.end method
