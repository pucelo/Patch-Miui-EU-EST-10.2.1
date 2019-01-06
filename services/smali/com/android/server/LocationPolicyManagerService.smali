.class public Lcom/android/server/LocationPolicyManagerService;
.super Landroid/location/ILocationPolicyManager$Stub;
.source "LocationPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationPolicyManagerService$1;,
        Lcom/android/server/LocationPolicyManagerService$2;,
        Lcom/android/server/LocationPolicyManagerService$3;,
        Lcom/android/server/LocationPolicyManagerService$4;,
        Lcom/android/server/LocationPolicyManagerService$5;,
        Lcom/android/server/LocationPolicyManagerService$6;,
        Lcom/android/server/LocationPolicyManagerService$7;,
        Lcom/android/server/LocationPolicyManagerService$8;,
        Lcom/android/server/LocationPolicyManagerService$9;,
        Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;,
        Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.location.action.ALLOW_BACKGROUND"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_HIGH_POWER:Ljava/lang/String; = "high-power"

.field private static final ATTR_LOCATION_PROVIDER:Ljava/lang/String; = "provider"

.field private static final ATTR_MIN_INTERVAL:Ljava/lang/String; = "minIntervalMs"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final LOGD:Z = true

.field private static final LOGV:Z = true

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x2

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocationPolicy"

.field private static final TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "LocationPolicy:allowBackground"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_LOCATION_POLICY:Ljava/lang/String; = "location-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0x1

.field static sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;


# instance fields
.field private DEVICE_IDLE_CHANGE:Ljava/lang/String;

.field private mActiveNotifs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private volatile mDeviceIdle:Z

.field private mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/location/ILocationPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private volatile mLocationMode:I

.field private mLocationModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

.field private mLocationPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/LocationPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifManager:Landroid/app/INotificationManager;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private mPowerManager:Landroid/os/PowerManager;

.field private volatile mRestrictBackground:Z

.field private final mRulesLock:Ljava/lang/Object;

.field private volatile mScreenOn:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mUidInNavigation:Landroid/util/SparseBooleanArray;

.field private mUidPolicies:Landroid/util/SparseIntArray;

.field private mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

.field private mUidStateHelper:Lcom/android/server/UidStateHelper;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/LocationPolicyManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdle:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/LocationPolicyManagerService;)Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/LocationPolicyManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdle:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/LocationPolicyManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationMode:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/LocationPolicyManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/LocationPolicyManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/LocationPolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->removePoliciesForUserLocked(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateLocationModeChangeLocked()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateLocationRulesLocked()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForScreenLocked()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/LocationPolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .registers 7

    invoke-direct {p0}, Landroid/location/ILocationPolicyManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/LocationPolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$1;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

    new-instance v0, Lcom/android/server/LocationPolicyManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$2;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/LocationPolicyManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$3;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/LocationPolicyManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$4;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/LocationPolicyManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$5;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/LocationPolicyManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$6;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/LocationPolicyManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$7;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/LocationPolicyManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$8;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/LocationPolicyManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$9;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    iput-object p2, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationManager:Landroid/location/ILocationManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "LocationPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/location/LocationOpHandler;

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/LocationOpHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/LocationPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "locationpolicy.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    new-instance v0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    return-void
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v1, p1, v3, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private enqueueRestrictedNotification(Ljava/lang/String;)V
    .registers 16

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x110900a0

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    const v0, 0x110900a1

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v0, 0x1080078

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v8, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v8, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v0, "com.android.server.location.action.ALLOW_BACKGROUND"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v0, v3, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :try_start_45
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v10, v0, [I

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_60} :catch_61

    :goto_60
    return-void

    :catch_61
    move-exception v9

    goto :goto_60
.end method

.method public static getDefaultService()Lcom/android/server/LocationPolicyManagerService;
    .registers 2

    sget-object v0, Lcom/android/server/LocationPolicyManagerService;->sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/LocationPolicyManagerService;->sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "LocationPolicyManagerService has not been initialized "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOpMinIntervalMsLocked(I)I
    .registers 5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_38

    :cond_4
    :goto_4
    return v0

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationPolicy;

    iget v0, v1, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    goto :goto_4

    :pswitch_1e
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationPolicy;

    iget v0, v1, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    goto :goto_4

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method private static getSystemDir()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isDeviceIdle()Z
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    const-class v1, Landroid/os/PowerManager;

    const-string/jumbo v2, "isDeviceIdleMode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1b
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1b} :catch_1d

    move-result v1

    return v1

    :catch_1d
    move-exception v0

    return v4
