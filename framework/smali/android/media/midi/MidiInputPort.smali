.class public final Landroid/media/midi/MidiInputPort;
.super Landroid/media/midi/MidiReceiver;
.source "MidiInputPort.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MidiInputPort"


# instance fields
.field private final mBuffer:[B

.field private mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mIsClosed:Z

.field private mOutputStream:Ljava/io/FileOutputStream;

.field private final mPortNumber:I

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V
    .registers 7

    const/16 v0, 0x3f7

    invoke-direct {p0, v0}, Landroid/media/midi/MidiReceiver;-><init>(I)V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    iput-object p1, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    iput-object p2, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    iput p4, p0, Landroid/media/midi/MidiInputPort;->mPortNumber:I

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V

    return-void
.end method


# virtual methods
.method claimFileDescriptor()Ljava/io/FileDescriptor;
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v2

    :try_start_4
    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_22

    :try_start_7
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_1f

    if-nez v0, :cond_e

    :try_start_b
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_22

    monitor-exit v2

    return-object v1

    :cond_e
    :try_start_e
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1f

    :try_start_19
    monitor-exit v3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_22

    monitor-exit v2

    return-object v0

    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v3

    throw v1
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3d

    if-eqz v1, :cond_9

    monitor-exit v2

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v3
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_3d

    :try_start_11
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    :cond_1d
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_3a

    :cond_29
    :try_start_29
    monitor-exit v3

    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_3d

    if-eqz v1, :cond_35

    :try_start_2e
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/media/midi/IMidiDeviceServer;->closePort(Landroid/os/IBinder;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_35} :catch_40
    .catchall {:try_start_2e .. :try_end_35} :catchall_3d

    :cond_35
    :goto_35
    const/4 v1, 0x1

    :try_start_36
    iput-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_3d

    monitor-exit v2

    return-void

    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v3

    throw v1
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_40
    move-exception v0

    :try_start_41
    const-string/jumbo v1, "MidiInputPort"

    const-string/jumbo v3, "RemoteException in MidiInputPort.close()"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_3d

    goto :goto_35
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    invoke-virtual {p0}, Landroid/media/midi/MidiInputPort;->close()V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_13

    invoke-super {p0}, Landroid/media/midi/MidiReceiver;->finalize()V

    return-void

    :catchall_13
    move-exception v0

    invoke-super {p0}, Landroid/media/midi/MidiReceiver;->finalize()V

    throw v0
.end method

.method getDeviceServer()Landroid/media/midi/IMidiDeviceServer;
    .registers 2

    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    return-object v0
.end method

.method public final getPortNumber()I
    .registers 2

    iget v0, p0, Landroid/media/midi/MidiInputPort;->mPortNumber:I

    return v0
.end method

.method getToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public onFlush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    if-nez v1, :cond_13

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "MidiInputPort is closed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    invoke-static {v1}, Landroid/media/midi/MidiPortImpl;->packFlush([B)I

    move-result v0

    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_10

    monitor-exit v2

    return-void
.end method

.method public onSend([BIIJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_4

    if-gez p3, :cond_d

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "offset or count out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_4

    const/16 v1, 0x3f7

    if-le p3, v1, :cond_1f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "count exceeds max message size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    iget-object v7, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v7

    :try_start_22
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    if-nez v1, :cond_32

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "MidiInputPort is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v1

    monitor-exit v7

    throw v1

    :cond_32
    :try_start_32
    iget-object v6, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v1 .. v6}, Landroid/media/midi/MidiPortImpl;->packData([BIIJ[B)I

    move-result v0

    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_2f

    monitor-exit v7

    return-void
.end method
