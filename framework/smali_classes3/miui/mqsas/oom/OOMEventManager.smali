.class public Lmiui/mqsas/oom/OOMEventManager;
.super Ljava/lang/Object;
.source "OOMEventManager.java"


# static fields
.field public static final FILE_DIR_DATA_APP:Ljava/lang/String; = "/data/data/"

.field public static final FILE_DIR_DATA_MQSAS_HPROF:Ljava/lang/String; = "/data/mqsas/hprof/"

.field public static final FILE_HPROF_SUFFIX:Ljava/lang/String; = ".hprof"

.field public static final JAVA_EXCEPTION_OOM_CLASS:Ljava/lang/String; = "java.lang.OutOfMemoryError"

.field public static final OOM_EVENT_OTHER_APP_OOM_DEBUG:I = 0x3

.field public static final OOM_EVENT_SYSTEM_PROC_DEBUG:I = 0x2

.field public static final OOM_EVENT_SYSTEM_PROC_MARTCHED:I = 0x1

.field public static final OOM_EVENT_TOO_NOISY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OOMEventManagerFK"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEventAndDumpheap(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/String;)I
    .registers 7

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->checkIfNeedDumpheap(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v1

    const-string/jumbo v2, "OOMEventManagerFK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkEventAndDumpheap shouldDumpHeap : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    const/4 v2, 0x3

    if-ne v1, v2, :cond_52

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".hprof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/mqsas/oom/OOMEventManager;->doDumpheap(Ljava/lang/String;)V

    :cond_51
    :goto_51
    return v1

    :cond_52
    const/4 v2, 0x1

    if-ne v1, v2, :cond_74

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/data/mqsas/hprof/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".hprof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/mqsas/oom/OOMEventManager;->doDumpheap(Ljava/lang/String;)V

    goto :goto_51

    :cond_74
    const/4 v2, 0x2

    if-ne v1, v2, :cond_51

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/data/mqsas/hprof/debug/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".hprof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/mqsas/oom/OOMEventManager;->doDumpheap(Ljava/lang/String;)V

    goto :goto_51
.end method

.method private static doDumpheap(Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    :cond_8
    const-string/jumbo v1, "OOMEventManagerFK"

    const-string/jumbo v2, "dumpheap failed, outPutFileName is invalid!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    :try_start_12
    invoke-static {p0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    const-string/jumbo v1, "OOMEventManagerFK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dumpheap success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2f} :catch_30

    :goto_2f
    return-void

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f
.end method

.method public static isInterestedOOMEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)Z
    .registers 3

    const-string/jumbo v0, "java.lang.OutOfMemoryError"

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getExceptionClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method