.end method

.method private isScreenOn()Z
    .registers 5

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_22

    const-class v1, Landroid/os/PowerManager;

    const-string/jumbo v2, "isScreenOn"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_22
    const-class v1, Landroid/os/PowerManager;

    const-string/jumbo v2, "isInteractive"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_3c} :catch_3e

    move-result v1

    return v1

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 v1, 0x1

    return v1
.end method

.method private isUidForegroundLocked(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/UidStateHelper;->isUidForeground(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isUidValidForRules(I)Z
    .registers 2

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_a

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method static newDefaultService(Landroid/content/Context;Landroid/location/ILocationManager;)Lcom/android/server/LocationPolicyManagerService;
    .registers 3

    new-instance v0, Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/LocationPolicyManagerService;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    sput-object v0, Lcom/android/server/LocationPolicyManagerService;->sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {}, Lcom/android/server/LocationPolicyManagerService;->getDefaultService()Lcom/android/server/LocationPolicyManagerService;

    move-result-object v0

    return-object v0
.end method

.method private readPolicyLocked()V
    .registers 21

    const-string/jumbo v17, "LocationPolicy"

    const-string/jumbo v18, "readPolicyLocked()"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->clear()V

    const/4 v7, 0x0

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v9, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v16, 0x1

    :cond_33
    :goto_33
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_197

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_33

    const-string/jumbo v17, "policy-list"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_70

    const-string/jumbo v17, "version"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v17, "restrictBackground"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z
    :try_end_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_6a} :catch_6b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_6a} :catch_ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_6a} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_6a} :catch_124
    .catchall {:try_start_1c .. :try_end_6a} :catchall_16d

    goto :goto_33

    :catch_6b
    move-exception v3

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_6f
    return-void

    :cond_70
    :try_start_70
    const-string/jumbo v17, "location-policy"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_be

    const-string/jumbo v17, "provider"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v17, "high-power"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    const-string/jumbo v17, "minIntervalMs"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v12, v10}, Landroid/location/LocationPolicy;->getLocationPolicy(Ljava/lang/String;I)Landroid/location/LocationPolicy;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_70 .. :try_end_ab} :catch_6b
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_ab} :catch_ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_ab} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_ab} :catch_124
    .catchall {:try_start_70 .. :try_end_ab} :catchall_16d

    goto :goto_33

    :catch_ac
    move-exception v4

    :try_start_ad
    const-string/jumbo v17, "LocationPolicy"

    const-string/jumbo v18, "problem reading location policy"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ba
    .catchall {:try_start_ad .. :try_end_ba} :catchall_16d

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6f

    :cond_be
    :try_start_be
    const-string/jumbo v17, "uid-policy"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_137

    const-string/jumbo v17, "uid"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v17, "policy"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    invoke-static {v15}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v17

    if-eqz v17, :cond_ff

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v11, v1}, Lcom/android/server/LocationPolicyManagerService;->setUidPolicyUnchecked(IIZ)V
    :try_end_ea
    .catch Ljava/io/FileNotFoundException; {:try_start_be .. :try_end_ea} :catch_6b
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_ea} :catch_ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_be .. :try_end_ea} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_ea} :catch_124
    .catchall {:try_start_be .. :try_end_ea} :catchall_16d

    goto/16 :goto_33

    :catch_ec
    move-exception v6

    :try_start_ed
    const-string/jumbo v17, "LocationPolicy"

    const-string/jumbo v18, "problem reading location policy"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fa
    .catchall {:try_start_ed .. :try_end_fa} :catchall_16d

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_6f

    :cond_ff
    :try_start_ff
    const-string/jumbo v17, "LocationPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "unable to apply policy to UID "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "; ignoring"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catch Ljava/io/FileNotFoundException; {:try_start_ff .. :try_end_122} :catch_6b
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_122} :catch_ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ff .. :try_end_122} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_122} :catch_124
    .catchall {:try_start_ff .. :try_end_122} :catchall_16d

    goto/16 :goto_33

    :catch_124
    move-exception v5

    :try_start_125
    const-string/jumbo v17, "LocationPolicy"

    const-string/jumbo v18, "problem reading location policy"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_132
    .catchall {:try_start_125 .. :try_end_132} :catchall_16d

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_6f

    :cond_137
    :try_start_137
    const-string/jumbo v17, "app-policy"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_33

    const-string/jumbo v17, "appId"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v17, "policy"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    invoke-static {v15}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v17

    if-eqz v17, :cond_172

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v11, v1}, Lcom/android/server/LocationPolicyManagerService;->setUidPolicyUnchecked(IIZ)V
    :try_end_16b
    .catch Ljava/io/FileNotFoundException; {:try_start_137 .. :try_end_16b} :catch_6b
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_16b} :catch_ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_137 .. :try_end_16b} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_16b} :catch_124
    .catchall {:try_start_137 .. :try_end_16b} :catchall_16d

    goto/16 :goto_33

    :catchall_16d
    move-exception v17

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v17

    :cond_172
    :try_start_172
    const-string/jumbo v17, "LocationPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "unable to apply policy to UID "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "; ignoring"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_195
    .catch Ljava/io/FileNotFoundException; {:try_start_172 .. :try_end_195} :catch_6b
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_195} :catch_ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_172 .. :try_end_195} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_195} :catch_124
    .catchall {:try_start_172 .. :try_end_195} :catchall_16d

    goto/16 :goto_33

    :cond_197
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_6f
.end method

