.class Lcom/android/server/WifiAssistant$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiAssistant;


# direct methods
.method constructor <init>(Lcom/android/server/WifiAssistant;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/WifiAssistant$1;->this$0:Lcom/android/server/WifiAssistant;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/WifiAssistant$1;->this$0:Lcom/android/server/WifiAssistant;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/WifiAssistant;->-wrap2(Lcom/android/server/WifiAssistant;Ljava/lang/String;)V

    const-string/jumbo v2, "miui.intent.action.NETWORK_BLOCKED"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/WifiAssistant$1;->this$0:Lcom/android/server/WifiAssistant;

    invoke-static {v2}, Lcom/android/server/WifiAssistant;->-wrap1(Lcom/android/server/WifiAssistant;)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    const-string/jumbo v2, "com.android.server.WIFI_ASSISTANT_NO_INTERNET"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string/jumbo v2, "EXTRA_NETWORK_ID"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/WifiAssistant$1;->this$0:Lcom/android/server/WifiAssistant;

    invoke-static {v2, v1}, Lcom/android/server/WifiAssistant;->-wrap0(Lcom/android/server/WifiAssistant;I)V

    goto :goto_2b
.end method
