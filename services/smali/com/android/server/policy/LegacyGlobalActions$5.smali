.class Lcom/android/server/policy/LegacyGlobalActions$5;
.super Landroid/os/Handler;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->-set1(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    goto :goto_6

    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap3(Lcom/android/server/policy/LegacyGlobalActions;)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get0(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_6

    :pswitch_2d
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap1(Lcom/android/server/policy/LegacyGlobalActions;)V

    goto :goto_6

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1e
        :pswitch_2d
    .end packed-switch
.end method
