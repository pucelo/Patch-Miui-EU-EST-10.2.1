.class public final Landroid/view/accessibility/AccessibilityManager;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityManager$1;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$MyCallback;,
        Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    }
.end annotation


# static fields
.field public static final ACTION_CHOOSE_ACCESSIBILITY_BUTTON:Ljava/lang/String; = "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

.field public static final AUTOCLICK_DELAY_DEFAULT:I = 0x258

.field public static final DALTONIZER_CORRECT_DEUTERANOMALY:I = 0xc

.field public static final DALTONIZER_DISABLED:I = -0x1

.field public static final DALTONIZER_SIMULATE_MONOCHROMACY:I = 0x0

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManager"

.field public static final STATE_FLAG_ACCESSIBILITY_ENABLED:I = 0x1

.field public static final STATE_FLAG_BOUND_SERVICES_CHANGED:I = 0x8

.field public static final STATE_FLAG_HIGH_TEXT_CONTRAST_ENABLED:I = 0x4

.field public static final STATE_FLAG_TOUCH_EXPLORATION_ENABLED:I = 0x2

.field public static final STATE_FLAG_UIAUTOMATION_ENABLED:I = 0x10

.field private static sInstance:Landroid/view/accessibility/AccessibilityManager;

.field static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field private final mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final mCallback:Landroid/os/Handler$Callback;

.field private final mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

.field private final mCurrentBoundServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field private final mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field mIsEnabled:Z

.field mIsFinalEnabled:Z

.field mIsHighTextContrastEnabled:Z

.field mIsInterestedPackage:Z

.field mIsTouchExplorationEnabled:Z

.field mIsUiAutomationEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field mOptimizeEnabled:Z

.field final mPackageName:Ljava/lang/String;

.field mRelevantEventTypes:I

.field private mRequestPreparerLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityRequestPreparer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mService:Landroid/view/accessibility/IAccessibilityManager;

.field private final mServicesStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method static synthetic -get0(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/accessibility/AccessibilityManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCurrentBoundServices:Ljava/util/List;

    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$MyCallback;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, "persist.sys.opt_accessibility"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mOptimizeEnabled:Z

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_61
    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_66

    monitor-exit v0

    return-void

    :catchall_66
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/view/accessibility/IAccessibilityManager;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCurrentBoundServices:Ljava/util/List;

    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyCallback;

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$MyCallback;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, "persist.sys.opt_accessibility"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mOptimizeEnabled:Z

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_52
    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_57

    monitor-exit v0

    return-void

    :catchall_57
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .registers 5

    sget-object v2, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_18

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_25

    :cond_18
    const/4 v0, -0x2

    :goto_19
    new-instance v1, Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v0}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    sput-object v1, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_33

    :cond_21
    monitor-exit v2

    sget-object v1, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    return-object v1

    :cond_25
    :try_start_25
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_33

    move-result v0

    goto :goto_19

    :catchall_33
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v0, :cond_8

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    :cond_8
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    return-object v0
.end method

.method public static isAccessibilityButtonSupported()Z
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method private isInterestedPackageLocked()Z
    .registers 10

    const/4 v5, 0x0

    const/4 v8, 0x1

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mPackageName:Ljava/lang/String;

    if-eqz v4, :cond_c

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    return v8

    :cond_d
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mCurrentBoundServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v2, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    if-nez v2, :cond_24

    return v8

    :cond_24
    array-length v6, v2

    move v4, v5

    :goto_26
    if-ge v4, v6, :cond_13

    aget-object v3, v2, v4

    iget-object v7, p0, Landroid/view/accessibility/AccessibilityManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    return v8

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_36
    return v5
.end method

.method static synthetic lambda$-android_view_accessibility_AccessibilityManager_42657(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    return-void
.end method

.method static synthetic lambda$-android_view_accessibility_AccessibilityManager_43616(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Z)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    return-void
.end method

.method static synthetic lambda$-android_view_accessibility_AccessibilityManager_44579(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Z)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;->onHighTextContrastStateChanged(Z)V

    return-void
.end method

.method private notifyAccessibilityStateChanged()V
    .registers 9

    iget-object v6, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3a

    move-result v5

    if-eqz v5, :cond_d

    monitor-exit v6

    return-void

    :cond_d
    :try_start_d
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    new-instance v3, Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v3, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_3a

    monitor-exit v6

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v4, :cond_3d

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v1, v2}, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :catchall_3a
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_3d
    return-void
.end method

