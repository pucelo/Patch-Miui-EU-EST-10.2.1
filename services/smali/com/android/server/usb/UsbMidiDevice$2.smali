.class Lcom/android/server/usb/UsbMidiDevice$2;
.super Ljava/lang/Thread;
.source "UsbMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;

.field final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const/16 v0, 0x200

    new-array v1, v0, [B

    :goto_4
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->-get2(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_4a
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_f} :catch_84

    :try_start_f
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->-get1(Lcom/android/server/usb/UsbMidiDevice;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_81

    move-result v0

    if-nez v0, :cond_22

    :try_start_17
    monitor-exit v10
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_18} :catch_4a
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_18} :catch_84

    :goto_18
    const-string/jumbo v0, "UsbMidiDevice"

    const-string/jumbo v2, "input thread exit"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    const/4 v8, 0x0

    :goto_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->-get3(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v0

    array-length v0, v0

    if-ge v8, v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->-get3(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v0

    aget-object v9, v0, v8

    iget-short v0, v9, Landroid/system/StructPollfd;->revents:S

    sget v2, Landroid/system/OsConstants;->POLLERR:I

    sget v11, Landroid/system/OsConstants;->POLLHUP:I
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_81

    or-int/2addr v2, v11

    and-int/2addr v0, v2

    if-eqz v0, :cond_55

    :cond_3e
    :try_start_3e
    monitor-exit v10

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->-get3(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_49} :catch_4a
    .catch Landroid/system/ErrnoException; {:try_start_3e .. :try_end_49} :catch_84

    goto :goto_4

    :catch_4a
    move-exception v7

    const-string/jumbo v0, "UsbMidiDevice"

    const-string/jumbo v2, "reader thread exiting"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_55
    :try_start_55
    iget-short v0, v9, Landroid/system/StructPollfd;->revents:S

    sget v2, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_7e

    const/4 v0, 0x0

    iput-short v0, v9, Landroid/system/StructPollfd;->revents:S

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->-get0(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq v8, v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v0}, Lcom/android/server/usb/UsbMidiDevice;->-get0(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    aget-object v0, v0, v8

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V
    :try_end_7e
    .catchall {:try_start_55 .. :try_end_7e} :catchall_81

    :cond_7e
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    :catchall_81
    move-exception v0

    :try_start_82
    monitor-exit v10

    throw v0
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_84} :catch_4a
    .catch Landroid/system/ErrnoException; {:try_start_82 .. :try_end_84} :catch_84

    :catch_84
    move-exception v6

    const-string/jumbo v0, "UsbMidiDevice"

    const-string/jumbo v2, "reader thread exiting"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method
