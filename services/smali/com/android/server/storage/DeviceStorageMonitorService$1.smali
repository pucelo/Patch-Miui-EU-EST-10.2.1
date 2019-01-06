.class Lcom/android/server/storage/DeviceStorageMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get1(Lcom/android/server/storage/DeviceStorageMonitorService;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2a

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-wrap0(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get1(Lcom/android/server/storage/DeviceStorageMonitorService;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_29

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-wrap1(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-wrap0(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    goto :goto_29
.end method
