.class public Lcom/android/internal/os/RuntimeInitInjector;
.super Ljava/lang/Object;
.source "RuntimeInitInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Dalvik/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "java.vm.version"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " (Linux; U; Android "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_60

    :goto_25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "REL"

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_44

    const-string/jumbo v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_55

    const-string/jumbo v4, " MIUI/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_55
    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_60
    const-string/jumbo v3, "1.0"

    goto :goto_25
.end method

.method public static onJE(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .registers 13

    new-instance v0, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v0, p4}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    invoke-direct {v1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;-><init>()V

    invoke-virtual {v1, p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setPid(I)V

    invoke-virtual {v1, p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setProcessName(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setPackageName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setTimeStamp(J)V

    invoke-virtual {v1, p3}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setThreadName(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setSystem(Z)V

    iget-object v3, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setStackTrace(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setExceptionClassName(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setExceptionMessage(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lmiui/mqsas/fdmonitor/FdInfoManager;->isInterestedFdLeakEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-static {v1, p1, p0}, Lmiui/mqsas/fdmonitor/FdInfoManager;->checkEventAndDumpFd(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/String;I)V

    :cond_3c
    invoke-static {v1}, Lmiui/mqsas/oom/OOMEventManager;->isInterestedOOMEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-static {v1, p2}, Lmiui/mqsas/oom/OOMEventManager;->checkEventAndDumpheap(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "RuntimeInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkEventAndDumpheap result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_70

    sget v3, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CATEGROY_JE_OOM_NEED_DUMPHEAP:I

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setJeCategroy(I)V

    :cond_68
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V

    return-void

    :cond_70
    const/4 v3, -0x1

    if-ne v2, v3, :cond_68

    const-string/jumbo v3, "RuntimeInjector"

    const-string/jumbo v4, "oom too noisy return, no need onJE."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
