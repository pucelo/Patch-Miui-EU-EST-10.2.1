.class Landroid/app/trust/TrustManager$1;
.super Landroid/os/Handler;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/trust/TrustManager;


# direct methods
.method constructor <init>(Landroid/app/trust/TrustManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/app/trust/TrustManager$1;->this$0:Landroid/app/trust/TrustManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3c

    :goto_7
    return-void

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v4, "initiatedByUser"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_19
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/TrustManager$TrustListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_29

    :goto_21
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v0}, Landroid/app/trust/TrustManager$TrustListener;->onTrustChanged(ZII)V

    goto :goto_7

    :cond_27
    const/4 v0, 0x0

    goto :goto_19

    :cond_29
    move v2, v3

    goto :goto_21

    :pswitch_2b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/TrustManager$TrustListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_39

    :goto_33
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3}, Landroid/app/trust/TrustManager$TrustListener;->onTrustManagedChanged(ZI)V

    goto :goto_7

    :cond_39
    move v2, v3

    goto :goto_33

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_2b
    .end packed-switch
.end method