.method private notifyHighTextContrastStateChanged()V
    .registers 9

    iget-object v6, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3a

    move-result v5

    if-eqz v5, :cond_d

    monitor-exit v6

    return-void

    :cond_d
    :try_start_d
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    new-instance v3, Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v3, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_3a

    monitor-exit v6

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v4, :cond_3d

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v1, v2}, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :catchall_3a
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_3d
    return-void
.end method

.method private notifyTouchExplorationStateChanged()V
    .registers 9

    iget-object v6, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3a

    move-result v5

    if-eqz v5, :cond_d

    monitor-exit v6

    return-void

    :cond_d
    :try_start_d
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    new-instance v3, Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v3, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_3a

    monitor-exit v6

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v4, :cond_3d

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v1, v2}, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g$1;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :catchall_3a
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_3d
    return-void
.end method

.method private setStateLocked(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(IZ)V

    return-void
.end method

.method private setStateLocked(IZ)V
    .registers 15

    const/4 v9, 0x0

    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_b7

    const/4 v1, 0x1

    :goto_6
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_ba

    const/4 v4, 0x1

    :goto_b
    and-int/lit8 v10, p1, 0x4

    if-eqz v10, :cond_bd

    const/4 v2, 0x1

    :goto_10
    and-int/lit8 v10, p1, 0x8

    if-eqz v10, :cond_c0

    const/4 v0, 0x1

    :goto_15
    and-int/lit8 v10, p1, 0x10

    if-eqz v10, :cond_c3

    const/4 v5, 0x1

    :goto_1a
    iget-boolean v6, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    iget-boolean v8, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    iget-boolean v7, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    iput-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    iput-boolean v5, p0, Landroid/view/accessibility/AccessibilityManager;->mIsUiAutomationEnabled:Z

    if-eq v6, v1, :cond_2d

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityStateChanged()V

    :cond_2d
    if-eq v8, v4, :cond_32

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyTouchExplorationStateChanged()V

    :cond_32
    if-eq v7, v2, :cond_37

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyHighTextContrastStateChanged()V

    :cond_37
    iget-boolean v10, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-eqz v10, :cond_56

    if-nez v0, :cond_3f

    if-eqz p2, :cond_56

    :cond_3f
    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3

    iget-object v10, p0, Landroid/view/accessibility/AccessibilityManager;->mCurrentBoundServices:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    if-eqz v3, :cond_50

    iget-object v10, p0, Landroid/view/accessibility/AccessibilityManager;->mCurrentBoundServices:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_50
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->isInterestedPackageLocked()Z

    move-result v10

    iput-boolean v10, p0, Landroid/view/accessibility/AccessibilityManager;->mIsInterestedPackage:Z

    :cond_56
    iget-boolean v10, p0, Landroid/view/accessibility/AccessibilityManager;->mOptimizeEnabled:Z

    if-eqz v10, :cond_c8

    iget-boolean v10, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-eqz v10, :cond_64

    iget-boolean v9, p0, Landroid/view/accessibility/AccessibilityManager;->mIsUiAutomationEnabled:Z

    if-nez v9, :cond_c6

    iget-boolean v9, p0, Landroid/view/accessibility/AccessibilityManager;->mIsInterestedPackage:Z

    :cond_64
    :goto_64
    iput-boolean v9, p0, Landroid/view/accessibility/AccessibilityManager;->mIsFinalEnabled:Z

    const-string/jumbo v9, "AccessibilityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "AccessibilityManager status: mPackageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/view/accessibility/AccessibilityManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mOptimizeEnabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Landroid/view/accessibility/AccessibilityManager;->mOptimizeEnabled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mIsEnabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mIsUiAutomationEnabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Landroid/view/accessibility/AccessibilityManager;->mIsUiAutomationEnabled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mIsInterestedPackage ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Landroid/view/accessibility/AccessibilityManager;->mIsInterestedPackage:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b7
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_ba
    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_bd
    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_c0
    const/4 v0, 0x0

    goto/16 :goto_15

    :cond_c3
    const/4 v5, 0x0

    goto/16 :goto_1a

    :cond_c6
    const/4 v9, 0x1

    goto :goto_64

    :cond_c8
    iget-boolean v9, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    goto :goto_64
.end method

.method private tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V
    .registers 8

    if-nez p1, :cond_10

    const-string/jumbo v4, "accessibility"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object p1

    :cond_10
    :try_start_10
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    iget v5, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {p1, v4, v5}, Landroid/view/accessibility/IAccessibilityManager;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-static {v2, v3}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(IZ)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_28} :catch_29

    :goto_28
    return-void

    :catch_29
    move-exception v1

    const-string/jumbo v4, "AccessibilityManager"

    const-string/jumbo v5, "AccessibilityManagerService is dead"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method


