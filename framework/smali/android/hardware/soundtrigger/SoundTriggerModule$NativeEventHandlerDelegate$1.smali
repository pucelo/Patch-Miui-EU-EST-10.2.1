.class Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "SoundTriggerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

.field final synthetic val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# direct methods
.method constructor <init>(Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;)V
    .registers 4

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->this$1:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    invoke-interface {v1, v0}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V

    goto :goto_5

    :pswitch_14
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    invoke-interface {v1, v0}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V

    goto :goto_5

    :pswitch_22
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onServiceStateChange(I)V

    goto :goto_5

    :pswitch_2e
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    invoke-interface {v0}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onServiceDied()V

    goto :goto_5

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2e
        :pswitch_14
        :pswitch_22
    .end packed-switch
.end method
