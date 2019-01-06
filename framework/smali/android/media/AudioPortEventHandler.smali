.class Landroid/media/AudioPortEventHandler;
.super Ljava/lang/Object;
.source "AudioPortEventHandler.java"


# static fields
.field private static final AUDIOPORT_EVENT_NEW_LISTENER:I = 0x4

.field private static final AUDIOPORT_EVENT_PATCH_LIST_UPDATED:I = 0x2

.field private static final AUDIOPORT_EVENT_PORT_LIST_UPDATED:I = 0x1

.field private static final AUDIOPORT_EVENT_SERVICE_DIED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AudioPortEventHandler"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mJniCallback:J

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioManager$OnAudioPortUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPortEventHandler;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private native native_finalize()V
.end method

.method private native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPortEventHandler;

    if-nez v0, :cond_b

    return-void

    :cond_b
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/media/AudioPortEventHandler;->handler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1a
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioPortEventHandler;->native_finalize()V

    return-void
.end method

.method handler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method init()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    if-eqz v1, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1e

    new-instance v1, Landroid/media/AudioPortEventHandler$1;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioPortEventHandler$1;-><init>(Landroid/media/AudioPortEventHandler;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/AudioPortEventHandler;->native_setup(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_22

    :goto_1c
    monitor-exit p0

    return-void

    :cond_1e
    const/4 v1, 0x0

    :try_start_1f
    iput-object v1, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_22

    goto :goto_1c

    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method registerListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .registers 6

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/media/AudioPortEventHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_19

    monitor-exit p0

    iget-object v1, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_18
    return-void

    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method unregisterListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
