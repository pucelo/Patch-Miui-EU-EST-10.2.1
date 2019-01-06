.class public abstract Landroid/app/FragmentHostCallback;
.super Landroid/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field private mRetainLoaders:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6

    invoke-direct {p0}, Landroid/app/FragmentContainer;-><init>()V

    new-instance v0, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    iput p4, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :goto_7
    invoke-static {p1, p2}, Landroid/app/FragmentHostCallback;->chooseHandler(Landroid/content/Context;Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static chooseHandler(Landroid/content/Context;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 4

    if-nez p1, :cond_c

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    return-object v1

    :cond_c
    return-object p1
.end method


# virtual methods
.method doLoaderDestroy()V
    .registers 2

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    return-void
.end method

.method doLoaderRetain()V
    .registers 2

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    return-void
.end method

.method doLoaderStart()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iput-boolean v3, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    :cond_11
    :goto_11
    iput-boolean v3, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    return-void

    :cond_14
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_11

    const-string/jumbo v0, "(root)"

    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    goto :goto_11
.end method

.method doLoaderStop(Z)V
    .registers 3

    iput-boolean p1, p0, Landroid/app/FragmentHostCallback;->mRetainLoaders:Z

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz p1, :cond_17

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStop()V

    goto :goto_16
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_47

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_47
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;
    .registers 2

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;
    .registers 6

    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-nez v1, :cond_b

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    :cond_b
    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_22

    if-eqz p3, :cond_22

    new-instance v0, Landroid/app/LoaderManagerImpl;

    invoke-direct {v0, p1, p0, p2}, Landroid/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/app/FragmentHostCallback;Z)V

    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    :goto_21
    return-object v0

    :cond_22
    if-eqz p2, :cond_21

    if-eqz v0, :cond_21

    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    goto :goto_21
.end method

.method getLoaderManagerImpl()Landroid/app/LoaderManagerImpl;
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    return-object v0

    :cond_8
    iput-boolean v2, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    const-string/jumbo v0, "(root)"

    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    return-object v0
.end method

.method getRetainLoaders()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mRetainLoaders:Z

    return v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_1c

    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .registers 2

    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .registers 3

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .registers 2

    iget v0, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public onHasView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onInvalidateOptionsMenu()V
    .registers 1

    return-void
.end method

.method public onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/app/Fragment;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onStartActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 8

    const/4 v0, -0x1

    if-eq p3, v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, p5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7

    const/4 v0, -0x1

    if-eq p3, v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p3, v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public onUseFragmentManagerInflaterFactory()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method reportLoaderStart()V
    .registers 6

    iget-object v4, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v4, :cond_2b

    iget-object v4, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v3, v0, [Landroid/app/LoaderManagerImpl;

    add-int/lit8 v1, v0, -0x1

    :goto_e
    if-ltz v1, :cond_1d

    iget-object v4, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoaderManagerImpl;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_2b

    aget-object v2, v3, v1

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl;->finishRetain()V

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2b
    return-void
.end method

.method restoreLoaderNonConfig(Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_15

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_7
    if-ge v1, v0, :cond_15

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl;

    invoke-virtual {v2, p0}, Landroid/app/LoaderManagerImpl;->updateHostController(Landroid/app/FragmentHostCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    return-void
.end method

.method retainLoaderNonConfig()Landroid/util/ArrayMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v6, :cond_4b

    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v4, v0, [Landroid/app/LoaderManagerImpl;

    add-int/lit8 v2, v0, -0x1

    :goto_10
    if-ltz v2, :cond_1f

    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/LoaderManagerImpl;

    aput-object v6, v4, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    :cond_1f
    invoke-virtual {p0}, Landroid/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v1

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v0, :cond_4b

    aget-object v3, v4, v2

    iget-boolean v6, v3, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v6, :cond_38

    if-eqz v1, :cond_38

    iget-boolean v6, v3, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v6, :cond_35

    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->doStart()V

    :cond_35
    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->doRetain()V

    :cond_38
    iget-boolean v6, v3, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_40

    const/4 v5, 0x1

    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_40
    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    iget-object v7, v3, Landroid/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :cond_4b
    if-eqz v5, :cond_50

    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    return-object v6

    :cond_50
    return-object v8
.end method
