.class public Landroid/media/MiuiAudioRecord;
.super Landroid/media/IMiuiAudioRecord$Stub;
.source "MiuiAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MiuiAudioRecord$AudioInfo;,
        Landroid/media/MiuiAudioRecord$MetaData;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mNativeAudioRecordInJavaObj:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "MiuiAudioRecord"

    sput-object v0, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "exmedia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;J)V
    .registers 6

    invoke-direct {p0}, Landroid/media/IMiuiAudioRecord$Stub;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MiuiAudioRecord;->native_setup(Ljava/io/FileDescriptor;J)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init MiuiAudioRecord fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void
.end method

.method private final native native_fillBuffer(Landroid/media/MiuiAudioRecord$AudioInfo;II)Z
.end method

.method private final native native_getMetadata(Landroid/media/MiuiAudioRecord$MetaData;)Z
.end method

.method private final native native_setup(Ljava/io/FileDescriptor;J)Z
.end method

.method private final native native_start(J)Z
.end method

.method private final native native_stop()Z
.end method


# virtual methods
.method public fillBuffer(II)Landroid/os/Bundle;
    .registers 9

    new-instance v0, Landroid/media/MiuiAudioRecord$AudioInfo;

    invoke-direct {v0, p0}, Landroid/media/MiuiAudioRecord$AudioInfo;-><init>(Landroid/media/MiuiAudioRecord;)V

    invoke-direct {p0, v0, p1, p2}, Landroid/media/MiuiAudioRecord;->native_fillBuffer(Landroid/media/MiuiAudioRecord$AudioInfo;II)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "fillBuffer fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "presentationTimeUs"

    iget-wide v4, v0, Landroid/media/MiuiAudioRecord$AudioInfo;->timeUs:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v2, "size"

    iget-wide v4, v0, Landroid/media/MiuiAudioRecord$AudioInfo;->size:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v1
.end method

.method public getMetaData()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/media/MiuiAudioRecord$MetaData;

    invoke-direct {v0, p0}, Landroid/media/MiuiAudioRecord$MetaData;-><init>(Landroid/media/MiuiAudioRecord;)V

    invoke-direct {p0, v0}, Landroid/media/MiuiAudioRecord;->native_getMetadata(Landroid/media/MiuiAudioRecord$MetaData;)Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getMetaData fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "sample-rate"

    iget v3, v0, Landroid/media/MiuiAudioRecord$MetaData;->sampleRate:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "channel-count"

    iget v3, v0, Landroid/media/MiuiAudioRecord$MetaData;->channelCount:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public start(J)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/MiuiAudioRecord;->native_start(J)Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .registers 2

    invoke-direct {p0}, Landroid/media/MiuiAudioRecord;->native_stop()Z

    move-result v0

    return v0
.end method