.method private removePoliciesForUserLocked(I)V
    .registers 8

    const/4 v3, 0x0

    const-string/jumbo v4, "LocationPolicy"

    const-string/jumbo v5, "removePoliciesForUserLocked()"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v3, [I

    const/4 v0, 0x0

    :goto_d
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_28

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_25

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_28
    array-length v4, v2

    if-lez v4, :cond_3e

    array-length v4, v2

    :goto_2c
    if-ge v3, v4, :cond_3b

    aget v1, v2, v3

    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->delete(I)V

    invoke-direct {p0, v1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_3b
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    :cond_3e
    return-void
.end method

.method private setUidPolicyUnchecked(IIZ)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->getUidPolicy(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    if-eqz p3, :cond_14

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit v2

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateLocationModeChangeLocked()V
    .registers 3

    const-string/jumbo v0, "LocationPolicy"

    const-string/jumbo v1, "updateLocationModeChangeLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateLocationRulesLocked()V
    .registers 11

    const-string/jumbo v8, "LocationPolicy"

    const-string/jumbo v9, "updateLocationRulesLocked()"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationManager:Landroid/location/ILocationManager;

    invoke-interface {v8}, Landroid/location/ILocationManager;->getAllProviders()Ljava/util/List;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_4b

    move-result-object v0

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationPolicy;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_35
    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/location/LocationPolicy;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :catch_4b
    move-exception v1

    return-void

    :cond_4d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_22

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_65
    return-void
.end method

.method private updateNotificationsLocked()V
    .registers 6

    const-string/jumbo v3, "LocationPolicy"

    const-string/jumbo v4, "updateNotificationsLocked()"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iget-boolean v3, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    if-eqz v3, :cond_21

    const-string/jumbo v3, "LocationPolicy:allowBackground"

    invoke-direct {p0, v3}, Lcom/android/server/LocationPolicyManagerService;->enqueueRestrictedNotification(Ljava/lang/String;)V

    :cond_21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-direct {p0, v1}, Lcom/android/server/LocationPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    goto :goto_25

    :cond_3d
    return-void
.end method

.method private updateRulesForDeviceIdleLocked()V
    .registers 7

    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->getCurrentLocationRequestUids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_33

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v2, :cond_33

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_30

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-direct {p0, v3}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_33
    return-void
.end method

.method private updateRulesForRestrictBackgroundLocked()V
    .registers 12

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x2200

    invoke-virtual {v3, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_47

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_2f

    :cond_47
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .registers 6

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_27

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_24

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    invoke-virtual {v3, v2}, Lcom/android/server/UidStateHelper;->isUidForeground(I)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-direct {p0, v2}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_27
    return-void
.end method

.method private updateRulesForUidLocked(I)V
    .registers 7

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/server/LocationPolicyManagerService;->isUidValidForRules(I)Z

    move-result v3

    if-nez v3, :cond_8

    return-void

    :cond_8
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    and-int/lit16 v3, v1, 0xff

    if-eqz v3, :cond_1b

    const/16 v2, 0xff

    :cond_1b
    if-nez v0, :cond_23

    iget-boolean v3, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    if-eqz v3, :cond_23

    const/16 v2, 0xff

    :cond_23
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v2, 0x0

    :cond_2c
    if-nez v2, :cond_3e

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_33
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_3e
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_33
.end method

.method private writePolicyLocked()V
    .registers 12

    const-string/jumbo v8, "LocationPolicy"

    const-string/jumbo v9, "writePolicyLocked()"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_a
    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v8, "utf-8"

    invoke-interface {v3, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v3, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v8, "policy-list"

    const/4 v9, 0x0

    invoke-interface {v3, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "version"

    const/4 v9, 0x1

    invoke-static {v3, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v8, "restrictBackground"

    iget-boolean v9, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v3, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_81

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationPolicy;

    const-string/jumbo v8, "location-policy"

    const/4 v9, 0x0

    invoke-interface {v3, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "provider"

    iget-object v9, v5, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v3, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "high-power"

    iget-boolean v9, v5, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-static {v3, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v8, "minIntervalMs"

    iget v9, v5, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    invoke-static {v3, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v8, "location-policy"

    const/4 v9, 0x0

    invoke-interface {v3, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_77} :catch_78

    goto :goto_44

    :catch_78
    move-exception v0

    if-eqz v1, :cond_80

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v8, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_80
    :goto_80
    return-void

    :cond_81
    const/4 v2, 0x0

    :goto_82
    :try_start_82
    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_b6

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-nez v4, :cond_9b

    :goto_98
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    :cond_9b
    const-string/jumbo v8, "uid-policy"

    const/4 v9, 0x0

    invoke-interface {v3, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "uid"

    invoke-static {v3, v8, v7}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v8, "policy"

    invoke-static {v3, v8, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v8, "uid-policy"

    const/4 v9, 0x0

    invoke-interface {v3, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_98

    :cond_b6
    const-string/jumbo v8, "policy-list"

    const/4 v9, 0x0

    invoke-interface {v3, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v8, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_c5} :catch_78

    goto :goto_80
.end method


# virtual methods
.method public checkUidLocationOp(II)Z
    .registers 12

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_8
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v0, 0x1

    :cond_f
    :goto_f
    if-eqz v0, :cond_58

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/android/server/location/LocationOpHandler;->updateLastLocationOp(IIJ)V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_3a

    :goto_16
    monitor-exit v8

    return v0

    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/UidStateHelper;->isUidForeground(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v0, 0x1

    invoke-direct {p0, p2}, Lcom/android/server/LocationPolicyManagerService;->getOpMinIntervalMsLocked(I)I

    move-result v6

    if-eqz v6, :cond_f

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/LocationOpHandler;->isFrequenctlyOp(IIJI)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/LocationOpHandler;->setFollowupAction(IIJI)V
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_3a

    goto :goto_f

    :catchall_3a
    move-exception v1

    monitor-exit v8

    throw v1

    :cond_3d
    if-eqz p2, :cond_4d

    :try_start_3f
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    const/4 v1, 0x1

    if-eq v7, v1, :cond_4b

    if-nez v7, :cond_f

    :cond_4b
    const/4 v0, 0x1

    goto :goto_f

    :cond_4d
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-nez v7, :cond_f

    const/4 v0, 0x1

    goto :goto_f

    :cond_58
    const-string/jumbo v1, "LocationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", op = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is blocked by location policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_3f .. :try_end_84} :catchall_3a

    goto :goto_16
.end method

.method public checkUidNavigationScreenLock(I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerServiceInjector;->getScreenWakeLockHoldByUid(I)I

    move-result v1

    if-lez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.DUMP"

    const-string/jumbo v5, "LocationPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    array-length v4, p3

    :goto_12
    if-ge v3, v4, :cond_1c

    aget-object v0, p3, v3

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1c
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mLocationMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mScreenOn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPolicyFile="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRestrictBackground="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mLocationPolicies size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mLocationRules size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUidPolicies size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_e3
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_11e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {p2, v3}, Landroid/location/LocationPolicyManager;->dumpPolicy(Ljava/io/PrintWriter;I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e3

    :cond_11e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUidRules size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_13c
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_177

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {p2, v3}, Landroid/location/LocationPolicyManager;->dumpRules(Ljava/io/PrintWriter;I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13c

    :cond_177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUidInNavigation size ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_195
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1ce

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", inNavigation="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1cb
    .catchall {:try_start_1f .. :try_end_1cb} :catchall_1e2

    add-int/lit8 v2, v2, 0x1

    goto :goto_195

    :cond_1ce
    monitor-exit v4

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v3, :cond_1e1

    const-string/jumbo v3, "LocationPolicy"

    const-string/jumbo v4, "miui gps strategy dump"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1e1
    return-void

    :catchall_1e2
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method getFakeGpsFeatureOnState()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string/jumbo v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->getOnState()Z

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method getFakeGpsLocation()Landroid/location/Location;
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string/jumbo v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_17
    return-object v3
.end method

.method public getLocationPolicies()[Landroid/location/LocationPolicy;
    .registers 4

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string/jumbo v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Landroid/location/LocationPolicy;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/location/LocationPolicy;
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_24

    monitor-exit v1

    return-object v0

    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getPhoneStationary()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string/jumbo v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->getPhoneStationary()Z

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public getRestrictBackground()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string/jumbo v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iget-boolean v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_12

    monitor-exit v0

    return v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getUidPolicy(I)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string/jumbo v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_17

    move-result v0

    monitor-exit v1

    return v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .registers 9

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.MANAGE_LOCATION_POLICY"

    const-string/jumbo v6, "LocationPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v3, v4, [I

    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    :goto_12
    :try_start_12
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2f

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_2c

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_31

    move-result-object v3

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2f
    monitor-exit v5

    return-object v3

    :catchall_31
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public isUidForeground(I)Z
    .registers 4

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->isUidForegroundLocked(I)Z
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_11

    move-result v1

    monitor-exit v0

    return v1

    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method registerFakeGpsStatus(Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string/jumbo v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->registerFakeGpsStatus(Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;)V

    :cond_14
    return-void
.end method

.method public registerListener(Landroid/location/ILocationPolicyListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.LOCATION_POLICY_INTERNAL"

    const-string/jumbo v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public setFakeGpsFeatureOnState(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string/jumbo v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->setOnState(Z)V

    return-void
.end method

.method public setLocationPolicies([Landroid/location/LocationPolicy;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_LOCATION_POLICY"

    const-string/jumbo v4, "LocationPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    array-length v3, p1

    move v2, v1

    :goto_e
    if-ge v2, v3, :cond_3a

    aget-object v0, p1, v2

    invoke-virtual {v0}, Landroid/location/LocationPolicy;->getMatchRule()I

    move-result v4

    packed-switch v4, :pswitch_data_60

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/LocationPolicy;->getMatchRule()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_3a
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3d
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    array-length v3, p1

    :goto_43
    if-ge v1, v3, :cond_51

    aget-object v0, p1, v1

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_51
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateLocationRulesLocked()V

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V
    :try_end_5a
    .catchall {:try_start_3d .. :try_end_5a} :catchall_5c

    monitor-exit v2

    return-void

    :catchall_5c
    move-exception v1

    monitor-exit v2

    throw v1

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method public setPhoneStationary(ZLandroid/location/Location;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string/jumbo v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->setPhoneStationay(ZLandroid/location/Location;)V

    return-void
.end method

.method public setRestrictBackground(Z)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_LOCATION_POLICY"

    const-string/jumbo v3, "LocationPolicy"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_29

    monitor-exit v2

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    :goto_20
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_29
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2c
    move v0, v1

    goto :goto_20
.end method

.method public setUidNavigationStart(I)V
    .registers 5

    const-string/jumbo v0, "LocationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " navigation start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_24
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit v1

    return-void

    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUidNavigationStop(I)V
    .registers 5

    const-string/jumbo v0, "LocationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " navigation stopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_24
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez v0, :cond_36

    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit v1

    return-void

    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUidPolicy(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string/jumbo v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/LocationPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    return-void
.end method

.method public systemRunning()V
    .registers 14

    const/4 v12, 0x0

    const-string/jumbo v8, "LocationPolicy"

    const-string/jumbo v9, "systemRunning()"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_d
    invoke-static {}, Lcom/android/server/UidStateHelper;->get()Lcom/android/server/UidStateHelper;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    iget-object v10, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

    invoke-virtual {v8, v10}, Lcom/android/server/UidStateHelper;->registerUidStateObserver(Lcom/android/internal/app/IUidStateChangeCallback;)V

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "power"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    iput-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->readPolicyLocked()V

    iget-boolean v8, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    if-eqz v8, :cond_34

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    :cond_34
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->isScreenOn()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForScreenLocked()V

    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->isDeviceIdle()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdle:Z
    :try_end_43
    .catchall {:try_start_d .. :try_end_43} :catchall_ea

    monitor-exit v9

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "package"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v5, v12, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string/jumbo v11, "android.intent.action.UID_REMOVED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v10, v12, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v8, "android.intent.action.USER_ADDED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v7, v12, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v8, "com.android.server.location.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v10, "android.permission.MANAGE_LOCATION_POLICY"

    iget-object v11, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v0, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v8, "android.location.MODE_CHANGED"

    invoke-direct {v4, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v4, v12, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :try_start_c6
    const-class v8, Landroid/os/PowerManager;

    const-string/jumbo v9, "ACTION_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->DEVICE_IDLE_CHANGE:Ljava/lang/String;

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->DEVICE_IDLE_CHANGE:Ljava/lang/String;

    invoke-direct {v1, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v1, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_e9
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_c6 .. :try_end_e9} :catch_f2
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_e9} :catch_ed

    :goto_e9
    return-void

    :catchall_ea
    move-exception v8

    monitor-exit v9

    throw v8

    :catch_ed
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e9

    :catch_f2
    move-exception v2

    goto :goto_e9
.end method

.method public unregisterListener(Landroid/location/ILocationPolicyListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.LOCATION_POLICY_INTERNAL"

    const-string/jumbo v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
