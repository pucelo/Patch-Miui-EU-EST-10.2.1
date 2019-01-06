.class Lcom/miui/server/WMServiceConnection$1;
.super Ljava/lang/Object;
.source "WMServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/WMServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/WMServiceConnection;


# direct methods
.method constructor <init>(Lcom/miui/server/WMServiceConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/WMServiceConnection$1;->this$0:Lcom/miui/server/WMServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/WMServiceConnection$1;->this$0:Lcom/miui/server/WMServiceConnection;

    invoke-static {v0}, Lcom/miui/server/WMServiceConnection;->-wrap0(Lcom/miui/server/WMServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/miui/server/WMServiceConnection$1;->this$0:Lcom/miui/server/WMServiceConnection;

    invoke-static {v0}, Lcom/miui/server/WMServiceConnection;->-wrap2(Lcom/miui/server/WMServiceConnection;)V

    iget-object v0, p0, Lcom/miui/server/WMServiceConnection$1;->this$0:Lcom/miui/server/WMServiceConnection;

    invoke-static {v0}, Lcom/miui/server/WMServiceConnection;->-get0(Lcom/miui/server/WMServiceConnection;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/WMServiceConnection$1;->this$0:Lcom/miui/server/WMServiceConnection;

    invoke-static {v0}, Lcom/miui/server/WMServiceConnection;->-get1(Lcom/miui/server/WMServiceConnection;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/server/WMServiceConnection$1;->this$0:Lcom/miui/server/WMServiceConnection;

    invoke-static {v0}, Lcom/miui/server/WMServiceConnection;->-get1(Lcom/miui/server/WMServiceConnection;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_33
    return-void
.end method
