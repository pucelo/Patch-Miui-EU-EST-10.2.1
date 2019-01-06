.class Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "DemoModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "com.android.systemui.demo"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v6, "command"

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;

    invoke-static {v6, v1}, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;

    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->-set1(Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/DemoModeControllerImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    invoke-interface {v2, v4, v1}, Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;->onDemoModeChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
