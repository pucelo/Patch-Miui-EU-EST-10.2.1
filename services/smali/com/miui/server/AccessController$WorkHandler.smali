.class Lcom/miui/server/AccessController$WorkHandler;
.super Landroid/os/Handler;
.source "AccessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/AccessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/AccessController;


# direct methods
.method public constructor <init>(Lcom/miui/server/AccessController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/server/AccessController$WorkHandler;->this$0:Lcom/miui/server/AccessController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/miui/server/AccessController$WorkHandler;->this$0:Lcom/miui/server/AccessController;

    invoke-virtual {v0}, Lcom/miui/server/AccessController;->updateWhiteList()V

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method