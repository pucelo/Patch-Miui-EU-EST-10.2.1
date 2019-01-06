.class final Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;
.super Landroid/os/Handler;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PromoteLevelManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-wrap0(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
