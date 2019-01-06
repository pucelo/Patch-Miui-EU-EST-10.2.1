.class Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;
.super Landroid/os/Handler;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/improve/SuperResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperResolutionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/improve/SuperResolution;


# direct methods
.method public constructor <init>(Landroid/graphics/improve/SuperResolution;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_bc

    :goto_5
    return-void

    :pswitch_6
    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v3}, Landroid/graphics/improve/SuperResolution;->-wrap8(Landroid/graphics/improve/SuperResolution;)V

    goto :goto_5

    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/graphics/improve/SRReporter;->reportImprove()V

    const-string/jumbo v3, "start improve bitmap"

    iget-object v8, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-object v9, v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    invoke-static {v8, v9}, Landroid/graphics/improve/SuperResolution;->-wrap4(Landroid/graphics/improve/SuperResolution;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v3}, Landroid/graphics/improve/SuperResolution;->-get0(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/BitmapImproveAble;

    move-result-object v3

    iget-object v8, v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v8}, Landroid/graphics/improve/BitmapImproveAble;->improveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/improve/SuperResolution$ImproveInfo;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_38

    return-void

    :cond_38
    if-eqz v2, :cond_42

    iget-object v3, v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    :cond_42
    const-string/jumbo v3, "handle message"

    const-string/jumbo v8, "improve fail !!!"

    invoke-static {v3, v8}, Landroid/graphics/improve/SRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v8, "algorithm error"

    invoke-static {v3, v8}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_56
    const-string/jumbo v3, "handle message"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "improve bitmap successful"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v9, v2}, Landroid/graphics/improve/SuperResolution;->-wrap4(Landroid/graphics/improve/SuperResolution;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->newBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-object v8, v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->newBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v0, v8}, Landroid/graphics/improve/SuperResolution;->-wrap5(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v4

    invoke-static {v6, v7}, Landroid/graphics/improve/SRReporter;->reportImproveTime(J)V

    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    const-string/jumbo v8, "check improve use time"

    invoke-static {v3, v4, v5, v8}, Landroid/graphics/improve/SuperResolution;->-wrap6(Landroid/graphics/improve/SuperResolution;JLjava/lang/String;)V

    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-wide v8, v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    invoke-static {v3, v8, v9}, Landroid/graphics/improve/SuperResolution;->-wrap3(Landroid/graphics/improve/SuperResolution;J)Z

    move-result v3

    if-eqz v3, :cond_9b

    return-void

    :cond_9b
    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v3}, Landroid/graphics/improve/SuperResolution;->-get2(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/SuperResolution$MainHandler;

    move-result-object v3

    iget-object v8, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v8}, Landroid/graphics/improve/SuperResolution;->-get2(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/SuperResolution$MainHandler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v1}, Landroid/graphics/improve/SuperResolution$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    iget-wide v10, v1, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    const-wide/16 v12, 0x1f4

    add-long/2addr v10, v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-virtual {v3, v8, v10, v11}, Landroid/graphics/improve/SuperResolution$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    nop

    :pswitch_data_bc
    .packed-switch 0x3e6
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
