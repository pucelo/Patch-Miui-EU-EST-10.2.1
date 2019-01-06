.class public Lmiui/util/LongScreenshotUtils$ContentPort$H;
.super Landroid/os/Handler;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils$ContentPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation


# static fields
.field public static final MSG_BROADCAST_CALLBACK:I = 0x3

.field public static final MSG_FINISH:I = 0x4

.field public static final MSG_SCROLL:I = 0x2

.field public static final MSG_START:I = 0x1


# instance fields
.field final synthetic this$1:Lmiui/util/LongScreenshotUtils$ContentPort;


# direct methods
.method public constructor <init>(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 3

    iput-object p1, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$1:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$1:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-wrap3(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$1:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-get0(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$1:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-wrap2(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    const-wide/16 v0, 0xc8

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    :pswitch_20
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$1:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-get0(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$1:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-wrap0(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_5

    :pswitch_2e
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$1:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-wrap1(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_5

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_20
        :pswitch_2e
    .end packed-switch
.end method
