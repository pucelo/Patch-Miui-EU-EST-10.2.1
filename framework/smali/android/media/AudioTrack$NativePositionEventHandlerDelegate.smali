.class Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativePositionEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .registers 7

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->this$0:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_16

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_1b

    new-instance v1, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;

    invoke-direct {v1, p0, v0, p2, p3}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;-><init>(Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    iput-object v1, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    :goto_15
    return-void

    :cond_16
    invoke-static {p1}, Landroid/media/AudioTrack;->-get0(Landroid/media/AudioTrack;)Landroid/os/Looper;

    move-result-object v0

    goto :goto_c

    :cond_1b
    iput-object v1, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_15
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method