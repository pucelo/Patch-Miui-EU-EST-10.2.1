.class public Lcom/android/systemui/keyguard/WorkLockActivityController;
.super Ljava/lang/Object;
.source "WorkLockActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/WorkLockActivityController$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIam:Landroid/app/IActivityManager;

.field private final mLockListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

.field private final mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/keyguard/WorkLockActivityController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/WorkLockActivityController;->startWorkChallengeInTask(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/keyguard/WorkLockActivityController;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/app/IActivityManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/app/IActivityManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/keyguard/WorkLockActivityController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/WorkLockActivityController$1;-><init>(Lcom/android/systemui/keyguard/WorkLockActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mLockListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-object p3, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mIam:Landroid/app/IActivityManager;

    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mLockListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;I)I
    .locals 14

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mIam:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    move-object v3, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v13

    const/16 v0, -0x60

    return v0

    :catch_1
    move-exception v12

    const/16 v0, -0x60

    return v0
.end method

.method private startWorkChallengeInTask(II)V
    .locals 8

    const/4 v7, 0x1

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/systemui/keyguard/WorkLockActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "android.intent.extra.USER_ID"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x4020000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v7, v3}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, -0x2

    invoke-direct {p0, v0, v3, v4}, Lcom/android/systemui/keyguard/WorkLockActivityController;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;I)I

    move-result v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, p1, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(IZ)V

    goto :goto_0
.end method
