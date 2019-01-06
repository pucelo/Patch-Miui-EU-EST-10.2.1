.class Lcom/miui/server/enterprise/DeviceManagerService$3;
.super Ljava/lang/Object;
.source "DeviceManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/enterprise/DeviceManagerService;->rebootWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/enterprise/DeviceManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/enterprise/DeviceManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/enterprise/DeviceManagerService$3;->this$0:Lcom/miui/server/enterprise/DeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService$3;->this$0:Lcom/miui/server/enterprise/DeviceManagerService;

    invoke-static {v0}, Lcom/miui/server/enterprise/DeviceManagerService;->-get0(Lcom/miui/server/enterprise/DeviceManagerService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method
