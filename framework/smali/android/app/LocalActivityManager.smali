.class public Landroid/app/LocalActivityManager;
.super Ljava/lang/Object;
.source "LocalActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LocalActivityManager$LocalActivityRecord;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final CREATED:I = 0x2

.field static final DESTROYED:I = 0x5

.field static final INITIALIZING:I = 0x1

.field static final RESTORED:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocalActivityManager"

.field private static final localLOGV:Z


# instance fields
.field private final mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/app/ActivityThread;

.field private mCurState:I

.field private mFinishing:Z

.field private final mParent:Landroid/app/Activity;

.field private mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

.field private mSingleMode:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iput-object p1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    iput-boolean p2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    return-void
.end method

.method private moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V
    .registers 13

    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    if-eqz v0, :cond_9

    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    :cond_9
    return-void

    :cond_a
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6c

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v9

    const/4 v8, 0x0

    if-eqz v9, :cond_1e

    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :cond_1e
    const/4 v7, 0x0

    if-eqz v8, :cond_28

    new-instance v7, Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct {v7}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    iput-object v8, v7, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    :cond_28
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_36

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_36
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-nez v0, :cond_4e

    return-void

    :cond_4e
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    const/4 v0, 0x3

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_6b

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v1, "moveToState-INITIALIZING"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    const/4 v0, 0x4

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    :cond_6b
    return-void

    :cond_6c
    iget v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    packed-switch v0, :pswitch_data_d4

    return-void

    :pswitch_72
    const/4 v0, 0x3

    if-ne p2, v0, :cond_7d

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    const/4 v0, 0x3

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    :cond_7d
    const/4 v0, 0x4

    if-ne p2, v0, :cond_91

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v1, "moveToState-CREATED"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    const/4 v0, 0x4

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    :cond_91
    return-void

    :pswitch_92
    const/4 v0, 0x4

    if-ne p2, v0, :cond_a4

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v1, "moveToState-STARTED"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    const/4 v0, 0x4

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    :cond_a4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_b3

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v1, "moveToState-STARTED"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    :cond_b3
    return-void

    :pswitch_b4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_bf

    iget-boolean v0, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    invoke-direct {p0, p1, v0}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    const/4 v0, 0x3

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    :cond_bf
    const/4 v0, 0x2

    if-ne p2, v0, :cond_d3

    iget-boolean v0, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    invoke-direct {p0, p1, v0}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v1, "moveToState-RESUMED"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    :cond_d3
    return-void

    :pswitch_data_d4
    .packed-switch 0x2
        :pswitch_72
        :pswitch_92
        :pswitch_b4
    .end packed-switch
.end method

.method private performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    iget v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_f

    xor-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_f

    invoke-direct {p0, p1, p2}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    :cond_f
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v1, p1, p2}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    if-eqz p2, :cond_1c

    iput-object v3, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    :cond_1c
    const/4 v1, 0x5

    iput v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    return-object v0
.end method

.method private performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V
    .registers 7

    iget-object v2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-nez v2, :cond_13

    const/4 v1, 0x1

    :goto_5
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v3, "performPause"

    invoke-virtual {v2, p1, p2, v1, v3}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v1, :cond_12

    iput-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    :cond_12
    return-void

    :cond_13
    const/4 v1, 0x0

    goto :goto_5
.end method


# virtual methods
.method public destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;
    .registers 6

    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-direct {p0, v0, p2}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    move-result-object v1

    if-eqz p2, :cond_1b

    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1b
    return-object v1
.end method

.method public dispatchCreate(Landroid/os/Bundle;)V
    .registers 9

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_16
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v4, :cond_32

    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_26} :catch_27

    goto :goto_a

    :catch_27
    move-exception v1

    const-string/jumbo v5, "LocalActivityManager"

    const-string/jumbo v6, "Exception thrown when restoring LocalActivityManager state"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_32
    :try_start_32
    new-instance v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_44} :catch_27

    goto :goto_a

    :cond_45
    const/4 v5, 0x2

    iput v5, p0, Landroid/app/LocalActivityManager;->mCurState:I

    return-void
