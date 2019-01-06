.class public Lcom/android/server/timezone/PackageTracker;
.super Ljava/lang/Object;
.source "PackageTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "timezone.PackageTracker"


# instance fields
.field private mCheckFailureCount:I

.field private mCheckTimeAllowedMillis:I

.field private mCheckTriggered:Z

.field private final mClockHelper:Lcom/android/server/timezone/ClockHelper;

.field private final mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

.field private mDataAppPackageName:Ljava/lang/String;

.field private mDelayBeforeReliabilityCheckMillis:I

.field private mFailedCheckRetryCount:J

.field private final mIntentHelper:Lcom/android/server/timezone/IntentHelper;

.field private mLastTriggerTimestamp:Ljava/lang/Long;

.field private final mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

.field private final mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

.field private mTrackingEnabled:Z

.field private mUpdateAppPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/timezone/ClockHelper;Lcom/android/server/timezone/ConfigHelper;Lcom/android/server/timezone/PackageManagerHelper;Lcom/android/server/timezone/PackageStatusStorage;Lcom/android/server/timezone/IntentHelper;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    iput-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mClockHelper:Lcom/android/server/timezone/ClockHelper;

    iput-object p2, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    iput-object p3, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iput-object p4, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    iput-object p5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/android/server/timezone/PackageTracker;
    .registers 8

    new-instance v1, Lcom/android/server/timezone/PackageTrackerHelperImpl;

    invoke-direct {v1, p0}, Lcom/android/server/timezone/PackageTrackerHelperImpl;-><init>(Landroid/content/Context;)V

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "timezone"

    invoke-direct {v6, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    :cond_1a
    new-instance v0, Lcom/android/server/timezone/PackageTracker;

    new-instance v4, Lcom/android/server/timezone/PackageStatusStorage;

    invoke-direct {v4, v6}, Lcom/android/server/timezone/PackageStatusStorage;-><init>(Ljava/io/File;)V

    new-instance v5, Lcom/android/server/timezone/IntentHelperImpl;

    invoke-direct {v5, p0}, Lcom/android/server/timezone/IntentHelperImpl;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezone/PackageTracker;-><init>(Lcom/android/server/timezone/ClockHelper;Lcom/android/server/timezone/ConfigHelper;Lcom/android/server/timezone/PackageManagerHelper;Lcom/android/server/timezone/PackageStatusStorage;Lcom/android/server/timezone/IntentHelper;)V

    return-object v0
.end method

.method private isCheckInProgress()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isCheckResponseOverdue()Z
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mClockHelper:Lcom/android/server/timezone/ClockHelper;

    invoke-interface {v1}, Lcom/android/server/timezone/ClockHelper;->currentTimestamp()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0
.end method

.method private static logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 3

    const-string/jumbo v0, "timezone.PackageTracker"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private lookupInstalledPackageVersions()Lcom/android/server/timezone/PackageVersions;
    .registers 6

    :try_start_0
    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v4, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/server/timezone/PackageManagerHelper;->getInstalledPackageVersion(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v4, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/server/timezone/PackageManagerHelper;->getInstalledPackageVersion(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_16

    move-result v0

    new-instance v3, Lcom/android/server/timezone/PackageVersions;

    invoke-direct {v3, v2, v0}, Lcom/android/server/timezone/PackageVersions;-><init>(II)V

    return-object v3

    :catch_16
    move-exception v1

    const-string/jumbo v3, "timezone.PackageTracker"

    const-string/jumbo v4, "lookupInstalledPackageVersions: Unable to resolve installed package versions"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method private setCheckComplete()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    return-void
.end method

.method private setCheckInProgress()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mClockHelper:Lcom/android/server/timezone/ClockHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ClockHelper;->currentTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    return-void
.end method

.method private throwIfDeviceSettingsOrAppsAreBad()V
    .registers 8

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    const-string/jumbo v2, "Update app package name missing."

    invoke-static {v1, v2}, Lcom/android/server/timezone/PackageTracker;->throwRuntimeExceptionIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    const-string/jumbo v2, "Data app package name missing."

    invoke-static {v1, v2}, Lcom/android/server/timezone/PackageTracker;->throwRuntimeExceptionIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFailedRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_34
    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_55

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCheckTimeAllowedMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_55
    :try_start_55
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/timezone/PackageManagerHelper;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Update app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be a priv-app."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_82
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_82} :catch_82

    :catch_82
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not determine update app package details for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_9e
    const-string/jumbo v1, "timezone.PackageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_c1
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/timezone/PackageManagerHelper;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Data app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be a priv-app."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_ee
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c1 .. :try_end_ee} :catch_ee

    :catch_ee
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not determine data app package details for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10a
    const-string/jumbo v1, "timezone.PackageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Data app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static throwRuntimeExceptionIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_d
    invoke-static {p1, v1}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_12
    return-void
.end method

.method private validateDataAppManifest()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    const-string/jumbo v1, "com.android.timezone"

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/server/timezone/PackageManagerHelper;->contentProviderRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string/jumbo v0, "timezone.PackageTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateDataAppManifest: Data app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not expose the required provider with authority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "com.android.timezone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method private validateUpdaterAppManifest()Z
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    const-string/jumbo v3, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v1, v2, v3}, Lcom/android/server/timezone/PackageManagerHelper;->usesPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string/jumbo v1, "timezone.PackageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateUpdaterAppManifest: Updater app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not use permission="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_39
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/app/timezone/RulesUpdaterContract;->createUpdaterIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.permission.TRIGGER_TIME_ZONE_RULES_CHECK"

    invoke-interface {v1, v2, v3}, Lcom/android/server/timezone/PackageManagerHelper;->receiverRegistered(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_47} :catch_4d

    move-result v1

    if-nez v1, :cond_4b

    return v4

    :cond_4b
    const/4 v1, 0x1

    return v1

    :catch_4d
    move-exception v0

    const-string/jumbo v1, "timezone.PackageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateUpdaterAppManifest: Updater app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not expose the required broadcast receiver."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PackageTrackerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageTracker;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/timezone/PackageStatusStorage;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected getCheckFailureCountForTests()I
    .registers 2

    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    return v0
