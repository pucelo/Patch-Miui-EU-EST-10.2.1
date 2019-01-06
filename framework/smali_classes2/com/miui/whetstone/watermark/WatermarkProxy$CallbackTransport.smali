.class Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;
.super Lcom/miui/whetstone/watermark/IWatermarkCallback$Stub;
.source "WatermarkProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/watermark/WatermarkProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackTransport"
.end annotation


# static fields
.field private static final TYPE_ON_DECODE:I = 0x2

.field private static final TYPE_ON_ENCODE:I = 0x1


# instance fields
.field private final mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

.field private final mCallbackHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/whetstone/watermark/WatermarkCallback;Landroid/os/Looper;)V
    .registers 4

    invoke-direct {p0}, Lcom/miui/whetstone/watermark/IWatermarkCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

    if-nez p2, :cond_f

    new-instance v0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$1;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$1;-><init>(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;)V

    iput-object v0, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    :goto_e
    return-void

    :cond_f
    new-instance v0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$2;

    invoke-direct {v0, p0, p2}, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport$2;-><init>(Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    goto :goto_e
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_6e

    const-string/jumbo v2, "WatermarkProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknow msg type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void

    :pswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    const-string/jumbo v2, "WatermarkProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "watermark _handleMessage encode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

    invoke-interface {v2, v0}, Lcom/miui/whetstone/watermark/WatermarkCallback;->onEncodeWatermarkDone(Landroid/graphics/Bitmap;)V

    goto :goto_21

    :pswitch_48
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "WatermarkProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "watermark _handleMessage decode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallback:Lcom/miui/whetstone/watermark/WatermarkCallback;

    invoke-interface {v2, v1}, Lcom/miui/whetstone/watermark/WatermarkCallback;->onDecodeWatermarkDone(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_48
    .end packed-switch
.end method


# virtual methods
.method public onDecodeWatermark(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v1, "WatermarkProxy"

    const-string/jumbo v2, "watermark CallbackTransport onDecodeWatermark"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEncodeWatermark(Landroid/graphics/Bitmap;)V
    .registers 5

    const-string/jumbo v1, "WatermarkProxy"

    const-string/jumbo v2, "watermark CallbackTransport onEncodeWatermark"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/whetstone/watermark/WatermarkProxy$CallbackTransport;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
