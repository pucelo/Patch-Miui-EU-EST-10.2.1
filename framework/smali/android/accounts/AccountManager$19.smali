.class Landroid/accounts/AccountManager$19;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$accountsCopy:[Landroid/accounts/Account;

.field final synthetic val$listener:Landroid/accounts/OnAccountsUpdateListener;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .registers 4

    iput-object p1, p0, Landroid/accounts/AccountManager$19;->this$0:Landroid/accounts/AccountManager;

    iput-object p2, p0, Landroid/accounts/AccountManager$19;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    iput-object p3, p0, Landroid/accounts/AccountManager$19;->val$accountsCopy:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v4, p0, Landroid/accounts/AccountManager$19;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v4}, Landroid/accounts/AccountManager;->-get0(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_7
    iget-object v4, p0, Landroid/accounts/AccountManager$19;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v4}, Landroid/accounts/AccountManager;->-get0(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v6, p0, Landroid/accounts/AccountManager$19;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v4, p0, Landroid/accounts/AccountManager$19;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v4}, Landroid/accounts/AccountManager;->-get1(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v6, p0, Landroid/accounts/AccountManager$19;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_53

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Landroid/accounts/AccountManager$19;->val$accountsCopy:[Landroid/accounts/Account;

    const/4 v4, 0x0

    array-length v7, v6

    :goto_2e
    if-ge v4, v7, :cond_40

    aget-object v0, v6, v4

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_40
    iget-object v6, p0, Landroid/accounts/AccountManager$19;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/accounts/Account;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    invoke-interface {v6, v4}, Landroid/accounts/OnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V
    :try_end_51
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_51} :catch_5b
    .catchall {:try_start_7 .. :try_end_51} :catchall_66

    :cond_51
    :goto_51
    monitor-exit v5

    return-void

    :cond_53
    :try_start_53
    iget-object v4, p0, Landroid/accounts/AccountManager$19;->val$listener:Landroid/accounts/OnAccountsUpdateListener;

    iget-object v6, p0, Landroid/accounts/AccountManager$19;->val$accountsCopy:[Landroid/accounts/Account;

    invoke-interface {v4, v6}, Landroid/accounts/OnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V
    :try_end_5a
    .catch Landroid/database/SQLException; {:try_start_53 .. :try_end_5a} :catch_5b
    .catchall {:try_start_53 .. :try_end_5a} :catchall_66

    goto :goto_51

    :catch_5b
    move-exception v1

    :try_start_5c
    const-string/jumbo v4, "AccountManager"

    const-string/jumbo v6, "Can\'t update accounts"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_66

    goto :goto_51

    :catchall_66
    move-exception v4

    monitor-exit v5

    throw v4
.end method
