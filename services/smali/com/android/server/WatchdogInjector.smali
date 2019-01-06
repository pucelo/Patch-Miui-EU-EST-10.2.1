.class Lcom/android/server/WatchdogInjector;
.super Ljava/lang/Object;
.source "WatchdogInjector.java"


# static fields
.field private static final SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field private static final TAG:Ljava/lang/String; = "WatchdogInjector"

.field private static mMonitorThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    const-string/jumbo v1, "ActivityManager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    const-string/jumbo v1, "PowerManagerService"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    const-string/jumbo v1, "miui.fg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needMonitorThread(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static onWatchdog(IILjava/lang/String;Ljava/io/File;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/WatchdogInjector;->onWatchdog(IILjava/lang/String;Ljava/io/File;Ljava/util/List;)V

    return-void
.end method

.method public static onWatchdog(IILjava/lang/String;Ljava/io/File;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Lmiui/mqsas/sdk/event/WatchdogEvent;

    invoke-direct {v2}, Lmiui/mqsas/sdk/event/WatchdogEvent;-><init>()V

    invoke-virtual {v2, p0}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setType(I)V

    invoke-virtual {v2, p1}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setPid(I)V

    const-string/jumbo v5, "system_server"

    invoke-virtual {v2, v5}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setProcessName(Ljava/lang/String;)V

    const-string/jumbo v5, "system_server"

    invoke-virtual {v2, v5}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setPackageName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setTimeStamp(J)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setSystem(Z)V

    invoke-virtual {v2, p2}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setDetails(Ljava/lang/String;)V

    if-eqz p3, :cond_31

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setLogName(Ljava/lang/String;)V

    :cond_31
    if-eqz p4, :cond_77

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_39
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_70

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v5}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    :goto_4f
    if-ge v5, v6, :cond_67

    aget-object v1, v4, v5

    const-string/jumbo v7, "    at "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_67
    const-string/jumbo v5, "\n\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setDetails(Ljava/lang/String;)V

    :cond_77
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v5

    invoke-virtual {v5, v2}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V

    return-void
.end method
