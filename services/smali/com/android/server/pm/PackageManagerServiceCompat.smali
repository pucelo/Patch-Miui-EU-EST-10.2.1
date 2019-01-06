.class public Lcom/android/server/pm/PackageManagerServiceCompat;
.super Ljava/lang/Object;
.source "PackageManagerServiceCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageUid(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I
    .registers 4

    const/16 v0, 0x2000

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getWakePathComponents(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/security/WakePathComponent;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v1

    :cond_c
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_f
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_45

    if-nez v0, :cond_1b

    monitor-exit v3

    return-object v1

    :cond_1b
    :try_start_1b
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-eqz v2, :cond_25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-static {v1, v2, v4}, Lcom/android/server/pm/PackageManagerServiceCompat;->parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V

    :cond_25
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    if-eqz v2, :cond_2f

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/android/server/pm/PackageManagerServiceCompat;->parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V

    :cond_2f
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    if-eqz v2, :cond_39

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-static {v1, v2, v4}, Lcom/android/server/pm/PackageManagerServiceCompat;->parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V

    :cond_39
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    if-eqz v2, :cond_43

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-static {v1, v2, v4}, Lcom/android/server/pm/PackageManagerServiceCompat;->parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V
    :try_end_43
    .catchall {:try_start_1b .. :try_end_43} :catchall_45

    :cond_43
    monitor-exit v3

    return-object v1

    :catchall_45
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static isEnabledAndMatchLPr(Lcom/android/server/pm/Settings;Landroid/content/pm/ProviderInfo;II)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v0

    return v0
.end method

.method private static parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/security/WakePathComponent;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Landroid/content/pm/PackageParser$Component;",
            ">;I)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_b
    if-ltz v0, :cond_97

    packed-switch p2, :pswitch_data_98

    const/4 v2, 0x0

    :goto_11
    if-nez v2, :cond_42

    :goto_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :pswitch_16
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Activity;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    goto :goto_11

    :pswitch_21
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Activity;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    goto :goto_11

    :pswitch_2c
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Provider;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v6, Landroid/content/pm/ProviderInfo;->exported:Z

    goto :goto_11

    :pswitch_37
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Service;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v2, v6, Landroid/content/pm/ServiceInfo;->exported:Z

    goto :goto_11

    :cond_42
    new-instance v5, Lmiui/security/WakePathComponent;

    invoke-direct {v5}, Lmiui/security/WakePathComponent;-><init>()V

    invoke-virtual {v5, p2}, Lmiui/security/WakePathComponent;->setType(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Component;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmiui/security/WakePathComponent;->setClassname(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Component;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    if-eqz v6, :cond_92

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Component;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_6d
    if-ltz v3, :cond_92

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Component;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :goto_83
    if-ltz v4, :cond_8f

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/security/WakePathComponent;->addIntentAction(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_83

    :cond_8f
    add-int/lit8 v3, v3, -0x1

    goto :goto_6d

    :cond_92
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_97
    return-void

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_21
        :pswitch_37
        :pswitch_16
        :pswitch_2c
    .end packed-switch
.end method
