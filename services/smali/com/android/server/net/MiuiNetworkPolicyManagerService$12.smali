.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;
.super Landroid/database/ContentObserver;
.source "MiuiNetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerLowLatencyAppsChangedObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 14

    iget-object v9, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v9}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    iget-object v9, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v9}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget-object v10, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget-object v11, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v11}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get1(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap4(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/content/Context;)Ljava/util/Set;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-set2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/util/Set;)Ljava/util/Set;

    iget-object v9, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v9}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->clear()V

    iget-object v9, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v9}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get6(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_98

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_47
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_98

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    const/4 v10, 0x0

    invoke-static {v3, v10, v9}, Landroid/content/pm/PackageManagerCompat;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5e
    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_5e

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_5e

    iget-object v9, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v9}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get6(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5e

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    iget-object v9, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v9}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_98
    return-void
.end method
