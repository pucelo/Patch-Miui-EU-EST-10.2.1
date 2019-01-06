.class Landroid/net/lowpan/LowpanManager$2;
.super Landroid/net/lowpan/ILowpanManagerListener$Stub;
.source "LowpanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanManager;->registerCallback(Landroid/net/lowpan/LowpanManager$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/lowpan/LowpanManager;

.field final synthetic val$cb:Landroid/net/lowpan/LowpanManager$Callback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/net/lowpan/LowpanManager;Landroid/os/Handler;Landroid/net/lowpan/LowpanManager$Callback;)V
    .registers 6

    iput-object p1, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanManagerListener$Stub;-><init>()V

    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->val$handler:Landroid/os/Handler;

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-static {v0}, Landroid/net/lowpan/LowpanManager;->-get1(Landroid/net/lowpan/LowpanManager;)Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_28

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-static {v1}, Landroid/net/lowpan/LowpanManager;->-get1(Landroid/net/lowpan/LowpanManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    goto :goto_11

    :cond_28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    goto :goto_11
.end method


# virtual methods
.method synthetic lambda$-android_net_lowpan_LowpanManager$2_8833(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V
    .registers 5

    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-virtual {v1, p1}, Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p2, v0}, Landroid/net/lowpan/LowpanManager$Callback;->onInterfaceAdded(Landroid/net/lowpan/LowpanInterface;)V

    :cond_b
    return-void
.end method

.method synthetic lambda$-android_net_lowpan_LowpanManager$2_9391(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V
    .registers 5

    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-virtual {v1, p1}, Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p2, v0}, Landroid/net/lowpan/LowpanManager$Callback;->onInterfaceRemoved(Landroid/net/lowpan/LowpanInterface;)V

    :cond_b
    return-void
.end method

.method public onInterfaceAdded(Landroid/net/lowpan/ILowpanInterface;)V
    .registers 5

    new-instance v0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;

    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, p1, v1}, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceRemoved(Landroid/net/lowpan/ILowpanInterface;)V
    .registers 5

    new-instance v0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;

    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, p1, v1}, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
