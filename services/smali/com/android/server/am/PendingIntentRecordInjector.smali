.class public Lcom/android/server/am/PendingIntentRecordInjector;
.super Ljava/lang/Object;
.source "PendingIntentRecordInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecordInjector$1;
    }
.end annotation


# static fields
.field private static final MIUI_AI_MODE_STACK_ID:I = 0x7

.field private static final MSG_CLEAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PendingIntentRecordInjector"

.field private static sIgnorePackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLock:Ljava/lang/Object;

.field private static sMessageHanlder:Landroid/os/Handler;

.field private static sPendingPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1()Landroid/util/ArraySet;
    .registers 1

    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sPendingPackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sPendingPackages:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/am/PendingIntentRecordInjector$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/PendingIntentRecordInjector$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sMessageHanlder:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.home"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.mi.android.globallauncher"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsPendingIntent(Ljava/lang/String;)Z
    .registers 3

    sget-object v1, Lcom/android/server/am/PendingIntentRecordInjector;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/am/PendingIntentRecordInjector;->sPendingPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
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

.method public static makeResumedActivityInMiuiAiStackStoppedIfNeeded(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    iput-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_1b
    return-void
.end method

.method public static preSendInner(Lcom/android/server/am/PendingIntentRecord$Key;Landroid/content/Intent;)V
    .registers 20

    if-eqz p1, :cond_4

    if-nez p0, :cond_5

    :cond_4
    return-void

    :cond_5
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v7

    sget-object v15, Lcom/android/server/am/PendingIntentRecordInjector;->sIgnorePackages:Landroid/util/ArraySet;

    invoke-virtual {v15, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    return-void

    :cond_16
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    packed-switch v15, :pswitch_data_d8

    :goto_1d
    :pswitch_1d
    return-void

    :pswitch_1e
    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_25

    goto :goto_1d

    :catch_25
    move-exception v4

    const-string/jumbo v15, "PendingIntentRecordInjector"

    const-string/jumbo v16, "preSendInner error"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    :pswitch_32
    :try_start_32
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_42

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_42

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    :cond_42
    if-nez v13, :cond_6b

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_93

    const/4 v15, 0x0

    const/16 v16, 0x400

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v8, v0, v15, v1, v14}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    if-eqz v12, :cond_6b

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v15, :cond_6b

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    :cond_6b
    :goto_6b
    if-nez v13, :cond_71

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    :cond_71
    sget-object v16, Lcom/android/server/am/PendingIntentRecordInjector;->sLock:Ljava/lang/Object;

    monitor-enter v16
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_74} :catch_25

    :try_start_74
    sget-object v15, Lcom/android/server/am/PendingIntentRecordInjector;->sPendingPackages:Landroid/util/ArraySet;

    invoke-virtual {v15, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_d5

    :try_start_79
    monitor-exit v16

    sget-object v15, Lcom/android/server/am/PendingIntentRecordInjector;->sMessageHanlder:Landroid/os/Handler;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v15, Lcom/android/server/am/PendingIntentRecordInjector;->sMessageHanlder:Landroid/os/Handler;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    sget-object v15, Lcom/android/server/am/PendingIntentRecordInjector;->sMessageHanlder:Landroid/os/Handler;

    const-wide/16 v16, 0xbb8

    move-wide/from16 v0, v16

    invoke-virtual {v15, v5, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1d

    :cond_93
    const/4 v15, 0x0

    const/16 v16, 0x400

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v8, v0, v15, v1, v14}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v9

    if-nez v9, :cond_a1

    return-void

    :cond_a1
    const/4 v10, 0x0

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x17

    move/from16 v0, v16

    if-le v15, v0, :cond_d0

    move-object v0, v9

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    move-object v6, v0

    if-eqz v6, :cond_b4

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    :cond_b4
    :goto_b4
    if-eqz v10, :cond_6b

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6b

    const/4 v15, 0x0

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v15, :cond_6b

    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_6b

    :cond_d0
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    move-object v10, v0

    goto :goto_b4

    :catchall_d5
    move-exception v15

    monitor-exit v16

    throw v15
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_d8} :catch_25

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_32
        :pswitch_1e
        :pswitch_1d
        :pswitch_32
    .end packed-switch
.end method
