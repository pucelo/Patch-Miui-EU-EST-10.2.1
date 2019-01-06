.class Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;
.super Landroid/os/Handler;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenEffectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ScreenEffectService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    :goto_8
    return-void

    :pswitch_9
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get11(Lcom/android/server/display/ScreenEffectService;)Z

    move-result v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/android/server/display/ScreenEffectService;->-wrap4(Lcom/android/server/display/ScreenEffectService;ZZ)V

    goto :goto_8

    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-wrap5(Lcom/android/server/display/ScreenEffectService;)V

    goto :goto_8

    :pswitch_23
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-wrap1(Lcom/android/server/display/ScreenEffectService;)V

    goto :goto_8

    :pswitch_29
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-wrap2(Lcom/android/server/display/ScreenEffectService;)V

    goto :goto_8

    :pswitch_2f
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-wrap3(Lcom/android/server/display/ScreenEffectService;)V

    goto :goto_8

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_9
        :pswitch_1d
        :pswitch_23
        :pswitch_2f
        :pswitch_29
    .end packed-switch
.end method
