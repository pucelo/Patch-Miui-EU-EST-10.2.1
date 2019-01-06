.class Lcom/android/server/policy/MiuiGlobalActions$4;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$4;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$4;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/MiuiGlobalActions;->-get0(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
