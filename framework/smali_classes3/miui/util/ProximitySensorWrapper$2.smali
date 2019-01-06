.class Lmiui/util/ProximitySensorWrapper$2;
.super Landroid/os/Handler;
.source "ProximitySensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ProximitySensorWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/ProximitySensorWrapper;


# direct methods
.method constructor <init>(Lmiui/util/ProximitySensorWrapper;)V
    .registers 2

    iput-object p1, p0, Lmiui/util/ProximitySensorWrapper$2;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper$2;->this$0:Lmiui/util/ProximitySensorWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/ProximitySensorWrapper;->-wrap0(Lmiui/util/ProximitySensorWrapper;Z)V

    goto :goto_5

    :pswitch_d
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper$2;->this$0:Lmiui/util/ProximitySensorWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/ProximitySensorWrapper;->-wrap0(Lmiui/util/ProximitySensorWrapper;Z)V

    goto :goto_5

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
        :pswitch_d
    .end packed-switch
.end method