# virtual methods
.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .registers 9

    const/4 v5, -0x1

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_14

    move-result-object v1

    if-nez v1, :cond_c

    monitor-exit v4

    return v5

    :cond_c
    :try_start_c
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_14

    monitor-exit v4

    :try_start_f
    invoke-interface {v1, p1, p2, v2}, Landroid/view/accessibility/IAccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_17

    move-result v3

    return v3

    :catchall_14
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_17
    move-exception v0

    const-string/jumbo v3, "AccessibilityManager"

    const-string/jumbo v4, "Error while adding an accessibility interaction connection. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method public addAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    if-nez v2, :cond_c

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    :cond_c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRequestPreparer;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_28

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_28
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Landroid/os/Handler;)V
    .registers 5

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    if-nez p2, :cond_9

    iget-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    :cond_9
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V
    .registers 5

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    if-nez p2, :cond_9

    iget-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    :cond_9
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    return v0
.end method

.method public addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Landroid/os/Handler;)V
    .registers 5

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    if-nez p2, :cond_9

    iget-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    :cond_9
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V
    .registers 5

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    if-nez p2, :cond_9

    iget-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    :cond_9
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getAccessibilityServiceList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_22

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public getCallback()Landroid/os/Handler$Callback;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method public getClient()Landroid/view/accessibility/IAccessibilityManagerClient;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    return-object v0
.end method

.method public getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    if-nez v1, :cond_f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1e

    move-result-object v4

    monitor-exit v5

    return-object v4

    :cond_f
    :try_start_f
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1e

    monitor-exit v5

    const/4 v2, 0x0

    :try_start_13
    invoke-interface {v1, p1, v3}, Landroid/view/accessibility/IAccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_21

    move-result-object v2

    :goto_17
    if-eqz v2, :cond_2c

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4

    :catchall_1e
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_21
    move-exception v0

    const-string/jumbo v4, "AccessibilityManager"

    const-string/jumbo v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :cond_2c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    if-nez v1, :cond_f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1e

    move-result-object v4

    monitor-exit v5

    return-object v4

    :cond_f
    :try_start_f
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1e

    monitor-exit v5

    const/4 v2, 0x0

    :try_start_13
    invoke-interface {v1, v3}, Landroid/view/accessibility/IAccessibilityManager;->getInstalledAccessibilityServiceList(I)Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_21

    move-result-object v2

    :goto_17
    if-eqz v2, :cond_2c

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4

    :catchall_1e
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_21
    move-exception v0

    const-string/jumbo v4, "AccessibilityManager"

    const-string/jumbo v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :cond_2c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    if-nez p1, :cond_a

    :cond_9
    return-object v3

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2b

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object v2

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2b
    return-object v3
.end method

