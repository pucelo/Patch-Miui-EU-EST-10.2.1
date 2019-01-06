.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "MiuiNetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/4 v5, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    return-void

    :cond_17
    const-string/jumbo v4, "android.intent.extra.UID"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_21

    return-void

    :cond_21
    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get17(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get16(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_43
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get6(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5c
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get11(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get10(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_75
    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap1()Z

    move-result v4

    if-eqz v4, :cond_9c

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get9(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_9c

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get9(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9c
    :goto_9c
    return-void

    :cond_9d
    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get17(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bf

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get16(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_bf
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get6(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_d8
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get11(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f1

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get10(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_f1
    invoke-static {}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap1()Z

    move-result v4

    if-eqz v4, :cond_9c

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get9(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_9c

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get9(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_9c
.end method
