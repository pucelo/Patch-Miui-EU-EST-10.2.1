.class public Lcom/android/keyguard/RootHolder;
.super Ljava/lang/Object;
.source "RootHolder.java"


# instance fields
.field private mContext:Lmiui/maml/ScreenContext;

.field private mResourceMgr:Lmiui/maml/LifecycleResourceManager;

.field private mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

.field private mTempCachePath:Ljava/lang/String;

.field private mViewList:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/keyguard/AwesomeLockScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/RootHolder;->mViewList:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public cleanUp(Lcom/android/keyguard/AwesomeLockScreen;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/keyguard/AwesomeLockScreen;->cleanUpView()V

    const-string/jumbo v0, "RootHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cleanUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/keyguard/AwesomeLockScreen;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/RootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0}, Lmiui/maml/data/Variables;->reset()V

    iput-object v3, p0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    const-string/jumbo v0, "RootHolder"

    const-string/jumbo v1, "cleanUp finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AwesomeLockScreen;

    invoke-virtual {v0}, Lcom/android/keyguard/AwesomeLockScreen;->rebindView()V

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    iput-object v2, p0, Lcom/android/keyguard/RootHolder;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mResourceMgr:Lmiui/maml/LifecycleResourceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mResourceMgr:Lmiui/maml/LifecycleResourceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/LifecycleResourceManager;->finish(Z)V

    iput-object v2, p0, Lcom/android/keyguard/RootHolder;->mResourceMgr:Lmiui/maml/LifecycleResourceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mTempCachePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/keyguard/RootHolder;->mTempCachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public createView(Landroid/content/Context;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    iget-object v1, p0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-direct {v0, p1, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;-><init>(Landroid/content/Context;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V

    const-string/jumbo v1, "RootHolder"

    const-string/jumbo v2, "createView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getContext()Lmiui/maml/ScreenContext;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mContext:Lmiui/maml/ScreenContext;

    return-object v0
.end method

.method public getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/android/keyguard/AwesomeLockScreen;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mTempCachePath:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/RootHolder;->mTempCachePath:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    if-nez v0, :cond_2

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/content/res/ThemeResourcesSystem;->resetLockscreen()V

    new-instance v0, Lmiui/maml/LifecycleResourceManager;

    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;

    invoke-direct {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    const-wide/32 v4, 0x36ee80

    invoke-direct/range {v0 .. v5}, Lmiui/maml/LifecycleResourceManager;-><init>(Lmiui/maml/ResourceLoader;JJ)V

    iput-object v0, p0, Lcom/android/keyguard/RootHolder;->mResourceMgr:Lmiui/maml/LifecycleResourceManager;

    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mResourceMgr:Lmiui/maml/LifecycleResourceManager;

    const/high16 v1, 0x6400000

    invoke-virtual {v0, v1}, Lmiui/maml/LifecycleResourceManager;->setCacheSize(I)V

    new-instance v0, Lmiui/maml/ScreenContext;

    iget-object v1, p0, Lcom/android/keyguard/RootHolder;->mResourceMgr:Lmiui/maml/LifecycleResourceManager;

    new-instance v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;

    invoke-direct {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;)V

    iput-object v0, p0, Lcom/android/keyguard/RootHolder;->mContext:Lmiui/maml/ScreenContext;

    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    iget-object v1, p0, Lcom/android/keyguard/RootHolder;->mContext:Lmiui/maml/ScreenContext;

    invoke-direct {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;-><init>(Lmiui/maml/ScreenContext;)V

    iput-object v0, p0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    const-string/jumbo v1, "/data/system/theme/config.config"

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setConfig(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    iget-object v1, p0, Lcom/android/keyguard/RootHolder;->mTempCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setCacheDir(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->load()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "RootHolder"

    const-string/jumbo v1, "fail to load element root"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string/jumbo v0, "RootHolder"

    const-string/jumbo v1, "create root"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mViewList:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "RootHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/keyguard/AwesomeLockScreen;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/RootHolder;->mResourceMgr:Lmiui/maml/LifecycleResourceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lmiui/maml/LifecycleResourceManager;->setLocal(Ljava/util/Locale;)V

    goto :goto_0
.end method
