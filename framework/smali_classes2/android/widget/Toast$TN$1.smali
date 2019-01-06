.class Landroid/widget/Toast$TN$1;
.super Landroid/os/Handler;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toast$TN;-><init>(Ljava/lang/String;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Toast$TN;


# direct methods
.method constructor <init>(Landroid/widget/Toast$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .registers 4

    iput-object p1, p0, Landroid/widget/Toast$TN$1;->this$1:Landroid/widget/Toast$TN;

    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v3, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_34

    :goto_6
    return-void

    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, Landroid/widget/Toast$TN$1;->this$1:Landroid/widget/Toast$TN;

    invoke-virtual {v2, v1}, Landroid/widget/Toast$TN;->handleShow(Landroid/os/IBinder;)V

    goto :goto_6

    :pswitch_11
    iget-object v2, p0, Landroid/widget/Toast$TN$1;->this$1:Landroid/widget/Toast$TN;

    invoke-virtual {v2}, Landroid/widget/Toast$TN;->handleHide()V

    iget-object v2, p0, Landroid/widget/Toast$TN$1;->this$1:Landroid/widget/Toast$TN;

    iput-object v3, v2, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    goto :goto_6

    :pswitch_1b
    iget-object v2, p0, Landroid/widget/Toast$TN$1;->this$1:Landroid/widget/Toast$TN;

    invoke-virtual {v2}, Landroid/widget/Toast$TN;->handleHide()V

    iget-object v2, p0, Landroid/widget/Toast$TN$1;->this$1:Landroid/widget/Toast$TN;

    iput-object v3, v2, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    :try_start_24
    invoke-static {}, Landroid/widget/Toast;->-wrap0()Landroid/app/INotificationManager;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Toast$TN$1;->this$1:Landroid/widget/Toast$TN;

    iget-object v3, v3, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/Toast$TN$1;->this$1:Landroid/widget/Toast$TN;

    invoke-interface {v2, v3, v4}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_31} :catch_32

    goto :goto_6

    :catch_32
    move-exception v0

    goto :goto_6

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_7
        :pswitch_11
        :pswitch_1b
    .end packed-switch
.end method
