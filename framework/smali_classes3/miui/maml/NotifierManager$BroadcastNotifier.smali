.class public Lmiui/maml/NotifierManager$BroadcastNotifier;
.super Lmiui/maml/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastNotifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/NotifierManager$BroadcastNotifier$1;
    }
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    new-instance v0, Lmiui/maml/NotifierManager$BroadcastNotifier$1;

    invoke-direct {v0, p0}, Lmiui/maml/NotifierManager$BroadcastNotifier$1;-><init>(Lmiui/maml/NotifierManager$BroadcastNotifier;)V

    iput-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    new-instance v0, Lmiui/maml/NotifierManager$BroadcastNotifier$1;

    invoke-direct {v0, p0}, Lmiui/maml/NotifierManager$BroadcastNotifier$1;-><init>(Lmiui/maml/NotifierManager$BroadcastNotifier;)V

    iput-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BroadcastNotifier;->getIntentAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method protected getIntentAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method protected onRegister()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lmiui/maml/NotifierManager$BroadcastNotifier;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    :cond_b
    iget-object v1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_19

    const-string/jumbo v1, "NotifierManager"

    const-string/jumbo v2, "onRegister: mIntentFilter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    iget-object v1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0, v4}, Lmiui/maml/NotifierManager$BroadcastNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method protected onUnregister()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method
