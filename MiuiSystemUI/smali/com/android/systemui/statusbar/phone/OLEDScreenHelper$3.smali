.class Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$3;
.super Landroid/os/Handler;
.source "OLEDScreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->-wrap1(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->-get0(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->-set0(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->-set0(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->-get1(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->-get2(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)I

    move-result v1

    int-to-long v2, v1

    const/16 v1, 0x2711

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