.end method

.method public dispatchDestroy(Z)V
    .registers 6

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v3, v2, p1}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public dispatchPause(Z)V
    .registers 8

    const/4 v5, 0x3

    if-eqz p1, :cond_6

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    :cond_6
    iput v5, p0, Landroid/app/LocalActivityManager;->mCurState:I

    iget-boolean v3, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v3, :cond_16

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v3, :cond_15

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v3, v5}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    :cond_15
    return-void

    :cond_16
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_15

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget v3, v2, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2f

    invoke-direct {p0, v2, v5}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method

.method public dispatchResume()V
    .registers 5

    const/4 v3, 0x4

    iput v3, p0, Landroid/app/LocalActivityManager;->mCurState:I

    iget-boolean v2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v2, v3}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    :cond_10
    return-void

    :cond_11
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_10

    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v2, v3}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method public dispatchRetainNonConfigurationInstance()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_2f

    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v4, :cond_2c

    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_2c

    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2c

    if-nez v3, :cond_27

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_27
    iget-object v5, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2f
    return-object v3
.end method

.method public dispatchStop()V
    .registers 6

    const/4 v4, 0x2

    iput v4, p0, Landroid/app/LocalActivityManager;->mCurState:I

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {p0, v2, v4}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public getActivity(Ljava/lang/String;)Landroid/app/Activity;
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    :cond_d
    return-object v1
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v1, :cond_9

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    :cond_9
    return-object v0
.end method

.method public getCurrentId()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v1, :cond_9

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    :cond_9
    return-object v0
.end method

.method public removeAllActivities()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    return-void
.end method

.method public saveInstanceState()Landroid/os/Bundle;
    .registers 8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_40

    iget-object v5, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-nez v4, :cond_19

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :cond_19
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-nez v5, :cond_22

    iget v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_32

    :cond_22
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_32

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    iput-object v1, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    :cond_32
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    if-eqz v5, :cond_3d

    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iget-object v6, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_40
    return-object v4
.end method

.method public startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    if-ne v6, v9, :cond_f

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Activities can\'t be added until the containing group has been created."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_f
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-nez v4, :cond_5d

    new-instance v4, Landroid/app/LocalActivityManager$LocalActivityRecord;

    invoke-direct {v4, p1, p2}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v1, 0x1

    :cond_22
    :goto_22
    if-nez v0, :cond_2a

    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v6, p2}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    :cond_2a
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_3d

    iget-object v3, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v3, :cond_3d

    if-eq v3, v4, :cond_3d

    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3d

    const/4 v6, 0x3

    invoke-direct {p0, v3, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    :cond_3d
    if-eqz v1, :cond_6c

    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    :goto_49
    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    iput v9, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    iput-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_5a

    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    :cond_5a
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    return-object v6

    :cond_5d
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_22

    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_22

    iget-object v0, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_22

    :cond_6c
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_49

    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eq v0, v6, :cond_8c

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dc

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dc

    :cond_8c
    iget v6, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v6, :cond_99

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x20000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_c1

    :cond_99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Lcom/android/internal/content/ReferrerIntent;

    iget-object v7, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v6, v4, v2, v8}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;Z)V

    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_be

    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    :cond_be
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    return-object v6

    :cond_c1
    if-eqz v5, :cond_dc

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x4000000

    and-int/2addr v6, v7

    if-nez v6, :cond_dc

    iput-object p2, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    iget v6, p0, Landroid/app/LocalActivityManager;->mCurState:I

    invoke-direct {p0, v4, v6}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    if-eqz v6, :cond_d9

    iput-object v4, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    :cond_d9
    iget-object v6, v4, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    return-object v6

    :cond_dc
    invoke-direct {p0, v4, v9}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    goto/16 :goto_49
.end method