.method public getRequestPreparersForAccessibilityId(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityRequestPreparer;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public interrupt()V
    .registers 8

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_22

    move-result-object v2

    if-nez v2, :cond_b

    monitor-exit v5

    return-void

    :cond_b
    :try_start_b
    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v4, :cond_30

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v0, v4, :cond_25

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Accessibility off. Did you forget to check that?"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_25
    :try_start_25
    const-string/jumbo v4, "AccessibilityManager"

    const-string/jumbo v6, "Interrupt called with accessibility disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_22

    monitor-exit v5

    return-void

    :cond_30
    :try_start_30
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_22

    monitor-exit v5

    :try_start_33
    invoke-interface {v2, v3}, Landroid/view/accessibility/IAccessibilityManager;->interrupt(I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    :goto_36
    return-void

    :catch_37
    move-exception v1

    const-string/jumbo v4, "AccessibilityManager"

    const-string/jumbo v5, "Error while requesting interrupt from all services. "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method public isAccessibilityVolumeStreamActive()Z
    .registers 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v2, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    return v2

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1e
    return v3
.end method

.method public isEnabled()Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isFinalEnabled()Z

    move-result v0

    return v0
.end method

.method public isFinalEnabled()Z
    .registers 4

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_14

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v2, 0x0

    monitor-exit v1

    return v2

    :cond_10
    monitor-exit v1

    :cond_11
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsFinalEnabled:Z

    return v1

    :catchall_14
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public isHighTextContrastEnabled()Z
    .registers 4

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :cond_c
    :try_start_c
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    monitor-exit v2

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isTouchExplorationEnabled()Z
    .registers 4

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :cond_c
    :try_start_c
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    monitor-exit v2

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public notifyAccessibilityButtonClicked()V
    .registers 5

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    move-result-object v1

    if-nez v1, :cond_b

    monitor-exit v2

    return-void

    :cond_b
    monitor-exit v2

    :try_start_c
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->notifyAccessibilityButtonClicked()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_13

    :goto_f
    return-void

    :catchall_10
    move-exception v3

    monitor-exit v2

    throw v3

    :catch_13
    move-exception v0

    const-string/jumbo v2, "AccessibilityManager"

    const-string/jumbo v3, "Error while dispatching accessibility button click"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public notifyAccessibilityButtonVisibilityChanged(Z)V
    .registers 6

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    move-result-object v1

    if-nez v1, :cond_b

    monitor-exit v2

    return-void

    :cond_b
    monitor-exit v2

    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->notifyAccessibilityButtonVisibilityChanged(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_13

    :goto_f
    return-void

    :catchall_10
    move-exception v3

    monitor-exit v2

    throw v3

    :catch_13
    move-exception v0

    const-string/jumbo v2, "AccessibilityManager"

    const-string/jumbo v3, "Error while dispatching accessibility button visibility change"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public performAccessibilityShortcut()V
    .registers 5

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    move-result-object v1

    if-nez v1, :cond_b

    monitor-exit v2

    return-void

    :cond_b
    monitor-exit v2

    :try_start_c
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->performAccessibilityShortcut()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_13

    :goto_f
    return-void

    :catchall_10
    move-exception v3

    monitor-exit v2

    throw v3

    :catch_13
    move-exception v0

    const-string/jumbo v2, "AccessibilityManager"

    const-string/jumbo v3, "Error performing accessibility shortcut. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .registers 6

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    move-result-object v1

    if-nez v1, :cond_b

    monitor-exit v2

    return-void

    :cond_b
    monitor-exit v2

    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_13

    :goto_f
    return-void

    :catchall_10
    move-exception v3

    monitor-exit v2

    throw v3

    :catch_13
    move-exception v0

    const-string/jumbo v2, "AccessibilityManager"

    const-string/jumbo v3, "Error while removing an accessibility interaction connection. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public removeAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .registers 5

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    if-nez v2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRequestPreparer;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_25
    return-void
.end method

.method public removeAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_14

    if-ltz v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    monitor-exit v2

    return v1

    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)V
    .registers 4

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_14

    if-ltz v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    monitor-exit v2

    return v1

    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 11

    iget-object v7, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_22

    move-result-object v4

    if-nez v4, :cond_b

    monitor-exit v7

    return-void

    :cond_b
    :try_start_b
    iget-boolean v6, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v6, :cond_30

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v2, v6, :cond_25

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Accessibility off. Did you forget to check that?"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_25
    :try_start_25
    const-string/jumbo v6, "AccessibilityManager"

    const-string/jumbo v8, "AccessibilityEvent sent with accessibility disabled"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_22

    monitor-exit v7

    return-void

    :cond_30
    :try_start_30
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v6

    iget v8, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_22

    and-int/2addr v6, v8

    if-nez v6, :cond_3b

    monitor-exit v7

    return-void

    :cond_3b
    :try_start_3b
    iget-boolean v6, p0, Landroid/view/accessibility/AccessibilityManager;->mIsFinalEnabled:Z
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_22

    if-nez v6, :cond_41

    monitor-exit v7

    return-void

    :cond_41
    :try_start_41
    iget v5, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_22

    monitor-exit v7

    :try_start_44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-interface {v4, p1, v5}, Landroid/view/accessibility/IAccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_55} :catch_59
    .catchall {:try_start_44 .. :try_end_55} :catchall_7f

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    :goto_58
    return-void

    :catch_59
    move-exception v3

    :try_start_5a
    const-string/jumbo v6, "AccessibilityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error during sending "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_5a .. :try_end_7b} :catchall_7f

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_58

    :catchall_7f
    move-exception v6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    throw v6
.end method

.method public sendFingerprintGesture(I)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_12

    move-result-object v1

    if-nez v1, :cond_c

    monitor-exit v2

    return v3

    :cond_c
    monitor-exit v2

    :try_start_d
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->sendFingerprintGesture(I)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_15

    move-result v2

    return v2

    :catchall_12
    move-exception v3

    monitor-exit v2

    throw v3

    :catch_15
    move-exception v0

    return v3
.end method

.method public setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .registers 6

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    move-result-object v1

    if-nez v1, :cond_b

    monitor-exit v2

    return-void

    :cond_b
    monitor-exit v2

    :try_start_c
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_13

    :goto_f
    return-void

    :catchall_10
    move-exception v3

    monitor-exit v2

    throw v3

    :catch_13
    move-exception v0

    const-string/jumbo v2, "AccessibilityManager"

    const-string/jumbo v3, "Error setting picture in picture action replacement"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method
