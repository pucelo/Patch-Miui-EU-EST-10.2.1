.class Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeRoutingEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioRecord;


# direct methods
.method constructor <init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 7

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->this$0:Landroid/media/AudioRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_16

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_1b

    new-instance v1, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;

    invoke-direct {v1, p0, v0, p2, p3}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;-><init>(Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioRecord;Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    iput-object v1, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    :goto_15
    return-void

    :cond_16
    invoke-static {p1}, Landroid/media/AudioRecord;->-get0(Landroid/media/AudioRecord;)Landroid/os/Looper;

    move-result-object v0

    goto :goto_c

    :cond_1b
    iput-object v1, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_15
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
