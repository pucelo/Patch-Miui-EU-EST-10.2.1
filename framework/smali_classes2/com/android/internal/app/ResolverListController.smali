.class public Lcom/android/internal/app/ResolverListController;
.super Ljava/lang/Object;
.source "ResolverListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverListController$ComputeCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverListController"


# instance fields
.field private isComputed:Z

.field private final mContext:Landroid/content/Context;

.field private final mLaunchedFromUid:I

.field private final mReferrerPackage:Ljava/lang/String;

.field private mResolverComparator:Lcom/android/internal/app/ResolverComparator;

.field private final mTargetIntent:Landroid/content/Intent;

.field private final mpm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    iput-object p1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/app/ResolverListController;->mpm:Landroid/content/pm/PackageManager;

    iput p5, p0, Lcom/android/internal/app/ResolverListController;->mLaunchedFromUid:I

    iput-object p3, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/internal/app/ResolverListController;->mReferrerPackage:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/app/ResolverComparator;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mReferrerPackage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/ResolverComparator$AfterCompute;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    return-void
.end method

.method private static isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .registers 5

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1c
    return v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_49

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_25

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-static {v6, v7}, Lcom/android/internal/app/ResolverListController;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v8

    if-eqz v8, :cond_46

    const/4 v0, 0x1

    invoke-virtual {v7, p2, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    :cond_25
    if-nez v0, :cond_43

    new-instance v5, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-direct {v7, v5, p2, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverListController;->isComponentPinned(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->setPinned(Z)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_49
    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverComparator;->destroy()V

    return-void
.end method

.method public filterIneligibleActivities(Ljava/util/List;Z)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_8
    if-ltz v2, :cond_4d

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v5, v9}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/app/ResolverListController;->mLaunchedFromUid:I

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v8, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v5, v6

    if-eqz v5, :cond_4b

    const/4 v4, 0x1

    :goto_2e
    if-nez v1, :cond_3c

    if-nez v4, :cond_3c

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverListController;->isComponentFiltered(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_48

    :cond_3c
    if-eqz p2, :cond_45

    if-nez v3, :cond_45

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_45
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_48
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_4b
    const/4 v4, 0x0

    goto :goto_2e

    :cond_4d
    return-object v3
.end method

.method public filterLowPriority(Ljava/util/List;Z)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v4, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    :goto_11
    if-ge v1, v0, :cond_3d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v6, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/ResolveInfo;->priority:I

    iget v7, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v6, v7, :cond_29

    iget-boolean v6, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v7, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v6, v7, :cond_3a

    :cond_29
    :goto_29
    if-ge v1, v0, :cond_3a

    if-eqz p2, :cond_34

    if-nez v2, :cond_34

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_34
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_3d
    return-object v2
.end method

.method public getLastChosen()Landroid/content/pm/ResolveInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getResolversForIntent(ZZLjava/util/List;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    :goto_7
    if-ge v1, v0, :cond_57

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/internal/app/ResolverListController;->mpm:Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_44

    const/16 v8, 0x40

    :goto_15
    const/high16 v11, 0x10000

    or-int/2addr v11, v8

    if-eqz p2, :cond_46

    const/16 v8, 0x80

    :goto_1c
    or-int/2addr v8, v11

    const/high16 v11, 0x800000

    or-int/2addr v8, v11

    invoke-virtual {v10, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :goto_2a
    if-ltz v5, :cond_48

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_41

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v8, v8, Landroid/content/pm/ActivityInfo;->exported:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_41

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_41
    add-int/lit8 v5, v5, -0x1

    goto :goto_2a

    :cond_44
    move v8, v9

    goto :goto_15

    :cond_46
    move v8, v9

    goto :goto_1c

    :cond_48
    if-eqz v3, :cond_54

    if-nez v6, :cond_51

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_51
    invoke-virtual {p0, v6, v4, v3}, Lcom/android/internal/app/ResolverListController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_57
    return-object v6
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method isComponentFiltered(Landroid/content/ComponentName;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method isComponentPinned(Landroid/content/ComponentName;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/high16 v3, 0x10000

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public sort(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    if-nez v7, :cond_e

    const-string/jumbo v7, "ResolverListController"

    const-string/jumbo v8, "Comparator has already been destroyed; skipped."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    :try_start_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v7, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    if-nez v7, :cond_31

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v4, Lcom/android/internal/app/ResolverListController$ComputeCallback;

    invoke-direct {v4, p0, v6}, Lcom/android/internal/app/ResolverListController$ComputeCallback;-><init>(Lcom/android/internal/app/ResolverListController;Ljava/util/concurrent/CountDownLatch;)V

    iget-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v7, v4}, Lcom/android/internal/app/ResolverComparator;->setCallBack(Lcom/android/internal/app/ResolverComparator$AfterCompute;)V

    iget-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v7, p1}, Lcom/android/internal/app/ResolverComparator;->compute(Ljava/util/List;)V

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    :cond_31
    iget-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-static {p1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_39} :catch_3b

    move-result-wide v0

    :goto_3a
    return-void

    :catch_3b
    move-exception v5

    const-string/jumbo v7, "ResolverListController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Compute & Sort was interrupted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method public updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/ResolverComparator;->updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public updateModel(Landroid/content/ComponentName;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverComparator;->updateModel(Landroid/content/ComponentName;)V

    return-void
.end method
