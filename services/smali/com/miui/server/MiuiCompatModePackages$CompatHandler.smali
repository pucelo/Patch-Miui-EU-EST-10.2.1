.class final Lcom/miui/server/MiuiCompatModePackages$CompatHandler;
.super Landroid/os/Handler;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiCompatModePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompatHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiCompatModePackages;


# direct methods
.method public constructor <init>(Lcom/miui/server/MiuiCompatModePackages;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_4c

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v1}, Lcom/miui/server/MiuiCompatModePackages;->saveCompatModes()V

    goto :goto_5

    :pswitch_c
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1}, Lcom/miui/server/MiuiCompatModePackages;->-wrap8(Lcom/miui/server/MiuiCompatModePackages;)V

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1}, Lcom/miui/server/MiuiCompatModePackages;->-wrap7(Lcom/miui/server/MiuiCompatModePackages;)V

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1}, Lcom/miui/server/MiuiCompatModePackages;->-wrap9(Lcom/miui/server/MiuiCompatModePackages;)V

    goto :goto_5

    :pswitch_1c
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1}, Lcom/miui/server/MiuiCompatModePackages;->-wrap3(Lcom/miui/server/MiuiCompatModePackages;)V

    goto :goto_5

    :pswitch_22
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1}, Lcom/miui/server/MiuiCompatModePackages;->-wrap5(Lcom/miui/server/MiuiCompatModePackages;)V

    goto :goto_5

    :pswitch_28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1, v0}, Lcom/miui/server/MiuiCompatModePackages;->-wrap2(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_32
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v1}, Lcom/miui/server/MiuiCompatModePackages;->-wrap1(Lcom/miui/server/MiuiCompatModePackages;)V

    goto :goto_5

    :pswitch_46
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v1}, Lcom/miui/server/MiuiCompatModePackages;->saveSpecialModeFile()V

    goto :goto_5

    :pswitch_data_4c
    .packed-switch 0x64
        :pswitch_6
        :pswitch_c
        :pswitch_1c
        :pswitch_22
        :pswitch_28
        :pswitch_32
        :pswitch_46
    .end packed-switch
.end method