.end method

.method protected declared-synchronized recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "timezone.PackageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recordOperationResult: checkToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    if-nez v1, :cond_61

    if-nez p1, :cond_3c

    const-string/jumbo v1, "timezone.PackageTracker"

    const-string/jumbo v2, "recordCheckResult: Tracking is disabled and no token has been provided. Resetting tracking state."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v1}, Lcom/android/server/timezone/PackageStatusStorage;->resetCheckState()V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_5e

    monitor-exit p0

    return-void

    :cond_3c
    :try_start_3c
    const-string/jumbo v1, "timezone.PackageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recordCheckResult: Tracking is disabled and a token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has been unexpectedly provided. Resetting tracking state."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_3c .. :try_end_5d} :catchall_5e

    goto :goto_35

    :catchall_5e
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_61
    if-nez p1, :cond_7e

    :try_start_63
    const-string/jumbo v1, "timezone.PackageTracker"

    const-string/jumbo v2, "recordCheckResult: Unexpectedly missing checkToken, resetting storage state."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v1}, Lcom/android/server/timezone/PackageStatusStorage;->resetCheckState()V

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/server/timezone/IntentHelper;->scheduleReliabilityTrigger(J)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I
    :try_end_7c
    .catchall {:try_start_63 .. :try_end_7c} :catchall_5e

    :goto_7c
    monitor-exit p0

    return-void

    :cond_7e
    :try_start_7e
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/timezone/PackageStatusStorage;->markChecked(Lcom/android/server/timezone/CheckToken;Z)Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->setCheckComplete()V

    if-eqz p2, :cond_94

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    invoke-interface {v1}, Lcom/android/server/timezone/IntentHelper;->unscheduleReliabilityTrigger()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    goto :goto_7c

    :cond_94
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/server/timezone/IntentHelper;->scheduleReliabilityTrigger(J)V

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    goto :goto_7c

    :cond_a3
    const-string/jumbo v1, "timezone.PackageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recordCheckResult: could not update token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Optimistic lock failure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/server/timezone/IntentHelper;->scheduleReliabilityTrigger(J)V

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I
    :try_end_dd
    .catchall {:try_start_7e .. :try_end_dd} :catchall_5e

    goto :goto_7c
.end method

