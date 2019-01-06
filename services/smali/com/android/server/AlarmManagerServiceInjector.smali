.class Lcom/android/server/AlarmManagerServiceInjector;
.super Ljava/lang/Object;
.source "AlarmManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceInjector$1;,
        Lcom/android/server/AlarmManagerServiceInjector$2;
    }
.end annotation


# static fields
.field private static APP_PUSH_PERIOD_TIME:J = 0x0L

.field private static final APP_PUSH_PERIOD_TIME_DELTA:I = 0x3e8

.field private static final DEBUG:Z = true

.field private static final MAX_APP_PUSH_PERIOD_TIME:I = 0x83d60

.field private static final MIN_APP_PUSH_PERIOD_TIME:I = 0x1d4c0

.field private static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSIST_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AlarmManagerServiceInjector"

.field private static final THIRD_PARTY_WAKEUP_RESTRICT_PROP:Ljava/lang/String; = "persist.sys.wakeup_restrict"

.field private static final WAKEUP_WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static appPushLeaderLastTriggerElapsed:J

.field private static isPushLeaderLive:Z

.field private static final mPushAlarmPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private static final mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

.field private static final mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/android/server/AlarmManagerServiceInjector$1;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerServiceInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->WAKEUP_WHITE_LIST:Ljava/util/List;

    new-instance v0, Lcom/android/server/AlarmManagerServiceInjector$2;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerServiceInjector$2;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->PERSIST_PACKAGES:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckIfAlarmGenralRistrictApply(II)Z
    .registers 7

    const/4 v4, 0x0

    const/16 v3, 0x2710

    if-gt p0, v3, :cond_6

    return v4

    :cond_6
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getCurAdjByPid(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getProcStateByPid(I)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->hasForegroundActivities(I)Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v3, 0x2

    if-gt v0, v3, :cond_1c

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1c

    :cond_1b
    return v4

    :cond_1c
    const/4 v3, 0x1

    return v3
.end method

.method public static adjustWakeUpAlarmType(Landroid/content/Context;I)I
    .registers 7

    const/4 v4, 0x0

    if-eqz p1, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_7

    return p1

    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_10

    return p1

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    array-length v3, v1

    if-lez v3, :cond_26

    aget-object v0, v1, v4

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceInjector;->inWakeUpAlarmWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    return p1

    :cond_26
    const-string/jumbo v3, "persist.sys.wakeup_restrict"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string/jumbo v3, "AlarmManagerServiceInjector"

    const-string/jumbo v4, "restrict all third party wakeup is set"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/AlarmManagerServiceInjector;->nonWakeUpType(I)I

    move-result v3

    return v3

    :cond_3d
    return p1
.end method

.method private static checkAlarmIsAllowedAddToPushAlarmPendingList(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v1, 0x1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_28
    xor-int/lit8 v3, v1, 0x1

    return v3
.end method

.method public static checkAlarmIsAllowedSend(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 7

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-nez v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/AlarmManagerServiceInjector;->CheckIfAlarmGenralRistrictApply(II)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isAlarmAllowedLocked(IIIZ)Z

    move-result v0

    return v0
.end method

.method private static checkAlarmOperationIsHeartBeat(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 9

    const/4 v7, 0x0

    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmFunc(I)Z

    move-result v4

    if-nez v4, :cond_12

    return v7

    :cond_12
    invoke-virtual {v2, v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmProperty(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    if-nez v1, :cond_46

    :cond_20
    const-string/jumbo v4, "AlarmManagerServiceInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "curIntent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "heartIntent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_46
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerServiceInjector;->cmpCurPushAlarmPropertyWithHeartBeat(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_4d

    return v7

    :cond_4d
    const/4 v4, 0x1

    return v4
.end method

.method private static checkAlarmOperationIsLeaderHeartBeat(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 6

    const/4 v4, 0x1

    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmLeaderUid()I

    move-result v2

    if-ne v1, v2, :cond_35

    const-string/jumbo v1, "AlarmManagerServiceInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " alarm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is aligned leader, now sending all pending alarm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    return v4

    :cond_35
    const/4 v1, 0x0

    return v1
.end method

.method public static checkIsNeedAjustTriggerElapsed(Landroid/app/PendingIntent;JJ)J
    .registers 16

    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmFunc(I)Z

    move-result v6

    if-eqz v6, :cond_12

    sget-boolean v6, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    if-nez v6, :cond_13

    :cond_12
    return-wide p1

    :cond_13
    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmLeaderUid()I

    move-result v6

    if-ne v3, v6, :cond_58

    sub-long v4, p1, p3

    const-wide/32 v6, 0x83d60

    cmp-long v6, v4, v6

    if-gtz v6, :cond_29

    const-wide/32 v6, 0x1d4c0

    cmp-long v6, v4, v6

    if-gez v6, :cond_53

    :cond_29
    const-string/jumbo v6, "AlarmManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " tmpDelta = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is abnormal, ignore"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    return-wide p1

    :cond_53
    sput-wide v4, Lcom/android/server/AlarmManagerServiceInjector;->APP_PUSH_PERIOD_TIME:J

    sput-wide p1, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    goto :goto_52

    :cond_58
    invoke-virtual {v2, v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmProperty(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerServiceInjector;->cmpCurPushAlarmPropertyWithHeartBeat(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_67

    return-wide p1

    :cond_67
    sget-object v6, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    sget-wide v6, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    cmp-long v6, p3, v6

    if-lez v6, :cond_ab

    const-string/jumbo v6, "AlarmManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " nowElapsed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u3000> LastTriggerElapsed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v6, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    sget-wide v8, Lcom/android/server/AlarmManagerServiceInjector;->APP_PUSH_PERIOD_TIME:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    sub-long/2addr v6, v8

    return-wide v6

    :cond_ab
    const-string/jumbo v6, "AlarmManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " nowElapsed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " < appPushLeaderLastTriggerElapsed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v6, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    const-wide/16 v8, 0x3e8

    sub-long/2addr v6, v8

    return-wide v6
.end method

.method private static cmpCurPushAlarmPropertyWithHeartBeat(Landroid/content/Intent;Landroid/content/Intent;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_19

    if-eqz v1, :cond_19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x1

    goto :goto_16

    :cond_19
    const/4 v2, 0x0

    return v2
.end method

.method public static doAppPushHeartBeatAlignment(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v1, 0x0

    :cond_5
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceInjector;->checkAlarmOperationIsHeartBeat(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceInjector;->checkAlarmOperationIsLeaderHeartBeat(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    sget-boolean v5, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    if-nez v5, :cond_2c

    const-string/jumbo v5, "AlarmManagerServiceInjector"

    const-string/jumbo v6, "isPushLeaderLive is false, continue"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_2c
    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceInjector;->checkAlarmIsAllowedAddToPushAlarmPendingList(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v5

    if-eqz v5, :cond_37

    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    const-string/jumbo v5, "AlarmManagerServiceInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "alarm remove: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_5f

    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    :cond_5f
    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_68
    if-eqz v1, :cond_a6

    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    const-string/jumbo v5, "AlarmManagerServiceInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "alarm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "is add to triggerlist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_a1
    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_a6
    return-void
.end method

.method public static dumpAlarmAligStat(Ljava/io/PrintWriter;)V
    .registers 7

    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmLeaderUid()I

    move-result v0

    const-string/jumbo v4, ""

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "Current Alarm Push HeartBeat Align state: "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, " leader uid = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v4, " leader intent = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmProperty(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v4, " leader live is = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v4, "apps has ever aligned: "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_3c
    sget-object v4, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_5e

    sget-object v4, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_5b

    const-string/jumbo v4, " uid = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(I)V

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_5e
    const-string/jumbo v4, "recent align alarms stat: "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    const-string/jumbo v4, " alarm = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6a

    :cond_7e
    const-string/jumbo v4, "pending list = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v4, "APP_PUSH_PERIOD_TIME = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-wide v4, Lcom/android/server/AlarmManagerServiceInjector;->APP_PUSH_PERIOD_TIME:J

    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v4, "APP_PUSH_PERIOD_TIME_DELTA = "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x3e8

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method static filterPersistPackages([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1f

    array-length v2, p0

    if-lez v2, :cond_1f

    array-length v4, p0

    move v2, v3

    :goto_d
    if-ge v2, v4, :cond_1f

    aget-object v1, p0, v2

    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->PERSIST_PACKAGES:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1f
    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private static inWakeUpAlarmWhiteList(Ljava/lang/String;)Z
    .registers 4

    sget-object v2, Lcom/android/server/AlarmManagerServiceInjector;->WAKEUP_WHITE_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    return v2

    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method private static nonWakeUpType(I)I
    .registers 2

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    return p0

    :pswitch_4
    const/4 v0, 0x3

    return v0

    :pswitch_6
    const/4 v0, 0x1

    return v0

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static recordRTCWakeupInfo(Landroid/content/Context;ILandroid/app/PendingIntent;Z)V
    .registers 6

    if-eqz p1, :cond_5

    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    return-void

    :cond_e
    invoke-static {v0, p2, p3}, Lcom/miui/whetstone/WhetstoneManager;->recordRTCWakeupInfo(ILandroid/app/PendingIntent;Z)V

    :cond_11
    return-void
.end method
