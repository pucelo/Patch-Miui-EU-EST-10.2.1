.class Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTriggerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/hardware/soundtrigger/SoundTriggerModule;


# direct methods
.method constructor <init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V
    .registers 6

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->this$0:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_16

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_1b

    new-instance v1, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;

    invoke-direct {v1, p0, v0, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;)V

    iput-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    :goto_15
    return-void

    :cond_16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_c

    :cond_1b
    iput-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_15
.end method


# virtual methods
.method handler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
