.class Lcom/android/server/content/SyncManager$13;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get3(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/content/SyncManagerInjector;->isDisallowMeteredBySettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    sget-object v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v2, "disallow metered"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    sget-object v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v2, "metered"

    invoke-static {v0, v1, v2}, Lcom/android/server/content/SyncManager;->-wrap29(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    goto :goto_17
.end method