.method protected declared-synchronized start()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->isTrackingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    if-nez v0, :cond_18

    const-string/jumbo v0, "timezone.PackageTracker"

    const-string/jumbo v1, "Time zone updater / data package tracking explicitly disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_66

    monitor-exit p0

    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getUpdateAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getDataAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getCheckTimeAllowedMillis()I

    move-result v0

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getFailedCheckRetryCount()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    const v1, 0xea60

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->throwIfDeviceSettingsOrAppsAreBad()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/timezone/IntentHelper;->initialize(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/timezone/PackageTracker;)V

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/android/server/timezone/IntentHelper;->scheduleReliabilityTrigger(J)V

    const-string/jumbo v0, "timezone.PackageTracker"

    const-string/jumbo v1, "Time zone updater / data package tracking enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_18 .. :try_end_64} :catchall_66

    monitor-exit p0

    return-void

    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PackageTracker{mTrackingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUpdateAppPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDataAppPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCheckTimeAllowedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDelayBeforeReliabilityCheckMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFailedCheckRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLastTriggerTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCheckTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCheckFailureCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized triggerUpdateIfNeeded(Z)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    if-nez v5, :cond_11

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Unexpected call. Tracking is disabled."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_11
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->validateUpdaterAppManifest()Z

    move-result v4

    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->validateDataAppManifest()Z

    move-result v2

    if-eqz v4, :cond_1f

    xor-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_4b

    :cond_1f
    const-string/jumbo v5, "timezone.PackageTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No update triggered due to invalid application manifest entries. updaterApp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", dataApp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    invoke-interface {v5}, Lcom/android/server/timezone/IntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_49
    .catchall {:try_start_11 .. :try_end_49} :catchall_e

    monitor-exit p0

    return-void

    :cond_4b
    if-nez p1, :cond_5a

    :try_start_4d
    iget-boolean v5, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    if-nez v5, :cond_70

    const-string/jumbo v5, "timezone.PackageTracker"

    const-string/jumbo v6, "triggerUpdateIfNeeded: First reliability trigger."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->lookupInstalledPackageVersions()Lcom/android/server/timezone/PackageVersions;

    move-result-object v1

    if-nez v1, :cond_bc

    const-string/jumbo v5, "timezone.PackageTracker"

    const-string/jumbo v6, "triggerUpdateIfNeeded: currentInstalledVersions was null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    invoke-interface {v5}, Lcom/android/server/timezone/IntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_6e
    .catchall {:try_start_4d .. :try_end_6e} :catchall_e

    monitor-exit p0

    return-void

    :cond_70
    :try_start_70
    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->isCheckInProgress()Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->isCheckResponseOverdue()Z

    move-result v5

    if-nez v5, :cond_5a

    const-string/jumbo v5, "timezone.PackageTracker"

    const-string/jumbo v6, "triggerUpdateIfNeeded: checkComplete call is not yet overdue. Not triggering."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    iget v6, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lcom/android/server/timezone/IntentHelper;->scheduleReliabilityTrigger(J)V
    :try_end_8d
    .catchall {:try_start_70 .. :try_end_8d} :catchall_e

    monitor-exit p0

    return-void

    :cond_8f
    :try_start_8f
    iget v5, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    int-to-long v6, v5

    iget-wide v8, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_a8

    const-string/jumbo v5, "timezone.PackageTracker"

    const-string/jumbo v6, "triggerUpdateIfNeeded: number of allowed consecutive check failures exceeded. Stopping reliability triggers until next reboot or package update."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    invoke-interface {v5}, Lcom/android/server/timezone/IntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_a6
    .catchall {:try_start_8f .. :try_end_a6} :catchall_e

    monitor-exit p0

    return-void

    :cond_a8
    :try_start_a8
    iget v5, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    if-nez v5, :cond_5a

    const-string/jumbo v5, "timezone.PackageTracker"

    const-string/jumbo v6, "triggerUpdateIfNeeded: No reliability check required. Last check was successful."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    invoke-interface {v5}, Lcom/android/server/timezone/IntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_ba
    .catchall {:try_start_a8 .. :try_end_ba} :catchall_e

    monitor-exit p0

    return-void

    :cond_bc
    :try_start_bc
    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v5}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatus()Lcom/android/server/timezone/PackageStatus;

    move-result-object v3

    if-nez v3, :cond_e8

    const-string/jumbo v5, "timezone.PackageTracker"

    const-string/jumbo v6, "triggerUpdateIfNeeded: No package status data found. Data check needed."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cd
    :goto_cd
    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v5, v1}, Lcom/android/server/timezone/PackageStatusStorage;->generateCheckToken(Lcom/android/server/timezone/PackageVersions;)Lcom/android/server/timezone/CheckToken;

    move-result-object v0

    if-nez v0, :cond_15b

    const-string/jumbo v5, "timezone.PackageTracker"

    const-string/jumbo v6, "triggerUpdateIfNeeded: Unable to generate check token. Not sending check request."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    iget v6, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lcom/android/server/timezone/IntentHelper;->scheduleReliabilityTrigger(J)V
    :try_end_e6
    .catchall {:try_start_bc .. :try_end_e6} :catchall_e

    monitor-exit p0

    return-void

    :cond_e8
    :try_start_e8
    iget-object v5, v3, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v5, v1}, Lcom/android/server/timezone/PackageVersions;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11f

    const-string/jumbo v5, "timezone.PackageTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "triggerUpdateIfNeeded: Stored package versions="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", do not match current package versions="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". Triggering check."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    :cond_11f
    const-string/jumbo v5, "timezone.PackageTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "triggerUpdateIfNeeded: Stored package versions match currently installed versions, currentInstalledVersions="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", packageStatus.mCheckStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v3, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_cd

    const-string/jumbo v5, "timezone.PackageTracker"

    const-string/jumbo v6, "triggerUpdateIfNeeded: Prior check succeeded. No need to trigger."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    invoke-interface {v5}, Lcom/android/server/timezone/IntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_159
    .catchall {:try_start_e8 .. :try_end_159} :catchall_e

    monitor-exit p0

    return-void

    :cond_15b
    :try_start_15b
    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    invoke-interface {v5, v0}, Lcom/android/server/timezone/IntentHelper;->sendTriggerUpdateCheck(Lcom/android/server/timezone/CheckToken;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->setCheckInProgress()V

    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/IntentHelper;

    iget v6, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lcom/android/server/timezone/IntentHelper;->scheduleReliabilityTrigger(J)V
    :try_end_16e
    .catchall {:try_start_15b .. :try_end_16e} :catchall_e

    monitor-exit p0

    return-void
.end method
