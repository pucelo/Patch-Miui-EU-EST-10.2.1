.class Lcom/android/server/policy/MiuiGlobalActions$6;
.super Landroid/os/Handler;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiGlobalActions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$6;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$6;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiGlobalActions;->dismiss()V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$6;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MiuiGlobalActions;->-wrap2(Lcom/android/server/policy/MiuiGlobalActions;)V

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
