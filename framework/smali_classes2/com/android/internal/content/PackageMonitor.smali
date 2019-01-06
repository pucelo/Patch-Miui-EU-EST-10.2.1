.class public abstract Lcom/android/internal/content/PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitor.java"


# static fields
.field public static final PACKAGE_PERMANENT_CHANGE:I = 0x3

.field public static final PACKAGE_TEMPORARY_CHANGE:I = 0x2

.field public static final PACKAGE_UNCHANGED:I = 0x0

.field public static final PACKAGE_UPDATING:I = 0x1

.field static final sExternalFilt:Landroid/content/IntentFilter;

.field static final sNonDataFilt:Landroid/content/IntentFilter;

.field static final sPackageFilt:Landroid/content/IntentFilter;


# instance fields
.field mAppearingPackages:[Ljava/lang/String;

.field mChangeType:I

.field mChangeUserId:I

.field mDisappearingPackages:[Ljava/lang/String;

.field mModifiedComponents:[Ljava/lang/String;

.field mModifiedPackages:[Ljava/lang/String;

.field mRegisteredContext:Landroid/content/Context;

.field mRegisteredHandler:Landroid/os/Handler;

.field mSomePackagesChanged:Z

.field mTempArray:[Ljava/lang/String;

.field final mUpdatingPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public anyPackagesAppearing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public anyPackagesDisappearing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public didSomePackagesChange()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    return v0
.end method

.method public getChangingUserId()I
    .registers 2

    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    return v0
.end method

.method getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getRegisteredHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isComponentModified(Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    if-nez v1, :cond_8

    :cond_7
    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_d
    if-ltz v0, :cond_1e

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    return v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1e
    return v2
.end method

.method public isPackageAppearing(Ljava/lang/String;)I
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_a
    if-ltz v0, :cond_1c

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1c
    return v2
.end method

.method public isPackageDisappearing(Ljava/lang/String;)I
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_a
    if-ltz v0, :cond_1c

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1c
    return v2
.end method

.method public isPackageModified(Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_a
    if-ltz v0, :cond_1b

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    return v1

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1b
    return v2
.end method

.method isPackageUpdating(Ljava/lang/String;)Z
    .registers 4

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isReplacing()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onBeginPackageChanges()V
    .registers 1

    return-void
.end method

.method public onFinishPackageChanges()V
    .registers 1

    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onHandleUserStop(Landroid/content/Intent;I)V
    .registers 3

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 9

    const/4 v2, 0x0

    if-eqz p3, :cond_14

    array-length v3, p3

    move v1, v2

    :goto_5
    if-ge v1, v3, :cond_14

    aget-object v0, p3, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v1, 0x1

    return v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onPackageRemovedAllUsers(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    const/16 v11, -0x2710

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const-string/jumbo v8, "android.intent.extra.user_handle"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    iget v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    if-ne v8, v11, :cond_2e

    const-string/jumbo v6, "PackageMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Intent broadcast does not contain user handle: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onBeginPackageChanges()V

    iput-object v9, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    iput-object v9, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    iput-boolean v10, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    iput-object v9, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9b

    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v3, :cond_84

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v6, v10

    const-string/jumbo v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_91

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    :goto_72
    iget v6, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    iget v6, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    if-ne v6, v7, :cond_84

    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v7

    :try_start_7e
    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_98

    monitor-exit v7

    :cond_84
    :goto_84
    iget-boolean v6, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v6, :cond_8b

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onSomePackagesChanged()V

    :cond_8b
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onFinishPackageChanges()V

    iput v11, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    return-void

    :cond_91
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    goto :goto_72

    :catchall_98
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_9b
    const-string/jumbo v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e6

    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v3, :cond_84

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v6, v10

    const-string/jumbo v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d1

    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v6

    monitor-exit v6

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStarted(Ljava/lang/String;I)V

    :cond_cb
    :goto_cb
    iget v6, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    goto :goto_84

    :cond_d1
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    const-string/jumbo v6, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_cb

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedAllUsers(Ljava/lang/String;I)V

    goto :goto_cb

    :cond_e6
    const-string/jumbo v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11f

    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    if-eqz v3, :cond_84

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v6, v10

    const/4 v6, 0x3

    iput v6, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11a

    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    :cond_11a
    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    goto/16 :goto_84

    :cond_11f
    const-string/jumbo v8, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13a

    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v3, :cond_84

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageDataCleared(Ljava/lang/String;I)V

    goto/16 :goto_84

    :cond_13a
    const-string/jumbo v8, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_163

    const-string/jumbo v7, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    iput v6, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    const-string/jumbo v7, "android.intent.extra.UID"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, p2, v6, v7, v10}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_84

    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/internal/content/PackageMonitor;->setResultCode(I)V

    goto/16 :goto_84

    :cond_163
    const-string/jumbo v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_186

    new-array v8, v7, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    iput v6, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    const-string/jumbo v8, "android.intent.extra.UID"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, p2, v6, v8, v7}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    goto/16 :goto_84

    :cond_186
    const-string/jumbo v8, "android.intent.action.UID_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19b

    const-string/jumbo v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/content/PackageMonitor;->onUidRemoved(I)V

    goto/16 :goto_84

    :cond_19b
    const-string/jumbo v8, "android.intent.action.USER_STOPPED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b9

    const-string/jumbo v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_84

    const-string/jumbo v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, p2, v6}, Lcom/android/internal/content/PackageMonitor;->onHandleUserStop(Landroid/content/Intent;I)V

    goto/16 :goto_84

    :cond_1b9
    const-string/jumbo v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ec

    const-string/jumbo v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    const-string/jumbo v8, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1d5

    move v6, v7

    :cond_1d5
    iput v6, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v4, :cond_84

    invoke-virtual {p0, v4}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1df
    array-length v6, v4

    if-ge v2, v6, :cond_84

    aget-object v6, v4, v2

    iget v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1df

    :cond_1ec
    const-string/jumbo v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21f

    const-string/jumbo v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    const-string/jumbo v8, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_208

    move v6, v7

    :cond_208
    iput v6, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v4, :cond_84

    invoke-virtual {p0, v4}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_212
    array-length v6, v4

    if-ge v2, v6, :cond_84

    aget-object v6, v4, v2

    iget v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_212

    :cond_21f
    const-string/jumbo v6, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_236

    const-string/jumbo v6, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    invoke-virtual {p0, v4}, Lcom/android/internal/content/PackageMonitor;->onPackagesSuspended([Ljava/lang/String;)V

    goto/16 :goto_84

    :cond_236
    const-string/jumbo v6, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    const-string/jumbo v6, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    invoke-virtual {p0, v4}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    goto/16 :goto_84
.end method

.method public onSomePackagesChanged()V
    .registers 1

    return-void
.end method

.method public onUidRemoved(I)V
    .registers 2

    return-void
.end method

.method public register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    .registers 6

    if-nez p2, :cond_a

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    return-void

    :cond_a
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_6
.end method

.method public register(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V
    .registers 11

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-object p1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    if-eqz p2, :cond_3b

    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    if-eqz p3, :cond_3a

    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    if-eqz p3, :cond_3a

    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_3a
.end method

.method public unregister()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    return-void
.end method
