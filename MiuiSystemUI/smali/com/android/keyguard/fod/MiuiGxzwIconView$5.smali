.class Lcom/android/keyguard/fod/MiuiGxzwIconView$5;
.super Landroid/content/BroadcastReceiver;
.source "MiuiGxzwIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fod/MiuiGxzwIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$5;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "action_set_icon_transparent"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$5;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-get1(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$5;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-get8(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$5;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$5;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-wrap0(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V

    goto :goto_0
.end method
