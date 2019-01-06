.class final Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;
.super Landroid/os/Handler;
.source "DeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/enterprise/DeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/enterprise/DeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/miui/server/enterprise/DeviceManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;->this$0:Lcom/miui/server/enterprise/DeviceManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    return-void
.end method
