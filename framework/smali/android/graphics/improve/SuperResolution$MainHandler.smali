.class Landroid/graphics/improve/SuperResolution$MainHandler;
.super Landroid/os/Handler;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/improve/SuperResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/improve/SuperResolution;


# direct methods
.method public constructor <init>(Landroid/graphics/improve/SuperResolution;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_5c

    :goto_5
    return-void

    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;

    invoke-virtual {v2}, Landroid/graphics/improve/SuperResolution$ImproveInfo;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v4, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v4, v1}, Landroid/graphics/improve/SuperResolution;->-wrap0(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;)Z

    move-result v4

    if-nez v4, :cond_17

    return-void

    :cond_17
    iget-object v4, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-wide v6, v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    invoke-static {v4, v6, v7}, Landroid/graphics/improve/SuperResolution;->-wrap3(Landroid/graphics/improve/SuperResolution;J)Z

    move-result v4

    if-eqz v4, :cond_22

    return-void

    :cond_22
    iget-object v4, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v4, v1, v2}, Landroid/graphics/improve/SuperResolution;->-wrap1(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;Landroid/graphics/improve/SuperResolution$ImproveInfo;)Z

    move-result v4

    if-eqz v4, :cond_2b

    return-void

    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v4}, Landroid/graphics/improve/SuperResolution;->-get1(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/ImproveHookAble;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Landroid/graphics/improve/ImproveHookAble;->setBitmap(Landroid/graphics/improve/SuperResolution$ImproveInfo;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const-string/jumbo v4, "handle message"

    const-string/jumbo v5, "update drawable successful"

    invoke-static {v4, v5}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_44} :catch_45

    goto :goto_5

    :catch_45
    move-exception v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "hook fail"

    invoke-static {v4, v5}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v4, "update drawable fail"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/improve/SRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
