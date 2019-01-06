.class Lcom/android/systemui/power/PowerUI$3;
.super Landroid/os/Handler;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->-wrap7(Lcom/android/systemui/power/PowerUI;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    sget-object v1, Lcom/android/systemui/Constants;->SOUND_DISCONNECT:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->-wrap6(Lcom/android/systemui/power/PowerUI;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/android/systemui/Constants;->SOUND_CHARGE_WIRELESS:Ljava/io/File;

    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/power/PowerUI;->-wrap6(Lcom/android/systemui/power/PowerUI;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/Constants;->SOUND_CHARGING:Ljava/io/File;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
