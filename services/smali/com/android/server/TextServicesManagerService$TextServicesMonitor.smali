.class final Lcom/android/server/TextServicesManagerService$TextServicesMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextServicesMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/TextServicesManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$TextServicesMonitor;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;)V

    return-void
.end method

.method private isChangingPackagesOfCurrentUser()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->getChangingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get3(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v2

    if-ne v1, v2, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .registers 10

    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isChangingPackagesOfCurrentUser()Z

    move-result v4

    if-nez v4, :cond_7

    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v4}, Lcom/android/server/TextServicesManagerService;->-get2(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_e
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v4}, Lcom/android/server/TextServicesManagerService;->-get1(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v6}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v7}, Lcom/android/server/TextServicesManagerService;->-get6(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v8}, Lcom/android/server/TextServicesManagerService;->-get3(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lcom/android/server/TextServicesManagerService;->-wrap2(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v4}, Lcom/android/server/TextServicesManagerService;->-wrap1(Lcom/android/server/TextServicesManagerService;)Z
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_76

    move-result v4

    if-nez v4, :cond_3a

    monitor-exit v5

    return-void

    :cond_3a
    if-nez v3, :cond_4a

    :try_start_3c
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/TextServicesManagerService;->-wrap0(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v4, v3}, Lcom/android/server/TextServicesManagerService;->-wrap3(Lcom/android/server/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_76

    :cond_48
    :goto_48
    monitor-exit v5

    return-void

    :cond_4a
    :try_start_4a
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_58

    const/4 v4, 0x2

    if-ne v1, v4, :cond_79

    :cond_58
    :goto_58
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v4, v2}, Lcom/android/server/TextServicesManagerService;->-wrap0(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_48

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v4, v0}, Lcom/android/server/TextServicesManagerService;->-wrap3(Lcom/android/server/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_75
    .catchall {:try_start_4a .. :try_end_75} :catchall_76

    goto :goto_48

    :catchall_76
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_79
    :try_start_79
    invoke-virtual {p0, v2}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_76

    move-result v4

    if-eqz v4, :cond_48

    goto :goto_58
.end method
