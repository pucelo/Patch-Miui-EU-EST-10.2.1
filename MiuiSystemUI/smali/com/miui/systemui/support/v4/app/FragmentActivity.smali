.class public Lcom/miui/systemui/support/v4/app/FragmentActivity;
.super Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemui/support/v4/app/FragmentActivity$1;,
        Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;,
        Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# instance fields
.field mCreated:Z

.field final mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mNextCandidateRequestIndex:I

.field mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/systemui/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReallyStopped:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;-><init>()V

    new-instance v0, Lcom/miui/systemui/support/v4/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity$1;-><init>(Lcom/miui/systemui/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;-><init>(Lcom/miui/systemui/support/v4/app/FragmentActivity;)V

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->createController(Lcom/miui/systemui/support/v4/app/FragmentHostCallback;)Lcom/miui/systemui/support/v4/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mStopped:Z

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mReallyStopped:Z

    return-void
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method doReallyStop(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mReallyStopped:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mReallyStopped:Z

    iput-boolean p1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mRetaining:Z

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->onReallyStop()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->doLoaderStart()V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->doLoaderStop(Z)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Local FragmentActivity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->getSupportFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/FragmentController;->noteStateNotSaved()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->remove(I)V

    if-nez v2, :cond_0

    const-string/jumbo v3, "FragmentActivity"

    const-string/jumbo v4, "Activity result delivered for unknown Fragment."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v3, v2}, Lcom/miui/systemui/support/v4/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v3, "FragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const v3, 0xffff

    and-int/2addr v3, p1

    invoke-virtual {v1, v3, p2, p3}, Lcom/miui/systemui/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/FragmentController;->getSupportFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v6, v5}, Lcom/miui/systemui/support/v4/app/FragmentController;->attachHost(Lcom/miui/systemui/support/v4/app/Fragment;)V

    invoke-super {p0, p1}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;

    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    iget-object v7, v2, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-virtual {v6, v7}, Lcom/miui/systemui/support/v4/app/FragmentController;->restoreLoaderNonConfig(Lcom/miui/systemui/support/v4/util/SimpleArrayMap;)V

    :cond_0
    if-eqz p1, :cond_3

    const-string/jumbo v6, "android:support:fragments"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    iget-object v6, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    :cond_1
    invoke-virtual {v6, v3, v5}, Lcom/miui/systemui/support/v4/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;)V

    const-string/jumbo v5, "android:support:next_request_index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "android:support:next_request_index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    const-string/jumbo v5, "android:support:request_indicies"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const-string/jumbo v5, "android:support:request_fragment_who"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_2

    if-nez v0, :cond_5

    :cond_2
    const-string/jumbo v5, "FragmentActivity"

    const-string/jumbo v6, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    if-nez v5, :cond_4

    new-instance v5, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-direct {v5}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    const/4 v5, 0x0

    iput v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    :cond_4
    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v5}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchCreate()V

    return-void

    :cond_5
    array-length v5, v4

    array-length v6, v0

    if-ne v5, v6, :cond_2

    new-instance v5, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    array-length v6, v4

    invoke-direct {v5, v6}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    aget v6, v4, v1

    aget-object v7, v0, v1

    invoke-virtual {v5, v6, v7}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchDestroy()V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->doLoaderDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onLowMemory()V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchLowMemory()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->noteStateNotSaved()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x2

    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mResumed:Z

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->onResumeFragments()V

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchPause()V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onPostResume()V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->onResumeFragments()V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->execPendingActions()Z

    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v1, p3}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method onReallyStop()V
    .locals 2

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mRetaining:Z

    invoke-virtual {v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentController;->doLoaderStop(Z)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchReallyStop()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v4, 0xffff

    shr-int/lit8 v3, p1, 0x10

    and-int v1, v3, v4

    if-eqz v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v1}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v1}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->remove(I)V

    if-nez v2, :cond_0

    const-string/jumbo v3, "FragmentActivity"

    const-string/jumbo v4, "Activity result delivered for unknown Fragment."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v3, v2}, Lcom/miui/systemui/support/v4/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v3, "FragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    and-int v3, p1, v4

    invoke-virtual {v0, v3, p2, p3}, Lcom/miui/systemui/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onResume()V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mResumed:Z

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->execPendingActions()Z

    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchResume()V

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/app/FragmentController;->retainNestedNonConfig()Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/app/FragmentController;->retainLoaderNonConfig()Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    move-result-object v2

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    return-object v5

    :cond_1
    new-instance v3, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v3}, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    iput-object v0, v3, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    iput-object v1, v3, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    iput-object v2, v3, Lcom/miui/systemui/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    return-object v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, "android:support:fragments"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    if-lez v4, :cond_2

    const-string/jumbo v4, "android:support:next_request_index"

    iget v5, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    new-array v3, v4, [I

    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v1}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v4

    aput v4, v3, v1

    iget-object v4, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Lcom/miui/systemui/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v1}, Lcom/miui/systemui/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "android:support:request_indicies"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v4, "android:support:request_fragment_who"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onStart()V

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mStopped:Z

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mReallyStopped:Z

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mCreated:Z

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchActivityCreated()V

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->noteStateNotSaved()V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->execPendingActions()Z

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->doLoaderStart()V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchStart()V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->reportLoaderStart()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->noteStateNotSaved()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->onStop()V

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mStopped:Z

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->dispatchStop()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super/range {p0 .. p6}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    invoke-super/range {p0 .. p7}, Lcom/miui/systemui/support/v4/app/BaseFragmentActivityApi16;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void
.end method