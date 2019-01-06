.class public Lcom/android/internal/os/WrapperInit;
.super Ljava/lang/Object;
.source "WrapperInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidRuntime"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 11

    const/16 v4, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string/jumbo v0, "/system/bin/app_process64"

    :goto_10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " /system/bin --application"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2f

    const-string/jumbo v2, " \'--nice-name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    const-string/jumbo v2, " com.android.internal.os.WrapperInit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_56

    invoke-virtual {p4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    :goto_3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1, p5}, Lcom/android/internal/os/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/WrapperInit;->preserveCapabilities()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->execShell(Ljava/lang/String;)V

    return-void

    :cond_52
    const-string/jumbo v0, "/system/bin/app_process32"

    goto :goto_10

    :cond_56
    const/4 v2, 0x0

    goto :goto_3b
.end method

.method public static main([Ljava/lang/String;)V
    .registers 13

    const/16 v8, 0xa

    const/4 v9, 0x0

    aget-object v7, p0, v9

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v7, 0x1

    aget-object v7, p0, v7

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v2, :cond_31

    :try_start_12
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_31} :catch_50

    :cond_31
    :goto_31
    new-instance v7, Landroid/util/TimingsTraceLog;

    const-string/jumbo v8, "WrapperInitTiming"

    const-wide/16 v10, 0x4000

    invoke-direct {v7, v8, v10, v11}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v7}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    array-length v7, p0

    add-int/lit8 v7, v7, -0x2

    new-array v5, v7, [Ljava/lang/String;

    array-length v7, v5

    const/4 v8, 0x2

    invoke-static {p0, v8, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v5}, Lcom/android/internal/os/WrapperInit;->wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    return-void

    :catch_50
    move-exception v0

    const-string/jumbo v7, "AndroidRuntime"

    const-string/jumbo v8, "Could not write pid of wrapped process to Zygote pipe."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method private static preserveCapabilities()V
    .registers 16

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v14, Landroid/system/StructCapUserHeader;

    sget v1, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    invoke-direct {v14, v1, v5}, Landroid/system/StructCapUserHeader;-><init>(II)V

    :try_start_9
    invoke-static {v14}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_c} :catch_6e

    move-result-object v10

    aget-object v1, v10, v5

    iget v1, v1, Landroid/system/StructCapUserData;->permitted:I

    aget-object v2, v10, v5

    iget v2, v2, Landroid/system/StructCapUserData;->inheritable:I

    if-ne v1, v2, :cond_21

    aget-object v1, v10, v6

    iget v1, v1, Landroid/system/StructCapUserData;->permitted:I

    aget-object v2, v10, v6

    iget v2, v2, Landroid/system/StructCapUserData;->inheritable:I

    if-eq v1, v2, :cond_4a

    :cond_21
    new-instance v1, Landroid/system/StructCapUserData;

    aget-object v2, v10, v5

    iget v2, v2, Landroid/system/StructCapUserData;->effective:I

    aget-object v3, v10, v5

    iget v3, v3, Landroid/system/StructCapUserData;->permitted:I

    aget-object v4, v10, v5

    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    invoke-direct {v1, v2, v3, v4}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v1, v10, v5

    new-instance v1, Landroid/system/StructCapUserData;

    aget-object v2, v10, v6

    iget v2, v2, Landroid/system/StructCapUserData;->effective:I

    aget-object v3, v10, v6

    iget v3, v3, Landroid/system/StructCapUserData;->permitted:I

    aget-object v4, v10, v6

    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    invoke-direct {v1, v2, v3, v4}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v1, v10, v6

    :try_start_47
    invoke-static {v14, v10}, Landroid/system/Os;->capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V
    :try_end_4a
    .catch Landroid/system/ErrnoException; {:try_start_47 .. :try_end_4a} :catch_79

    :cond_4a
    const/4 v15, 0x0

    :goto_4b
    const/16 v1, 0x40

    if-ge v15, v1, :cond_a0

    invoke-static {v15}, Landroid/system/OsConstants;->CAP_TO_INDEX(I)I

    move-result v11

    invoke-static {v15}, Landroid/system/OsConstants;->CAP_TO_MASK(I)I

    move-result v0

    aget-object v1, v10, v11

    iget v1, v1, Landroid/system/StructCapUserData;->inheritable:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_6b

    :try_start_5e
    sget v1, Landroid/system/OsConstants;->PR_CAP_AMBIENT:I

    sget v2, Landroid/system/OsConstants;->PR_CAP_AMBIENT_RAISE:I

    int-to-long v2, v2

    int-to-long v4, v15

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v1 .. v9}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_6b
    .catch Landroid/system/ErrnoException; {:try_start_5e .. :try_end_6b} :catch_84

    :cond_6b
    :goto_6b
    add-int/lit8 v15, v15, 0x1

    goto :goto_4b

    :catch_6e
    move-exception v12

    const-string/jumbo v1, "AndroidRuntime"

    const-string/jumbo v2, "RuntimeInit: Failed capget"

    invoke-static {v1, v2, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_79
    move-exception v12

    const-string/jumbo v1, "AndroidRuntime"

    const-string/jumbo v2, "RuntimeInit: Failed capset"

    invoke-static {v1, v2, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_84
    move-exception v13

    const-string/jumbo v1, "AndroidRuntime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RuntimeInit: Failed to raise ambient capability "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6b

    :cond_a0
    return-void
.end method

.method private static wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    array-length v2, p1

    if-le v2, v5, :cond_2d

    aget-object v2, p1, v4

    const-string/jumbo v3, "-cp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2, p0}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    new-array v1, v2, [Ljava/lang/String;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    invoke-static {p1, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    :cond_2d
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativePreApplicationInit()V

    invoke-static {p0, p1, v0}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v2

    return-object v2
.end method
