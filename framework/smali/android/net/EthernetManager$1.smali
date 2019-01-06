.class Landroid/net/EthernetManager$1;
.super Landroid/os/Handler;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/EthernetManager;


# direct methods
.method constructor <init>(Landroid/net/EthernetManager;)V
    .registers 2

    iput-object p1, p0, Landroid/net/EthernetManager$1;->this$0:Landroid/net/EthernetManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_28

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    const/4 v0, 0x1

    :goto_c
    iget-object v3, p0, Landroid/net/EthernetManager$1;->this$0:Landroid/net/EthernetManager;

    invoke-static {v3}, Landroid/net/EthernetManager;->-get1(Landroid/net/EthernetManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/EthernetManager$Listener;

    invoke-interface {v1, v0}, Landroid/net/EthernetManager$Listener;->onAvailabilityChanged(Z)V

    goto :goto_16

    :cond_26
    const/4 v0, 0x0

    goto :goto_c

    :cond_28
    return-void
.end method
