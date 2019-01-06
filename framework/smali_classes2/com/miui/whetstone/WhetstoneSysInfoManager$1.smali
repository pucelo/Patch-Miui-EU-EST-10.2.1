.class Lcom/miui/whetstone/WhetstoneSysInfoManager$1;
.super Ljava/lang/Object;
.source "WhetstoneSysInfoManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/WhetstoneSysInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/WhetstoneSysInfoManager;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/WhetstoneSysInfoManager;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager$1;->this$0:Lcom/miui/whetstone/WhetstoneSysInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    invoke-static {}, Lcom/miui/whetstone/WhetstoneSysInfoManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager$1;->this$0:Lcom/miui/whetstone/WhetstoneSysInfoManager;

    invoke-static {p2}, Lcom/miui/whetstone/IWhetstoneSysInfoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneSysInfoService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/whetstone/WhetstoneSysInfoManager;->-set0(Lcom/miui/whetstone/WhetstoneSysInfoManager;Lcom/miui/whetstone/IWhetstoneSysInfoService;)Lcom/miui/whetstone/IWhetstoneSysInfoService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    invoke-static {}, Lcom/miui/whetstone/WhetstoneSysInfoManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneSysInfoManager$1;->this$0:Lcom/miui/whetstone/WhetstoneSysInfoManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/whetstone/WhetstoneSysInfoManager;->-set0(Lcom/miui/whetstone/WhetstoneSysInfoManager;Lcom/miui/whetstone/IWhetstoneSysInfoService;)Lcom/miui/whetstone/IWhetstoneSysInfoService;

    return-void
.end method
