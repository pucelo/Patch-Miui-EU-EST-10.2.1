.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$WipeDataTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private mWipeEsims:Z

.field private mWipeExternalStorage:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/MasterClearReceiver;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    return v0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const/4 v6, 0x0

    const-string/jumbo v4, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string/jumbo v4, "google.com"

    const-string/jumbo v5, "from"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    const-string/jumbo v4, "MasterClear"

    const-string/jumbo v5, "Ignoring master clear request -- not from trusted server."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    const-string/jumbo v4, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const-string/jumbo v4, "MasterClear"

    const-string/jumbo v5, "The request uses the deprecated Intent#ACTION_MASTER_CLEAR, Intent#ACTION_FACTORY_RESET should be used instead."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    const-string/jumbo v4, "android.intent.extra.FORCE_MASTER_CLEAR"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    const-string/jumbo v4, "MasterClear"

    const-string/jumbo v5, "The request uses the deprecated Intent#EXTRA_FORCE_MASTER_CLEAR, Intent#EXTRA_FORCE_FACTORY_RESET should be used instead."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    const-string/jumbo v4, "shutdown"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v4, "android.intent.extra.REASON"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    const-string/jumbo v4, "com.android.internal.intent.extra.WIPE_ESIMS"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    const-string/jumbo v4, "android.intent.extra.FORCE_MASTER_CLEAR"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_a4

    const-string/jumbo v4, "android.intent.extra.FORCE_FACTORY_RESET"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :goto_80
    const-string/jumbo v4, "MasterClear"

    const-string/jumbo v5, "!!! FACTORY RESET !!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/MasterClearReceiver$1;

    const-string/jumbo v4, "Reboot"

    invoke-direct {v3, p0, v4, p1, p2}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    iget-boolean v4, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    if-nez v4, :cond_99

    iget-boolean v4, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    if-eqz v4, :cond_a6

    :cond_99
    new-instance v4, Lcom/android/server/MasterClearReceiver$WipeDataTask;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/server/MasterClearReceiver$WipeDataTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/server/MasterClearReceiver$WipeDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_a3
    return-void

    :cond_a4
    const/4 v0, 0x1

    goto :goto_80

    :cond_a6
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_a3
.end method
