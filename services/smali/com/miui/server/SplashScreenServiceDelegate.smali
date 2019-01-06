.class public final Lcom/miui/server/SplashScreenServiceDelegate;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/SplashScreenServiceDelegate$1;,
        Lcom/miui/server/SplashScreenServiceDelegate$2;,
        Lcom/miui/server/SplashScreenServiceDelegate$3;,
        Lcom/miui/server/SplashScreenServiceDelegate$4;,
        Lcom/miui/server/SplashScreenServiceDelegate$5;
    }
.end annotation


# static fields
.field private static final ACTION_DEBUG_OFF:Ljava/lang/String; = "miui.intent.action.ad.DEBUG_OFF"

.field private static final ACTION_DEBUG_ON:Ljava/lang/String; = "miui.intent.action.ad.DEBUG_ON"

.field private static final DELAY_BIND_AFTER_BOOT_COMPLETE:J = 0x1d4c0L

.field private static final KEY_API_VERSION:Ljava/lang/String; = "apiVersion"

.field private static final MAX_DELAY_TIME:J = 0x36ee80L

.field private static final MIUI_GENERAL_PERMISSION:Ljava/lang/String; = "miui.permission.USE_INTERNAL_GENERAL_API"

.field private static final MSG_REBIND:I = 0x1

.field public static final SPLASHSCREEN_ACTIVITY:Ljava/lang/String; = "com.miui.systemAdSolution.splashscreen.SplashActivity"

.field private static final SPLASHSCREEN_CLASS:Ljava/lang/String; = "com.miui.systemAdSolution.splashscreen.SplashScreenService"

.field public static final SPLASHSCREEN_GLOBAL_PACKAGE:Ljava/lang/String; = "com.miui.msa.global"

.field public static final SPLASHSCREEN_PACKAGE:Ljava/lang/String; = "com.miui.systemAdSolution"

.field private static final TAG:Ljava/lang/String; = "SplashScreenServiceDelegate"

.field private static final VALUE_API_VERSION:I = 0x2

.field private static sDebug:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mDelayTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mRebindCount:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSeverity:I

.field private mSplashPackageCheckInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/server/SplashPackageCheckInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSplashPackageCheckListener:Lcom/miui/server/ISplashPackageCheckListener;

.field private final mSplashScreenConnection:Landroid/content/ServiceConnection;

.field private mSplashScreenService:Lcom/miui/server/ISplashScreenService;

.field private mStartTime:J


# direct methods
.method static synthetic -get0(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/os/IBinder$DeathRecipient;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/server/SplashScreenServiceDelegate;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashPackageCheckListener;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckListener:Lcom/miui/server/ISplashPackageCheckListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashScreenService;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/server/SplashScreenServiceDelegate;I)I
    .registers 2

    iput p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    return p1
.end method

.method static synthetic -set1(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/ISplashScreenService;)Lcom/miui/server/ISplashScreenService;
    .registers 2

    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    return-object p1
.end method

.method static synthetic -set2(Lcom/miui/server/SplashScreenServiceDelegate;J)J
    .registers 4

    iput-wide p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    return-wide p1
.end method

.method static synthetic -set3(Z)Z
    .registers 1

    sput-boolean p0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->checkSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->bindService()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToBindServiceAfterBootCompleted()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->keepSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$1;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$2;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$3;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$3;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$4;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$4;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckListener:Lcom/miui/server/ISplashPackageCheckListener;

    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate$5;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_5f

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_40
    sput-boolean v0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Debug "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->registerReceiver()V

    return-void

    :cond_5f
    const/4 v0, 0x1

    goto :goto_40
.end method

.method private bindService()V
    .registers 7

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-nez v2, :cond_37

    :try_start_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_38

    const-string/jumbo v2, "com.miui.msa.global"

    const-string/jumbo v3, "com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1a
    const-string/jumbo v2, "apiVersion"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x5

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_4a

    const-string/jumbo v2, "Can\'t bound to SplashScreenService, com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logW(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService()V

    :cond_37
    :goto_37
    return-void

    :cond_38
    const-string/jumbo v2, "com.miui.systemAdSolution"

    const-string/jumbo v3, "com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_41} :catch_42

    goto :goto_1a

    :catch_42
    move-exception v0

    const-string/jumbo v2, "Can not start splash screen service!"

    invoke-direct {p0, v2, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    :cond_4a
    :try_start_4a
    const-string/jumbo v2, "SplashScreenService started"

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_50} :catch_42

    goto :goto_37
.end method

.method private calcDelayTime()J
    .registers 19

    const-wide/16 v10, 0x2710

    const-wide/32 v6, 0xea60

    const-wide/32 v4, 0x36ee80

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    sub-long v2, v12, v14

    const-wide/32 v12, 0xea60

    cmp-long v9, v2, v12

    if-gez v9, :cond_79

    const/4 v8, 0x1

    :goto_1a
    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    if-ne v8, v9, :cond_9a

    const/4 v9, 0x1

    if-ne v8, v9, :cond_84

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    const-wide/16 v14, 0x2

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    :goto_2e
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    int-to-long v0, v9

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    const-wide/32 v14, 0x36ee80

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    move-object/from16 v0, p0

    iput v8, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Restart SplashScreenService delay time "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    return-wide v12

    :cond_79
    const-wide/32 v12, 0x36ee80

    cmp-long v9, v2, v12

    if-gez v9, :cond_82

    const/4 v8, 0x2

    goto :goto_1a

    :cond_82
    const/4 v8, 0x3

    goto :goto_1a

    :cond_84
    const/4 v9, 0x2

    if-ne v8, v9, :cond_93

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    const-wide/16 v14, 0x2710

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_2e

    :cond_93
    const-wide/16 v12, 0x2710

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_2e

    :cond_9a
    const-wide/16 v12, 0x2710

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_2e
.end method

