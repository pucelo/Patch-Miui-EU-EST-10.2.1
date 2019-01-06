.class final Lcom/android/server/timezone/IntentHelperImpl;
.super Ljava/lang/Object;
.source "IntentHelperImpl.java"

# interfaces
.implements Lcom/android/server/timezone/IntentHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezone/IntentHelperImpl$Receiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "timezone.IntentHelperImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mUpdaterAppPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezone/IntentHelperImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public initialize(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/timezone/PackageTracker;)V
    .registers 8

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/timezone/IntentHelperImpl;->mUpdaterAppPackageName:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/timezone/IntentHelperImpl$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2}, Lcom/android/server/timezone/IntentHelperImpl$Receiver;-><init>(Lcom/android/server/timezone/PackageTracker;Lcom/android/server/timezone/IntentHelperImpl$Receiver;)V

    iget-object v2, p0, Lcom/android/server/timezone/IntentHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public declared-synchronized scheduleReliabilityTrigger(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/IntentHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/timezone/TimeZoneUpdateIdler;->schedule(Landroid/content/Context;J)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendTriggerUpdateCheck(Lcom/android/server/timezone/CheckToken;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/timezone/IntentHelperImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/timezone/IntentHelperImpl;->mUpdaterAppPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/timezone/CheckToken;->toByteArray()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/timezone/RulesUpdaterContract;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;[B)V

    invoke-virtual {p1}, Lcom/android/server/timezone/CheckToken;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneTriggerCheck(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized unscheduleReliabilityTrigger()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/IntentHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/timezone/TimeZoneUpdateIdler;->unschedule(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
