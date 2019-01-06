.class public Lcom/android/systemui/fragments/FragmentHostManager;
.super Ljava/lang/Object;
.source "FragmentHostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;,
        Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;,
        Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;
    }
.end annotation


# instance fields
.field private final mConfigChanges:Lcom/android/systemui/util/InterestingConfigChanges;

.field private final mContext:Landroid/content/Context;

.field private mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

.field private final mHandler:Landroid/os/Handler;

.field private mLifecycleCallbacks:Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mManager:Lcom/android/systemui/fragments/FragmentService;

.field private final mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;

.field private final mRootView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/fragments/FragmentHostManager;)Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/os/Parcelable;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->destroyFragmentHost()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/fragments/FragmentHostManager;I)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/fragments/FragmentHostManager;Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->createFragmentHost(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/fragments/FragmentHostManager;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/fragments/FragmentHostManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/fragments/FragmentHostManager;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->onFragmentViewCreated(Lcom/miui/systemui/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/fragments/FragmentHostManager;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->onFragmentViewDestroyed(Lcom/miui/systemui/support/v4/app/Fragment;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/util/InterestingConfigChanges;

    const v1, -0x3ffffefc    # -2.000062f

    invoke-direct {v0, v1}, Lcom/android/systemui/util/InterestingConfigChanges;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mConfigChanges:Lcom/android/systemui/util/InterestingConfigChanges;

    new-instance v0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;-><init>(Lcom/android/systemui/fragments/FragmentHostManager;)V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;

    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mManager:Lcom/android/systemui/fragments/FragmentService;

    iput-object p3, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mConfigChanges:Lcom/android/systemui/util/InterestingConfigChanges;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->createFragmentHost(Landroid/os/Parcelable;)V

    return-void
.end method

.method private createFragmentHost(Landroid/os/Parcelable;)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;

    invoke-direct {v1, p0}, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;-><init>(Lcom/android/systemui/fragments/FragmentHostManager;)V

    invoke-static {v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->createController(Lcom/miui/systemui/support/v4/app/FragmentHostCallback;)Lcom/miui/systemui/support/v4/app/FragmentController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1, v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->attachHost(Lcom/miui/systemui/support/v4/app/Fragment;)V

    new-instance v1, Lcom/android/systemui/fragments/FragmentHostManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/fragments/FragmentHostManager$1;-><init>(Lcom/android/systemui/fragments/FragmentHostManager;)V

    iput-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mLifecycleCallbacks:Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mLifecycleCallbacks:Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentManager;->registerFragmentLifecycleCallbacks(Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    check-cast v0, Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    invoke-virtual {v1, p1, v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchCreate()V

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchStart()V

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchResume()V

    return-void
.end method

.method private destroyFragmentHost()Landroid/os/Parcelable;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchPause()V

    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchStop()V

    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchDestroy()V

    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mLifecycleCallbacks:Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, v2}, Lcom/miui/systemui/support/v4/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V

    return-object v0
.end method

.method private dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 2

    :try_start_0
    const-class v1, Lcom/android/systemui/fragments/FragmentService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fragments/FragmentService;

    invoke-virtual {v1, p0}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    throw v0
.end method

.method private onFragmentViewCreated(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 5

    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    invoke-interface {v0, v3, p1}, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;->onFragmentViewCreated(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFragmentViewDestroyed(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 5

    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    invoke-interface {v0, v3, p1}, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;->onFragmentViewDestroyed(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/systemui/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p2, p1, v0}, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;->onFragmentViewCreated(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V

    :cond_1
    return-object p0
.end method

.method public getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->getSupportFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method getPluginManager()Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mConfigChanges:Lcom/android/systemui/util/InterestingConfigChanges;

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->destroyFragmentHost()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->createFragmentHost(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1, p1}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public removeTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