.method private checkSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)Z
    .registers 3

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->getSplashPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->isExpired()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->getSplashPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private delayToBindServiceAfterBootCompleted()V
    .registers 4

    const-wide/32 v0, 0x1d4c0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    return-void
.end method

.method private delayToRebindService()V
    .registers 4

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->calcDelayTime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    return-void
.end method

.method private delayToRebindService(JZ)V
    .registers 7

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz p3, :cond_19

    iget v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SplashScreenService rebind count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    return-void
.end method

.method private getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_b

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_b
    return-object v0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    if-eqz v3, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2

    :catch_14
    move-exception v0

    return v2
.end method

.method private isSplashPackage(Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v4

    :cond_8
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string/jumbo v2, "Empty check list, check all"

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_18
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SplashPackageCheckInfo;

    if-nez v0, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "None for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    return v4

    :cond_3a
    invoke-virtual {v0}, Lcom/miui/server/SplashPackageCheckInfo;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_5d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is expired, remove it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_5d
    invoke-virtual {v0}, Lcom/miui/server/SplashPackageCheckInfo;->matchTime()Z

    move-result v1

    if-nez v1, :cond_7a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Mismatch time for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    :cond_7a
    return v1
.end method

.method private keepSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->getSplashPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V
    .registers 9

    sget-boolean v0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p4}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method private logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string/jumbo v0, "SplashScreenServiceDelegate"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    return-void
.end method

.method private logI(Ljava/lang/String;Z)V
    .registers 4

    sget-boolean v0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    if-nez v0, :cond_6

    if-eqz p2, :cond_c

    :cond_6
    const-string/jumbo v0, "SplashScreenServiceDelegate"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method private logW(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "SplashScreenServiceDelegate"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerReceiver()V
    .registers 12

    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "Register BOOT_COMPLETED receiver"

    invoke-direct {p0, v0, v6}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v0, "Register debugger receiver"

    invoke-direct {p0, v0, v6}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "miui.intent.action.ad.DEBUG_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string/jumbo v9, "miui.permission.USE_INTERNAL_GENERAL_API"

    move-object v8, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "miui.intent.action.ad.DEBUG_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string/jumbo v9, "miui.permission.USE_INTERNAL_GENERAL_API"

    move-object v8, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-wide/32 v0, 0x927c0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    return-void
.end method


# virtual methods
.method public activityIdle(Landroid/content/pm/ActivityInfo;)V
    .registers 8

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v1, :cond_1b

    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/server/SplashScreenServiceDelegate;->isSplashPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_12
    invoke-interface {v1, p1}, Lcom/miui/server/ISplashScreenService;->activityIdle(Landroid/content/pm/ActivityInfo;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1c
    .catchall {:try_start_12 .. :try_end_15} :catchall_2a

    const-string/jumbo v4, "activityIdle"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    :try_start_1d
    const-string/jumbo v4, "activityIdle exception"

    invoke-direct {p0, v4, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_2a

    const-string/jumbo v4, "activityIdle"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    goto :goto_1b

    :catchall_2a
    move-exception v4

    const-string/jumbo v5, "activityIdle"

    invoke-direct {p0, v5, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    throw v4
.end method

.method public destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .registers 8

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v1, :cond_1b

    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/server/SplashScreenServiceDelegate;->isSplashPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_12
    invoke-interface {v1, p1}, Lcom/miui/server/ISplashScreenService;->destroyActivity(Landroid/content/pm/ActivityInfo;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1c
    .catchall {:try_start_12 .. :try_end_15} :catchall_2a

    const-string/jumbo v4, "destroyActivity"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    :try_start_1d
    const-string/jumbo v4, "destroyActivity exception"

    invoke-direct {p0, v4, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_2a

    const-string/jumbo v4, "destroyActivity"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    goto :goto_1b

    :catchall_2a
    move-exception v4

    const-string/jumbo v5, "destroyActivity"

    invoke-direct {p0, v5, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    throw v4
.end method

.method public requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .registers 10

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v2, :cond_26

    invoke-direct {p0, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->isSplashPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v1, 0x0

    :try_start_13
    invoke-interface {v2, p1, p2}, Lcom/miui/server/ISplashScreenService;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_27
    .catchall {:try_start_13 .. :try_end_16} :catchall_35

    move-result-object v1

    if-eqz v1, :cond_20

    const-string/jumbo v3, "requestSplashScreen "

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    return-object v1

    :cond_20
    const-string/jumbo v3, "requestSplashScreen "

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    :cond_26
    :goto_26
    return-object p1

    :catch_27
    move-exception v0

    :try_start_28
    const-string/jumbo v3, "requestSplashScreen exception"

    invoke-direct {p0, v3, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_35

    const-string/jumbo v3, "requestSplashScreen "

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    goto :goto_26

    :catchall_35
    move-exception v3

    const-string/jumbo v6, "requestSplashScreen "

    invoke-direct {p0, v6, v4, v5, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    throw v3
.end method
