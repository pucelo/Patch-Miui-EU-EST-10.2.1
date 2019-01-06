.class Lcom/android/keyguard/fod/MiuiGxzwManager$4;
.super Landroid/content/BroadcastReceiver;
.source "MiuiGxzwManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fod/MiuiGxzwManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwManager;)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get1(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwIconView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    :cond_0
    return-void
.end method
