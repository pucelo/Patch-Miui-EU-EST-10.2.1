.class final Landroid/app/ActivityThread$Profiler;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Profiler"
.end annotation


# instance fields
.field autoStopProfiler:Z

.field handlingProfiling:Z

.field profileFd:Landroid/os/ParcelFileDescriptor;

.field profileFile:Ljava/lang/String;

.field profiling:Z

.field samplingInterval:I

.field streamingOutput:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProfiler(Landroid/app/ProfilerInfo;)V
    .registers 5

    iget-object v1, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iget-boolean v2, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v2, :cond_e

    if-eqz v1, :cond_b

    :try_start_8
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b

    :cond_e
    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_17

    :try_start_12
    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_2a

    :cond_17
    :goto_17
    iget-object v2, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    iget v2, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v2, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    iget-boolean v2, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v2, p0, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    iget-boolean v2, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v2, p0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    return-void

    :catch_2a
    move-exception v0

    goto :goto_17
.end method

.method public startProfiling()V
    .registers 11

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_b

    :cond_a
    return-void

    :cond_b
    :try_start_b
    const-string/jumbo v0, "debug.traceview-buffer-size-mb"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    mul-int/lit16 v2, v7, 0x400

    mul-int/lit16 v2, v2, 0x400

    iget v5, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    if-eqz v5, :cond_30

    :goto_24
    iget v5, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    iget-boolean v6, p0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZIZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_2f} :catch_32

    :goto_2f
    return-void

    :cond_30
    move v4, v3

    goto :goto_24

    :catch_32
    move-exception v8

    const-string/jumbo v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Profiling failed on path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4f
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_57} :catch_58

    goto :goto_2f

    :catch_58
    move-exception v9

    const-string/jumbo v0, "ActivityThread"

    const-string/jumbo v1, "Failure closing profile fd"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method public stopProfiling()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_14

    :try_start_f
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_19

    :cond_14
    :goto_14
    iput-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    :cond_18
    return-void

    :catch_19
    move-exception v0

    goto :goto_14
.end method
