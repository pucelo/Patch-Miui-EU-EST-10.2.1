.class public Lcom/xiaomi/mistatistic/sdk/b;
.super Ljava/lang/Object;
.source "MIStatsExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/b$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:Z


# instance fields
.field private final c:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/mistatistic/sdk/b;->a:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/b;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/xiaomi/mistatistic/sdk/b;->a:I

    return-void
.end method

.method public static a(Lcom/xiaomi/mistatistic/sdk/b$a;Z)V
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uploadException, isManually:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    sget-boolean v4, Lcom/xiaomi/mistatistic/sdk/b;->b:Z

    if-eqz v4, :cond_1

    if-nez p0, :cond_2

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "the throwable is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isUploadDebugLogEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->b()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "app_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->c()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "app_key"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v4}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v4}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "device_uuid"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Android "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "device_os"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v5, "device_model"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->b:Ljava/lang/String;

    const-string/jumbo v5, "app_version"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "sdk_version"

    const-string/jumbo v5, "1.9.16"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->c:Ljava/lang/String;

    const-string/jumbo v5, "app_channel"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->d:Ljava/lang/String;

    const-string/jumbo v5, "app_start_time"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->e:Ljava/lang/String;

    const-string/jumbo v5, "app_crash_time"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "crash_exception_type"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v5, "crash_exception_desc"

    if-nez v4, :cond_6

    move-object v4, v2

    :goto_0
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "crash_callstack"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_7

    :goto_1
    sget-object v4, Lcom/xiaomi/mistatistic/sdk/controller/n;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/xiaomi/mistatistic/sdk/b$1;

    invoke-direct {v5, v3}, Lcom/xiaomi/mistatistic/sdk/b$1;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    const-string/jumbo v4, "not allowed to upload debug or exception log"

    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string/jumbo v4, "OutOfMemoryError"

    goto :goto_0

    :cond_7
    const-string/jumbo v4, "manual"

    const-string/jumbo v5, "true"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v5, Lcom/xiaomi/mistatistic/sdk/b$a;

    invoke-direct {v5, p0}, Lcom/xiaomi/mistatistic/sdk/b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_1

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, ".exceptiondetail"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    move-object v1, v2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    :goto_3
    :try_start_3
    const-string/jumbo v5, ""

    invoke-static {v5, v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_4
    if-nez v1, :cond_3

    :goto_5
    throw v4

    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v5

    goto :goto_5

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v3

    move-object v1, v2

    goto :goto_3
.end method

.method public static a(Z)V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v2, v0, Lcom/xiaomi/mistatistic/sdk/b;

    if-nez v2, :cond_0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b;

    if-nez p0, :cond_1

    :goto_0
    invoke-direct {v1, v0}, Lcom/xiaomi/mistatistic/sdk/b;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/xiaomi/mistatistic/sdk/b;->b:Z

    return-void

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/b$a;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    :goto_0
    if-nez v2, :cond_3

    :cond_1
    :goto_1
    if-nez v4, :cond_5

    :goto_2
    return-object v1

    :cond_2
    new-instance v6, Ljava/io/File;

    const-string/jumbo v8, ".exceptiondetail"

    invoke-direct {v6, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v8}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_3
    goto :goto_1

    :catch_1
    move-exception v5

    :goto_4
    :try_start_3
    const-string/jumbo v8, ""

    invoke-static {v8, v5}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_3

    :catchall_0
    move-exception v7

    :goto_5
    if-nez v2, :cond_4

    :goto_6
    throw v7

    :cond_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v8

    goto :goto_6

    :cond_5
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->c()V

    goto :goto_2

    :catchall_1
    move-exception v7

    move-object v2, v3

    goto :goto_5

    :catch_4
    move-exception v5

    move-object v2, v3

    goto :goto_4
.end method

.method public static c()V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, ".exceptiondetail"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static d()I
    .locals 1

    sget v0, Lcom/xiaomi/mistatistic/sdk/b;->a:I

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "crash_time"

    const-wide/16 v8, 0x0

    invoke-static {v3, v6, v8, v9}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/32 v8, 0x493e0

    cmp-long v3, v6, v8

    if-gtz v3, :cond_1

    move v3, v4

    :goto_0
    if-nez v3, :cond_2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "crash_count"

    invoke-static {v3, v6, v4}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "crash_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    return v5

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "crash_count"

    invoke-static {v3, v6, v5}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "crash_count"

    invoke-static {v3, v6, v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    return v4

    :cond_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "crash_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v3, v6, v8, v9}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v0, "uncaughtException..."

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->shouldExceptionUploadImmediately()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/b;->a(Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "crazy crash..."

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b$a;

    invoke-direct {v0, p2}, Lcom/xiaomi/mistatistic/sdk/b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/b;->a(Lcom/xiaomi/mistatistic/sdk/b$a;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
