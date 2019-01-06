.class final Landroid/app/FragmentManagerImpl;
.super Landroid/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentManagerImpl$1;,
        Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Landroid/app/FragmentManagerImpl$OpGenerator;,
        Landroid/app/FragmentManagerImpl$PopBackStackState;,
        Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAllowOldReentrantBehavior:Z

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroid/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroid/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/FragmentHostCallback",
            "<*>;"
        }
    .end annotation
.end field

.field final mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/app/FragmentManager$FragmentLifecycleCallbacks;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNextFragmentIndex:I

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroid/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroid/app/Fragment;

.field mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->completeExecute(Landroid/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/app/FragmentManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->scheduleCommit()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/FragmentManager;-><init>()V

    iput v1, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v1, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    new-instance v0, Landroid/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$1;-><init>(Landroid/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method private addAddedFragments(Landroid/util/ArraySet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x1

    if-ge v0, v3, :cond_6

    return-void

    :cond_6
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_14
    if-ge v6, v7, :cond_43

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    iget v0, v1, Landroid/app/Fragment;->mState:I

    if-ge v0, v2, :cond_40

    invoke-virtual {v1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v3

    invoke-virtual {v1}, Landroid/app/Fragment;->getNextTransition()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_40

    iget-boolean v0, v1, Landroid/app/Fragment;->mHidden:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_40

    iget-boolean v0, v1, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_40

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_43
    return-void
.end method

.method private burpActive()V
    .registers 4

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_c
    if-ltz v0, :cond_24

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_24
    return-void
.end method

.method private checkStateLoss()V
    .registers 4

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    return-void
.end method

.method private cleanupExec()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private completeExecute(Landroid/app/BackStackRecord;ZZZ)V
    .registers 14

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_55

    invoke-virtual {p1, p4}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    :goto_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_22

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_22
    if-eqz p4, :cond_29

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v0, v4}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    :cond_29
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_59

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v7, 0x0

    :goto_34
    if-ge v7, v8, :cond_59

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Fragment;

    if-eqz v6, :cond_52

    iget-object v0, v6, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_52

    iget-boolean v0, v6, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_52

    iget v0, v6, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {p1, v0}, Landroid/app/BackStackRecord;->interactsWith(I)Z

    move-result v0

    if-eqz v0, :cond_52

    iput-boolean v3, v6, Landroid/app/Fragment;->mIsNewlyAdded:Z

    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_55
    invoke-virtual {p1}, Landroid/app/BackStackRecord;->executeOps()V

    goto :goto_7

    :cond_59
    return-void
.end method

.method private dispatchMoveToState(I)V
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mAllowOldReentrantBehavior:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    :goto_8
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    return-void

    :cond_c
    const/4 v0, 0x1

    :try_start_d
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_16

    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    goto :goto_8

    :catchall_16
    move-exception v0

    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v0
.end method

.method private endAnimatingAwayFragments()V
    .registers 5

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v3, :cond_22

    const/4 v2, 0x0

    :goto_5
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v2, :cond_29

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v0}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    goto :goto_5

    :cond_29
    return-void
.end method

.method private ensureExecReady(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_27

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    if-nez p1, :cond_2c

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    :cond_2c
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_3e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    :cond_3e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_43
    invoke-direct {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_49

    iput-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    return-void

    :catchall_49
    move-exception v0

    iput-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v0
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_2e

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    add-int/lit8 v4, p3, -0x1

    if-ne v0, v4, :cond_24

    const/4 v2, 0x1

    :goto_1e
    invoke-virtual {v3, v2}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_24
    const/4 v2, 0x0

    goto :goto_1e

    :cond_26
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    invoke-virtual {v3}, Landroid/app/BackStackRecord;->executeOps()V

    goto :goto_21

    :cond_2e
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord;

    iget-boolean v15, v2, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v2, :cond_62

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroid/app/Fragment;

    move-result-object v17

    move/from16 v19, p3

    :goto_2d
    move/from16 v0, v19

    move/from16 v1, p4

    if-ge v0, v1, :cond_76

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/BackStackRecord;

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-nez v16, :cond_6a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v17

    :goto_59
    if-nez v14, :cond_74

    move-object/from16 v0, v18

    iget-boolean v14, v0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    :goto_5f
    add-int/lit8 v19, v19, 0x1

    goto :goto_2d

    :cond_62
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1c

    :cond_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;)V

    goto :goto_59

    :cond_74
    const/4 v14, 0x1

    goto :goto_5f

    :cond_76
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-nez v15, :cond_8d

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static/range {v2 .. v7}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_8d
    invoke-static/range {p1 .. p4}, Landroid/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    move/from16 v12, p4

    if-eqz v15, :cond_b1

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/app/FragmentManagerImpl;->addAddedFragments(Landroid/util/ArraySet;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/util/ArraySet;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Landroid/util/ArraySet;)V

    :cond_b1
    move/from16 v0, p3

    if-eq v12, v0, :cond_cd

    if-eqz v15, :cond_cd

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v8 .. v13}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    :cond_cd
    move/from16 v19, p3

    :goto_cf
    move/from16 v0, v19

    move/from16 v1, p4

    if-ge v0, v1, :cond_109

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/BackStackRecord;

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_103

    move-object/from16 v0, v18

    iget v2, v0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v2, :cond_103

    move-object/from16 v0, v18

    iget v2, v0, Landroid/app/BackStackRecord;->mIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Landroid/app/BackStackRecord;->mIndex:I

    :cond_103
    invoke-virtual/range {v18 .. v18}, Landroid/app/BackStackRecord;->runOnCommitRunnables()V

    add-int/lit8 v19, v19, 0x1

    goto :goto_cf

    :cond_109
    if-eqz v14, :cond_10e

    invoke-virtual/range {p0 .. p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    :cond_10e
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v7, -0x1

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v4, :cond_37

    const/4 v3, 0x0

    :goto_6
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v3, :cond_86

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    if-eqz p1, :cond_3e

    invoke-static {v2}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-get0(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3e

    invoke-static {v2}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-get1(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v7, :cond_3e

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {v2}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    :cond_34
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_37
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_6

    :cond_3e
    invoke-virtual {v2}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v4

    if-nez v4, :cond_55

    if-eqz p1, :cond_34

    invoke-static {v2}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-get1(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, v5}, Landroid/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    if-eqz v4, :cond_34

    :cond_55
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    if-eqz p1, :cond_82

    invoke-static {v2}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-get0(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_82

    invoke-static {v2}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-get1(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v7, :cond_82

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-virtual {v2}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_34

    :cond_82
    invoke-virtual {v2}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_34

    :cond_86
    return-void
.end method

.method private findFragmentUnder(Landroid/app/Fragment;)Landroid/app/Fragment;
    .registers 9

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    if-nez v4, :cond_a

    :cond_9
    return-object v6

    :cond_a
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_12
    if-ltz v2, :cond_28

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    iget-object v5, v3, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v5, v0, :cond_25

    iget-object v5, v3, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_25

    return-object v3

    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    :cond_28
    return-object v6
.end method

.method private forcePostponedTransactions()V
    .registers 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    :goto_4
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_4

    :cond_19
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_f

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3c

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    monitor-exit p0

    return v4

    :cond_11
    :try_start_11
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v2, :cond_2a

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerImpl$OpGenerator;

    invoke-interface {v3, p1, p2}, Landroid/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2a
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_3c

    monitor-exit p0

    return v0

    :catchall_3c
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private makeRemovedFragmentsInvisible(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_1c

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    iget-boolean v4, v0, Landroid/app/Fragment;->mAdded:Z

    if-nez v4, :cond_19

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTransitionAlpha(F)V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1c
    return-void
.end method

.method static modifiesAlpha(Landroid/animation/Animator;)Z
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_5

    return v6

    :cond_5
    instance-of v4, p0, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_27

    move-object v2, p0

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v1, 0x0

    :goto_11
    array-length v4, v3

    if-ge v1, v4, :cond_48

    const-string/jumbo v4, "alpha"

    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    return v7

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    instance-of v4, p0, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_48

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_48

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-static {v4}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_45

    return v7

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_48
    return v6
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .registers 13

    const/4 v8, 0x1

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    invoke-direct {p0, v8}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    if-eqz v0, :cond_1c

    if-gez p2, :cond_1c

    if-nez p1, :cond_1c

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    iget-object v6, v0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v6, :cond_1c

    invoke-virtual {v6}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_1c

    return v8

    :cond_1c
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_36

    iput-boolean v8, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    :try_start_2c
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3d

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    :cond_36
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    return v7

    :catchall_3d
    move-exception v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    throw v0
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/util/ArraySet;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/app/Fragment;",
            ">;)I"
        }
    .end annotation

    move v4, p4

    add-int/lit8 v0, p4, -0x1

    :goto_3
    if-lt v0, p3, :cond_59

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/BackStackRecord;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v5}, Landroid/app/BackStackRecord;->isPostponed()Z

    move-result v6

    if-eqz v6, :cond_52

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, p1, v6, p4}, Landroid/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v6

    xor-int/lit8 v2, v6, 0x1

    :goto_23
    if-eqz v2, :cond_4f

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v6, :cond_30

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    :cond_30
    new-instance v3, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-direct {v3, v5, v1}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Landroid/app/BackStackRecord;Z)V

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3}, Landroid/app/BackStackRecord;->setOnStartPostponedListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V

    if-eqz v1, :cond_54

    invoke-virtual {v5}, Landroid/app/BackStackRecord;->executeOps()V

    :goto_42
    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_4c

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4c
    invoke-direct {p0, p5}, Landroid/app/FragmentManagerImpl;->addAddedFragments(Landroid/util/ArraySet;)V

    :cond_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_52
    const/4 v2, 0x0

    goto :goto_23

    :cond_54
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_42

    :cond_59
    return v4
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    return-void

    :cond_9
    if-eqz p2, :cond_15

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_1e

    :cond_15
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Internal error with the back stack records"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1e
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_6c

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/BackStackRecord;

    iget-boolean v0, v5, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v0, :cond_69

    if-eq v4, v2, :cond_38

    invoke-direct {p0, p1, p2, v4, v2}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_38
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_63

    :goto_46
    if-ge v3, v1, :cond_63

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/BackStackRecord;

    iget-boolean v5, v5, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_63

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_63
    invoke-direct {p0, p1, p2, v2, v3}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    move v4, v3

    add-int/lit8 v2, v3, -0x1

    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_6c
    if-eq v4, v1, :cond_71

    invoke-direct {p0, p1, p2, v4, v1}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_71
    return-void
.end method

.method public static reverseTransit(I)I
    .registers 2

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_e

    :goto_4
    return v0

    :sswitch_5
    const/16 v0, 0x2002

    goto :goto_4

    :sswitch_8
    const/16 v0, 0x1001

    goto :goto_4

    :sswitch_b
    const/16 v0, 0x1003

    goto :goto_4

    :sswitch_data_e
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_b
        0x2002 -> :sswitch_8
    .end sparse-switch
.end method

.method private scheduleCommit()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v2, :cond_37

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    :goto_d
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    const/4 v0, 0x1

    :goto_1b
    if-nez v1, :cond_1f

    if-eqz v0, :cond_35

    :cond_1f
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_3b

    :cond_35
    monitor-exit p0

    return-void

    :cond_37
    const/4 v1, 0x0

    goto :goto_d

    :cond_39
    const/4 v0, 0x0

    goto :goto_1b

    :catchall_3b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V
    .registers 4

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-static {p1, p2}, Landroid/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v0, p1}, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_13
    return-void
.end method

.method private static setRetaining(Landroid/app/FragmentManagerNonConfig;)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/app/Fragment;->mRetaining:Z

    goto :goto_d

    :cond_1d
    invoke-virtual {p0}, Landroid/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManagerNonConfig;

    invoke-static {v0}, Landroid/app/FragmentManagerImpl;->setRetaining(Landroid/app/FragmentManagerNonConfig;)V

    goto :goto_27

    :cond_37
    return-void
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return v0

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {p1}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v0

    :cond_16
    return v0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .registers 9

    const/4 v5, 0x0

    const-string/jumbo v3, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/LogWriter;

    const-string/jumbo v3, "FragmentManager"

    const/4 v4, 0x6

    invoke-direct {v1, v4, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/16 v3, 0x400

    invoke-direct {v2, v1, v5, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v3, :cond_46

    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Activity state:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_28
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    const-string/jumbo v4, "  "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v2, v5}, Landroid/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_34} :catch_38

    :goto_34
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    throw p1

    :catch_38
    move-exception v0

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    :cond_46
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Fragment manager state:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4f
    const-string/jumbo v3, "  "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v2, v4}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_59} :catch_5a

    goto :goto_34

    :catch_5a
    move-exception v0

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34
.end method

.method public static transitToStyleIndex(IZ)I
    .registers 3

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_18

    :goto_4
    return v0

    :sswitch_5
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    goto :goto_4

    :sswitch_b
    if-eqz p1, :cond_f

    const/4 v0, 0x2

    goto :goto_4

    :cond_f
    const/4 v0, 0x3

    goto :goto_4

    :sswitch_11
    if-eqz p1, :cond_15

    const/4 v0, 0x4

    goto :goto_4

    :cond_15
    const/4 v0, 0x5

    goto :goto_4

    nop

    :sswitch_data_18
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_11
        0x2002 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/app/BackStackRecord;)V
    .registers 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFragment(Landroid/app/Fragment;Z)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_6b

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_4c
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_6c

    monitor-exit v1

    iput-boolean v4, p1, Landroid/app/Fragment;->mAdded:Z

    iput-boolean v3, p1, Landroid/app/Fragment;->mRemoving:Z

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_5c

    iput-boolean v3, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    :cond_5c
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_66

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_66

    iput-boolean v4, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_66
    if-eqz p2, :cond_6b

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    :cond_6b
    return-void

    :catchall_6c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allocBackStackIndex(Landroid/app/BackStackRecord;)I
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_4e

    :cond_d
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_18

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    :cond_18
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_47

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_92

    monitor-exit p0

    return v0

    :cond_4e
    :try_start_4e
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_8b

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_90
    .catchall {:try_start_4e .. :try_end_90} :catchall_92

    monitor-exit p0

    return v0

    :catchall_92
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback",
            "<*>;",
            "Landroid/app/FragmentContainer;",
            "Landroid/app/Fragment;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object p2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iput-object p3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->getTargetSdk()I

    move-result v0

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1f

    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mAllowOldReentrantBehavior:Z

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public attachFragment(Landroid/app/Fragment;)V
    .registers 6

    const/4 v3, 0x1

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_7f

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-nez v0, :cond_7f

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_6a

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_6d
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_80

    monitor-exit v1

    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_7f

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_7f

    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_7f
    return-void

    :catchall_80
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public beginTransaction()Landroid/app/FragmentTransaction;
    .registers 2

    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method completeShowHideFragment(Landroid/app/Fragment;)V
    .registers 10

    const/4 v7, 0x0

    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_31

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransition()I

    move-result v4

    iget-boolean v5, p1, Landroid/app/Fragment;->mHidden:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v6

    invoke-virtual {p0, p1, v4, v5, v6}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-boolean v4, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_5a

    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {p1, v7}, Landroid/app/Fragment;->setHideReplaced(Z)V

    :goto_29
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v4, v0}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_31
    :goto_31
    iget-boolean v4, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v4, :cond_40

    iget-boolean v4, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_40

    iget-boolean v4, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_40

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_40
    iput-boolean v7, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    iget-boolean v4, p1, Landroid/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v4}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    return-void

    :cond_48
    iget-object v2, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_51

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_51
    new-instance v4, Landroid/app/FragmentManagerImpl$3;

    invoke-direct {v4, p0, v2, v1, p1}, Landroid/app/FragmentManagerImpl$3;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_29

    :cond_5a
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29

    :cond_60
    iget-boolean v4, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_7d

    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7d

    const/16 v3, 0x8

    :goto_6e
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {p1, v7}, Landroid/app/Fragment;->setHideReplaced(Z)V

    goto :goto_31

    :cond_7d
    const/4 v3, 0x0

    goto :goto_6e
.end method

.method public detachFragment(Landroid/app/Fragment;)V
    .registers 6

    const/4 v3, 0x1

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_5d

    iput-boolean v3, p1, Landroid/app/Fragment;->mDetached:Z

    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_5d

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_47

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove from detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_4a
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_5e

    monitor-exit v1

    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_5a

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_5a

    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_5a
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    :cond_5d
    return-void

    :catchall_5e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dispatchActivityCreated()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ge v2, v4, :cond_7

    return v3

    :cond_7
    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_21

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_21

    return v4

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_24
    return v3
.end method

.method public dispatchCreate()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 9

    iget v4, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_7

    const/4 v4, 0x0

    return v4

    :cond_7
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_a
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_30

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_2d

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x1

    if-nez v2, :cond_2a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_30
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v4, :cond_55

    const/4 v1, 0x0

    :goto_35
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_55

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v2, :cond_4f

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_52

    :cond_4f
    invoke-virtual {v0}, Landroid/app/Fragment;->onDestroyOptionsMenu()V

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_55
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    return v3
.end method

.method public dispatchDestroy()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    return-void
.end method

.method public dispatchDestroyView()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    return-void
.end method

.method public dispatchLowMemory()V
    .registers 4

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/app/Fragment;->performLowMemory()V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_1a

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performMultiWindowModeChanged(Z)V

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 6

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_1a

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->performMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 8

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    instance-of v3, v2, Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_14

    check-cast v2, Landroid/app/FragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_14
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p3, :cond_32

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_32
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V
    .registers 8

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    instance-of v3, v2, Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_14

    check-cast v2, Landroid/app/FragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    :cond_14
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p3, :cond_32

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_32
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 8

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    instance-of v3, v2, Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_14

    check-cast v2, Landroid/app/FragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_14
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p3, :cond_32

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_32
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V
    .registers 7

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    instance-of v3, v2, Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_14

    check-cast v2, Landroid/app/FragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V

    :cond_14
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p2, :cond_32

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_32
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V
    .registers 7

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    instance-of v3, v2, Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_14

    check-cast v2, Landroid/app/FragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V

    :cond_14
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p2, :cond_32

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_32
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V
    .registers 7

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    instance-of v3, v2, Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_14

    check-cast v2, Landroid/app/FragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V

    :cond_14
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p2, :cond_32

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_32
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V
    .registers 8

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    instance-of v3, v2, Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_14

    check-cast v2, Landroid/app/FragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    :cond_14
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p3, :cond_32

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_32
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 8

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    instance-of v3, v2, Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_14

    check-cast v2, Landroid/app/FragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_14
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p3, :cond_32

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_32
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V
    .registers 7

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    instance-of v3, v2, Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_14

    check-cast v2, Landroid/app/FragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V

    :cond_14
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p2, :cond_32

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_32
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 8

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    instance-of v3, v2, Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_14

    check-cast v2, Landroid/app/FragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_14
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p3, :cond_32

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_32
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V
    .registers 7

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    instance-of v3, v2, Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_14

    check-cast v2, Landroid/app/FragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V

    :cond_14
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p2, :cond_32

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_32
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V
    .registers 7

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    instance-of v3, v2, Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_14

    check-cast v2, Landroid/app/FragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V

    :cond_14
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p2, :cond_32

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_32
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .registers 9

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    instance-of v3, v2, Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_14

    check-cast v2, Landroid/app/FragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, p3, v3}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_14
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p4, :cond_32

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_32
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1, p2, p3}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V
    .registers 7

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    instance-of v3, v2, Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_14

    check-cast v2, Landroid/app/FragmentManagerImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V

    :cond_14
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz p2, :cond_32

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_32
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v3, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    goto :goto_1a

    :cond_3a
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ge v2, v4, :cond_7

    return v3

    :cond_7
    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_21

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_21

    return v4

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_24
    return v3
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 6

    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_6

    return-void

    :cond_6
    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    return-void
.end method

.method public dispatchPause()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_1a

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performPictureInPictureModeChanged(Z)V

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 6

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_1a

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->performPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7

    iget v3, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_7

    const/4 v3, 0x0

    return v3

    :cond_7
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_9
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_22

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_25
    return v2
.end method

.method public dispatchResume()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    return-void
.end method

.method public dispatchStart()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    return-void
.end method

.method public dispatchStop()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    return-void
.end method

.method public dispatchTrimMemory(I)V
    .registers 5

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performTrimMemory(I)V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method doPendingDeferredStart()V
    .registers 5

    iget-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v3, :cond_2e

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_6
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_26

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_23

    iget-object v3, v0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v3, :cond_23

    iget-object v3, v0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    if-nez v2, :cond_2e

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    :cond_2e
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v6, :cond_62

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_62

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v0, :cond_62

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v2, :cond_5f

    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_62
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_74
    if-ge v3, v0, :cond_9a

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    :cond_9a
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v6, :cond_d6

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_b0
    if-ge v3, v0, :cond_d6

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b0

    :cond_d6
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_115

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_115

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_ec
    if-ge v3, v0, :cond_115

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_ec

    :cond_115
    monitor-enter p0

    :try_start_116
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_14e

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14e

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_12c
    if-ge v3, v0, :cond_14e

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12c

    :cond_14e
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_170

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_170

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_170
    .catchall {:try_start_116 .. :try_end_170} :catchall_1a9

    :cond_170
    monitor-exit p0

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_1ac

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1ac

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_187
    if-ge v3, v0, :cond_1ac

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/FragmentManagerImpl$OpGenerator;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_187

    :catchall_1a9
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_1ac
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mHost="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v6, :cond_1e3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mParent="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1e3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v6, :cond_219

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    :cond_219
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v6, :cond_22b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_22b
    return-void
.end method

.method public enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V
    .registers 5

    if-nez p2, :cond_5

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_1b

    if-nez v0, :cond_1e

    :cond_e
    if-eqz p2, :cond_12

    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_29

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    :cond_29
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->scheduleCommit()V
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_1b

    monitor-exit p0

    return-void
.end method

.method ensureInflatedFragmentView(Landroid/app/Fragment;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, p1, Landroid/app/Fragment;->mPerformedCreateView:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3c

    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v3, v1}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3c

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2e

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2e
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_3c
    return-void
.end method

.method public execPendingActions()Z
    .registers 5

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroid/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_22

    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    :try_start_11
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    const/4 v0, 0x1

    goto :goto_5

    :catchall_1d
    move-exception v1

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    throw v1

    :cond_22
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    return v0
.end method

.method public execSingleAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V
    .registers 5

    if-eqz p2, :cond_b

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-direct {p0, p2}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Landroid/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    :try_start_1b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_2c

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    :cond_25
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    return-void

    :catchall_2c
    move-exception v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    throw v0
.end method

.method public executePendingTransactions()Z
    .registers 2

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->forcePostponedTransactions()V

    return v0
.end method

.method public findFragmentById(I)Landroid/app/Fragment;
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_9
    if-ltz v1, :cond_1d

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_1a

    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_1a

    return-object v0

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_1d
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_29
    if-ltz v1, :cond_3d

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_3a

    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_3a

    return-object v0

    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    :cond_3d
    return-object v3
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_23

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_b
    if-ltz v1, :cond_23

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_20

    iget-object v2, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    return-object v0

    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_23
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v2, :cond_49

    if-eqz p1, :cond_49

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_31
    if-ltz v1, :cond_49

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_46

    iget-object v2, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    return-object v0

    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    :cond_49
    return-object v3
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v2, :cond_25

    if-eqz p1, :cond_25

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_f
    if-ltz v1, :cond_25

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_22

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_22

    return-object v0

    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_25
    return-object v3
.end method

.method public freeBackStackIndex(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    :cond_12
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_30

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    monitor-exit p0

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;
    .registers 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .registers 2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;
    .registers 8

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_9

    return-object v3

    :cond_9
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-nez v0, :cond_3a

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_3a
    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_b
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_18

    monitor-exit v1

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .registers 1

    return-object p0
.end method

.method public getPrimaryNavigationFragment()Landroid/app/Fragment;
    .registers 2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    return-object v0
.end method

.method getTargetSdk()I
    .registers 4

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v2, :cond_15

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_15

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v2

    :cond_15
    const/4 v2, 0x0

    return v2
.end method

.method public hideFragment(Landroid/app/Fragment;)V
    .registers 5

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    iget-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    :cond_2b
    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_e
.end method

.method public isDestroyed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method isStateAtLeast(I)Z
    .registers 3

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isStateSaved()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    return v0
.end method

.method loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;
    .registers 14

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v5

    invoke-virtual {p1, p2, p3, v5}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_d

    return-object v2

    :cond_d
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v6

    invoke-static {v5, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_24

    return-object v1

    :cond_24
    if-nez p2, :cond_27

    return-object v8

    :cond_27
    invoke-static {p2, p3}, Landroid/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v4

    if-gez v4, :cond_2e

    return-object v8

    :cond_2e
    if-nez p4, :cond_3e

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v5

    if-eqz v5, :cond_3e

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    :cond_3e
    if-nez p4, :cond_41

    return-object v8

    :cond_41
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/internal/R$styleable;->FragmentAnimation:[I

    invoke-virtual {v5, p4, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v0, :cond_57

    return-object v8

    :cond_57
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    return-object v5
.end method

.method makeActive(Landroid/app/Fragment;)V
    .registers 5

    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_1b

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    :cond_1b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_40

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-void
.end method

.method makeInactive(Landroid/app/Fragment;)V
    .registers 5

    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Fragment;->initState()V

    return-void
.end method

.method moveFragmentToExpectedState(Landroid/app/Fragment;)V
    .registers 15

    const/4 v12, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    iget-boolean v0, p1, Landroid/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_15
    :goto_15
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransition()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_70

    invoke-direct {p0, p1}, Landroid/app/FragmentManagerImpl;->findFragmentUnder(Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v8

    if-eqz v8, :cond_44

    iget-object v10, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v7, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    if-ge v11, v9, :cond_44

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_44
    iget-boolean v0, p1, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_70

    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_70

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    iput-boolean v5, p1, Landroid/app/Fragment;->mIsNewlyAdded:Z

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransition()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v1

    invoke-virtual {p0, p1, v0, v12, v1}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v6

    if-eqz v6, :cond_70

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0, v6}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    :cond_70
    iget-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_77

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->completeShowHideFragment(Landroid/app/Fragment;)V

    :cond_77
    return-void

    :cond_78
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_15
.end method

.method moveToState(IZ)V
    .registers 11

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v5, :cond_10

    if-eqz p1, :cond_10

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "No activity"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_10
    if-nez p2, :cond_17

    iget v5, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ne v5, p1, :cond_17

    return-void

    :cond_17
    iput p1, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v5, :cond_8b

    const/4 v2, 0x0

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v4, :cond_40

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/app/Fragment;)V

    iget-object v5, v0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v5, :cond_3d

    iget-object v5, v0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v5

    or-int/2addr v2, v5

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_40
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_47
    if-ge v1, v3, :cond_72

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_6f

    iget-boolean v5, v0, Landroid/app/Fragment;->mRemoving:Z

    if-nez v5, :cond_5b

    iget-boolean v5, v0, Landroid/app/Fragment;->mDetached:Z

    if-eqz v5, :cond_6f

    :cond_5b
    iget-boolean v5, v0, Landroid/app/Fragment;->mIsNewlyAdded:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6f

    invoke-virtual {p0, v0}, Landroid/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/app/Fragment;)V

    iget-object v5, v0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v5, :cond_6f

    iget-object v5, v0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v5

    or-int/2addr v2, v5

    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_72
    if-nez v2, :cond_77

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    :cond_77
    iget-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v5, :cond_8b

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v5, :cond_8b

    iget v5, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_8b

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    iput-boolean v7, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_8b
    return-void
.end method

.method moveToState(Landroid/app/Fragment;)V
    .registers 8

    const/4 v3, 0x0

    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    return-void
.end method

.method moveToState(Landroid/app/Fragment;IIIZ)V
    .registers 16

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_e

    :cond_a
    const/4 v0, 0x1

    if-le p2, v0, :cond_e

    const/4 p2, 0x1

    :cond_e
    iget-boolean v0, p1, Landroid/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_21

    iget v0, p1, Landroid/app/Fragment;->mState:I

    if-le p2, v0, :cond_21

    iget v0, p1, Landroid/app/Fragment;->mState:I

    if-nez v0, :cond_3d

    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 p2, 0x1

    :cond_21
    :goto_21
    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_2e

    iget v0, p1, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2e

    const/4 v0, 0x3

    if-le p2, v0, :cond_2e

    const/4 p2, 0x3

    :cond_2e
    iget v0, p1, Landroid/app/Fragment;->mState:I

    if-gt v0, p2, :cond_352

    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_40

    iget-boolean v0, p1, Landroid/app/Fragment;->mInLayout:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_40

    return-void

    :cond_3d
    iget p2, p1, Landroid/app/Fragment;->mState:I

    goto :goto_21

    :cond_40
    invoke-virtual {p1}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_56

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    invoke-virtual {p1}, Landroid/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    :cond_56
    iget v0, p1, Landroid/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_4d6

    :cond_5b
    :goto_5b
    iget v0, p1, Landroid/app/Fragment;->mState:I

    if-eq v0, p2, :cond_9a

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveToState: Fragment state for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " not updated inline; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "expected state "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " found "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/app/Fragment;->mState:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p1, Landroid/app/Fragment;->mState:I

    :cond_9a
    return-void

    :pswitch_9b
    if-lez p2, :cond_1cc

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_bb

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveto CREATED: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_fc

    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget-object v0, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v0, :cond_e5

    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:target_req_state"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/app/Fragment;->mTargetRequestCode:I

    :cond_e5
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v1, "android:user_visible_hint"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    iget-boolean v0, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_fc

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    const/4 v0, 0x3

    if-le p2, v0, :cond_fc

    const/4 p2, 0x3

    :cond_fc
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v0, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    iput-object v0, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14e

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    :goto_10c
    iput-object v0, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v0, :cond_166

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v1, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v1, v1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eq v0, v1, :cond_155

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " declared target fragment "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14e
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;

    move-result-object v0

    goto :goto_10c

    :cond_155
    iget-object v0, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v0, v0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_166

    iget-object v1, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    :cond_166
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1a1

    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " did not call through to super.onAttach()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a1
    iget-object v0, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    if-nez v0, :cond_334

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/app/FragmentHostCallback;->onAttachFragment(Landroid/app/Fragment;)V

    :goto_1aa
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    iget-boolean v0, p1, Landroid/app/Fragment;->mIsCreated:Z

    if-nez v0, :cond_33b

    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    :goto_1c9
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    :cond_1cc
    :pswitch_1cc
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->ensureInflatedFragmentView(Landroid/app/Fragment;)V

    const/4 v0, 0x1

    if-le p2, v0, :cond_2d6

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1f0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f0
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_2bf

    const/4 v2, 0x0

    iget v0, p1, Landroid/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_275

    iget v0, p1, Landroid/app/Fragment;->mContainerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_221

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot create fragment "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " for a container view with no id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_221
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iget v1, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_275

    iget-boolean v0, p1, Landroid/app/Fragment;->mRestored:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_275

    :try_start_233
    invoke-virtual {p1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_23c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_233 .. :try_end_23c} :catch_346

    move-result-object v9

    :goto_23d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No view found for id 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ") for fragment "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_275
    iput-object v2, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2, v1}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2bf

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    if-eqz v2, :cond_296

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_296
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2a1

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2a1
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v0, v1, v4}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_34f

    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_34c

    const/4 v0, 0x1

    :goto_2bd
    iput-boolean v0, p1, Landroid/app/Fragment;->mIsNewlyAdded:Z

    :cond_2bf
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2d3

    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    :cond_2d3
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_2d6
    :pswitch_2d6
    const/4 v0, 0x2

    if-le p2, v0, :cond_2dc

    const/4 v0, 0x3

    iput v0, p1, Landroid/app/Fragment;->mState:I

    :cond_2dc
    :pswitch_2dc
    const/4 v0, 0x3

    if-le p2, v0, :cond_304

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2fd

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveto STARTED: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2fd
    invoke-virtual {p1}, Landroid/app/Fragment;->performStart()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V

    :cond_304
    :pswitch_304
    const/4 v0, 0x4

    if-le p2, v0, :cond_5b

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_325

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveto RESUMED: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_325
    invoke-virtual {p1}, Landroid/app/Fragment;->performResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_5b

    :cond_334
    iget-object v0, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onAttachFragment(Landroid/app/Fragment;)V

    goto/16 :goto_1aa

    :cond_33b
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    const/4 v0, 0x1

    iput v0, p1, Landroid/app/Fragment;->mState:I

    goto/16 :goto_1c9

    :catch_346
    move-exception v7

    const-string/jumbo v9, "unknown"

    goto/16 :goto_23d

    :cond_34c
    const/4 v0, 0x0

    goto/16 :goto_2bd

    :cond_34f
    const/4 v0, 0x0

    goto/16 :goto_2bd

    :cond_352
    iget v0, p1, Landroid/app/Fragment;->mState:I

    if-le v0, p2, :cond_5b

    iget v0, p1, Landroid/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_4e4

    goto/16 :goto_5b

    :cond_35d
    :goto_35d
    :pswitch_35d
    const/4 v0, 0x1

    if-ge p2, v0, :cond_5b

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_375

    invoke-virtual {p1}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_375

    invoke-virtual {p1}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    :cond_375
    invoke-virtual {p1}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_48c

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setStateAfterAnimating(I)V

    const/4 p2, 0x1

    goto/16 :goto_5b

    :pswitch_381
    const/4 v0, 0x5

    if-ge p2, v0, :cond_3a9

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3a2

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movefrom RESUMED: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a2
    invoke-virtual {p1}, Landroid/app/Fragment;->performPause()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V

    :cond_3a9
    :pswitch_3a9
    const/4 v0, 0x4

    if-ge p2, v0, :cond_3d1

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3ca

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movefrom STARTED: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3ca
    invoke-virtual {p1}, Landroid/app/Fragment;->performStop()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V

    :cond_3d1
    :pswitch_3d1
    const/4 v0, 0x2

    if-ge p2, v0, :cond_35d

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3f2

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f2
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_405

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_405

    iget-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_405

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    :cond_405
    invoke-virtual {p1}, Landroid/app/Fragment;->performDestroyView()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_481

    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_481

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->getTargetSdk()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_428

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_428
    const/4 v6, 0x0

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lez v0, :cond_44b

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_44b

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_44b

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_44b

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v6

    :cond_44b
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    if-eqz v6, :cond_47a

    iget-object v2, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    move-object v8, p1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    invoke-virtual {p1, v6}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setStateAfterAnimating(I)V

    new-instance v0, Landroid/app/FragmentManagerImpl$2;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/FragmentManagerImpl$2;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0, v6}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    :cond_47a
    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_481
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mInLayout:Z

    goto/16 :goto_35d

    :cond_48c
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_4aa

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movefrom CREATED: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4aa
    iget-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_4c7

    invoke-virtual {p1}, Landroid/app/Fragment;->performDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V

    :goto_4b5
    invoke-virtual {p1}, Landroid/app/Fragment;->performDetach()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V

    if-nez p5, :cond_5b

    iget-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_4cb

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeInactive(Landroid/app/Fragment;)V

    goto/16 :goto_5b

    :cond_4c7
    const/4 v0, 0x0

    iput v0, p1, Landroid/app/Fragment;->mState:I

    goto :goto_4b5

    :cond_4cb
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    goto/16 :goto_5b

    :pswitch_data_4d6
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_1cc
        :pswitch_2d6
        :pswitch_2dc
        :pswitch_304
    .end packed-switch

    :pswitch_data_4e4
    .packed-switch 0x1
        :pswitch_35d
        :pswitch_3d1
        :pswitch_3d1
        :pswitch_3a9
        :pswitch_381
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .registers 5

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_1f

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/app/Fragment;->noteStateNotSaved()V

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1f
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 16

    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    const-string/jumbo v0, "class"

    const/4 v2, 0x0

    invoke-interface {p4, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/android/internal/R$styleable;->Fragment:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    if-nez v8, :cond_20

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_20
    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_65

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    :goto_34
    const/4 v0, -0x1

    if-ne v7, v0, :cond_67

    const/4 v0, -0x1

    if-ne v9, v0, :cond_67

    if-nez v10, :cond_67

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Must specify unique android:id, android:tag, or have a parent with"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    const/4 v7, 0x0

    goto :goto_34

    :cond_67
    const/4 v0, -0x1

    if-eq v9, v0, :cond_11a

    invoke-virtual {p0, v9}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    :goto_6e
    if-nez v1, :cond_76

    if-eqz v10, :cond_76

    invoke-virtual {p0, v10}, Landroid/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    :cond_76
    if-nez v1, :cond_7f

    const/4 v0, -0x1

    if-eq v7, v0, :cond_7f

    invoke-virtual {p0, v7}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    :cond_7f
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_b7

    const-string/jumbo v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateView: id=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " existing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    if-nez v1, :cond_11f

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v8, v2}, Landroid/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v9, :cond_11d

    move v0, v9

    :goto_c6
    iput v0, v1, Landroid/app/Fragment;->mFragmentId:I

    iput v7, v1, Landroid/app/Fragment;->mContainerId:I

    iput-object v10, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/app/Fragment;->mInLayout:Z

    iput-object p0, v1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v0, v1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v2}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    :cond_e4
    :goto_e4
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_186

    iget-boolean v0, v1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_186

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    :goto_f5
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_18b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " did not create a view."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11a
    const/4 v1, 0x0

    goto/16 :goto_6e

    :cond_11d
    move v0, v7

    goto :goto_c6

    :cond_11f
    iget-boolean v0, v1, Landroid/app/Fragment;->mInLayout:Z

    if-eqz v0, :cond_16e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with another fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16e
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/app/Fragment;->mInLayout:Z

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v0, v1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-boolean v0, v1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_e4

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v2}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_e4

    :cond_186
    invoke-virtual {p0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    goto/16 :goto_f5

    :cond_18b
    if-eqz v9, :cond_192

    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    :cond_192
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19f

    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_19f
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public performPendingDeferredStart(Landroid/app/Fragment;)V
    .registers 8

    const/4 v3, 0x0

    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    return-void

    :cond_d
    iput-boolean v3, p1, Landroid/app/Fragment;->mDeferStart:Z

    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    :cond_18
    return-void
.end method

.method public popBackStack()V
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v3}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    return-void
.end method

.method public popBackStack(II)V
    .registers 6

    const/4 v2, 0x0

    if-gez p1, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v2}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    return-void
.end method

.method public popBackStackImmediate()Z
    .registers 4

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .registers 6

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    if-gez p1, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .registers 4

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v4, :cond_7

    return v5

    :cond_7
    if-nez p3, :cond_2d

    if-gez p4, :cond_2d

    and-int/lit8 v4, p5, 0x1

    if-nez v4, :cond_2d

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    if-gez v3, :cond_1a

    return v5

    :cond_1a
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BackStackRecord;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    return v6

    :cond_2d
    const/4 v2, -0x1

    if-nez p3, :cond_32

    if-ltz p4, :cond_81

    :cond_32
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_3a
    if-ltz v2, :cond_50

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackStackRecord;

    if-eqz p3, :cond_53

    invoke-virtual {v0}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    :cond_50
    if-gez v2, :cond_5c

    return v5

    :cond_53
    if-ltz p4, :cond_59

    iget v4, v0, Landroid/app/BackStackRecord;->mIndex:I

    if-eq p4, v4, :cond_50

    :cond_59
    add-int/lit8 v2, v2, -0x1

    goto :goto_3a

    :cond_5c
    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_81

    add-int/lit8 v2, v2, -0x1

    :goto_62
    if-ltz v2, :cond_81

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackStackRecord;

    if-eqz p3, :cond_78

    invoke-virtual {v0}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    :cond_78
    if-ltz p4, :cond_81

    iget v4, v0, Landroid/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_81

    :cond_7e
    add-int/lit8 v2, v2, -0x1

    goto :goto_62

    :cond_81
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_8c

    return v5

    :cond_8c
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_94
    if-le v1, v2, :cond_2c

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BackStackRecord;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_94
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V
    .registers 7

    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_27

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_27
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .registers 6

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeFragment(Landroid/app/Fragment;)V
    .registers 7

    const/4 v4, 0x1

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2c

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iget-boolean v1, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_38

    if-eqz v0, :cond_50

    :cond_38
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_3b
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_51

    monitor-exit v2

    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_4b

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_4b

    iput-boolean v4, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_4b
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/app/Fragment;->mAdded:Z

    iput-boolean v4, p1, Landroid/app/Fragment;->mRemoving:Z

    :cond_50
    return-void

    :catchall_51
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method reportBackStackChanged()V
    .registers 3

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V
    .registers 18

    if-nez p1, :cond_3

    return-void

    :cond_3
    move-object/from16 v5, p1

    check-cast v5, Landroid/app/FragmentManagerState;

    iget-object v12, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    if-nez v12, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x0

    if-eqz p2, :cond_b7

    invoke-virtual/range {p2 .. p2}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v2

    if-eqz v10, :cond_57

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    :goto_1d
    const/4 v7, 0x0

    :goto_1e
    if-ge v7, v3, :cond_b7

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    sget-boolean v12, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_44

    const-string/jumbo v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreAllState: re-attaching retained "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const/4 v8, 0x0

    :goto_45
    iget-object v12, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v12, v12

    if-ge v8, v12, :cond_59

    iget-object v12, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v12, v12, v8

    iget v12, v12, Landroid/app/FragmentState;->mIndex:I

    iget v13, v4, Landroid/app/Fragment;->mIndex:I

    if-eq v12, v13, :cond_59

    add-int/lit8 v8, v8, 0x1

    goto :goto_45

    :cond_57
    const/4 v3, 0x0

    goto :goto_1d

    :cond_59
    iget-object v12, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v12, v12

    if-ne v8, v12, :cond_7c

    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Could not find active fragment with index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v4, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v12}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_7c
    iget-object v12, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v6, v12, v8

    iput-object v4, v6, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    const/4 v12, 0x0

    iput-object v12, v4, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const/4 v12, 0x0

    iput v12, v4, Landroid/app/Fragment;->mBackStackNesting:I

    const/4 v12, 0x0

    iput-boolean v12, v4, Landroid/app/Fragment;->mInLayout:Z

    const/4 v12, 0x0

    iput-boolean v12, v4, Landroid/app/Fragment;->mAdded:Z

    const/4 v12, 0x0

    iput-object v12, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget-object v12, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v12, :cond_b3

    iget-object v12, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v13, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v13}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v12, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v13, "android:view_state"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v12

    iput-object v12, v4, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iget-object v12, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v12, v4, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_b3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1e

    :cond_b7
    new-instance v12, Landroid/util/SparseArray;

    iget-object v13, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v13, v13

    invoke-direct {v12, v13}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v12, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v7, 0x0

    :goto_c2
    iget-object v12, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v12, v12

    if-ge v7, v12, :cond_11c

    iget-object v12, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v6, v12, v7

    if-eqz v6, :cond_119

    const/4 v1, 0x0

    if-eqz v2, :cond_dc

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_dc

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManagerNonConfig;

    :cond_dc
    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v13, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iget-object v14, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v6, v12, v13, v14, v1}, Landroid/app/FragmentState;->instantiate(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;Landroid/app/FragmentManagerNonConfig;)Landroid/app/Fragment;

    move-result-object v4

    sget-boolean v12, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_10f

    const-string/jumbo v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreAllState: active #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10f
    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v13, v4, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v12, v13, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v12, 0x0

    iput-object v12, v6, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    :cond_119
    add-int/lit8 v7, v7, 0x1

    goto :goto_c2

    :cond_11c
    if-eqz p2, :cond_174

    invoke-virtual/range {p2 .. p2}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_172

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    :goto_128
    const/4 v7, 0x0

    :goto_129
    if-ge v7, v3, :cond_174

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    iget v12, v4, Landroid/app/Fragment;->mTargetIndex:I

    if-ltz v12, :cond_16f

    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v13, v4, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/Fragment;

    iput-object v12, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget-object v12, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-nez v12, :cond_16f

    const-string/jumbo v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Re-attaching retained fragment "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " target no longer exists: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v4, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    iput-object v12, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    :cond_16f
    add-int/lit8 v7, v7, 0x1

    goto :goto_129

    :cond_172
    const/4 v3, 0x0

    goto :goto_128

    :cond_174
    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    iget-object v12, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    if-eqz v12, :cond_1fd

    const/4 v7, 0x0

    :goto_17e
    iget-object v12, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v12, v12

    if-ge v7, v12, :cond_1fd

    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v13, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v13, v13, v7

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    if-nez v4, :cond_1b1

    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "No instantiated fragment for index #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v14, v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v12}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_1b1
    const/4 v12, 0x1

    iput-boolean v12, v4, Landroid/app/Fragment;->mAdded:Z

    sget-boolean v12, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_1dd

    const-string/jumbo v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreAllState: added #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1dd
    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1ee

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "Already added!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1ee
    iget-object v13, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v13

    :try_start_1f1
    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f6
    .catchall {:try_start_1f1 .. :try_end_1f6} :catchall_1fa

    monitor-exit v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_17e

    :catchall_1fa
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_1fd
    iget-object v12, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    if-eqz v12, :cond_27b

    new-instance v12, Ljava/util/ArrayList;

    iget-object v13, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v13, v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    const/4 v7, 0x0

    :goto_20c
    iget-object v12, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v12, v12

    if-ge v7, v12, :cond_27e

    iget-object v12, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    aget-object v12, v12, v7

    invoke-virtual {v12, p0}, Landroid/app/BackStackState;->instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;

    move-result-object v0

    sget-boolean v12, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_26a

    const-string/jumbo v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreAllState: back stack #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " (index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/util/LogWriter;

    const-string/jumbo v12, "FragmentManager"

    const/4 v13, 0x2

    invoke-direct {v9, v13, v12}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    new-instance v11, Lcom/android/internal/util/FastPrintWriter;

    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-direct {v11, v9, v12, v13}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    const-string/jumbo v12, "  "

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v11, v13}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v11}, Ljava/io/PrintWriter;->flush()V

    :cond_26a
    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v12, v0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v12, :cond_278

    iget v12, v0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v12, v0}, Landroid/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/app/BackStackRecord;)V

    :cond_278
    add-int/lit8 v7, v7, 0x1

    goto :goto_20c

    :cond_27b
    const/4 v12, 0x0

    iput-object v12, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    :cond_27e
    iget v12, v5, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    if-ltz v12, :cond_28e

    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v13, v5, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/Fragment;

    iput-object v12, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    :cond_28e
    iget v12, v5, Landroid/app/FragmentManagerState;->mNextFragmentIndex:I

    iput v12, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    return-void
.end method

.method retainNonConfig()Landroid/app/FragmentManagerNonConfig;
    .registers 2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    invoke-static {v0}, Landroid/app/FragmentManagerImpl;->setRetaining(Landroid/app/FragmentManagerNonConfig;)V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .registers 14

    const/4 v12, 0x0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->forcePostponedTransactions()V

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    iput-object v12, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v9, :cond_1b

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-gtz v9, :cond_1c

    :cond_1b
    return-object v12

    :cond_1c
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [Landroid/app/FragmentState;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_26
    if-ge v8, v0, :cond_ff

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    if-eqz v4, :cond_f6

    iget v9, v4, Landroid/app/Fragment;->mIndex:I

    if-gez v9, :cond_5f

    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_5f
    const/4 v7, 0x1

    new-instance v6, Landroid/app/FragmentState;

    invoke-direct {v6, v4}, Landroid/app/FragmentState;-><init>(Landroid/app/Fragment;)V

    aput-object v6, v1, v8

    iget v9, v4, Landroid/app/Fragment;->mState:I

    if-lez v9, :cond_fa

    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_fa

    invoke-virtual {p0, v4}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v9, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v9, :cond_cb

    iget-object v9, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v9, v9, Landroid/app/Fragment;->mIndex:I

    if-gez v9, :cond_a8

    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has target not in fragment manager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_a8
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_b3

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_b3
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v10, "android:target_state"

    iget-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {p0, v9, v10, v11}, Landroid/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    iget v9, v4, Landroid/app/Fragment;->mTargetRequestCode:I

    if-eqz v9, :cond_cb

    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v10, "android:target_req_state"

    iget v11, v4, Landroid/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_cb
    :goto_cb
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_f6

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Saved state of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_26

    :cond_fa
    iget-object v9, v4, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_cb

    :cond_ff
    if-nez v7, :cond_10f

    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_10e

    const-string/jumbo v9, "FragmentManager"

    const-string/jumbo v10, "saveAllState: no fragments!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10e
    return-object v12

    :cond_10f
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18f

    new-array v2, v0, [I

    const/4 v8, 0x0

    :goto_11c
    if-ge v8, v0, :cond_18f

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Fragment;

    iget v9, v9, Landroid/app/Fragment;->mIndex:I

    aput v9, v2, v8

    aget v9, v2, v8

    if-gez v9, :cond_15d

    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v2, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_15d
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_18c

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveAllState: adding fragment #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18c
    add-int/lit8 v8, v8, 0x1

    goto :goto_11c

    :cond_18f
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v9, :cond_1e1

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e1

    new-array v3, v0, [Landroid/app/BackStackState;

    const/4 v8, 0x0

    :goto_19e
    if-ge v8, v0, :cond_1e1

    new-instance v10, Landroid/app/BackStackState;

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/BackStackRecord;

    invoke-direct {v10, p0, v9}, Landroid/app/BackStackState;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V

    aput-object v10, v3, v8

    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_1de

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveAllState: adding back stack #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1de
    add-int/lit8 v8, v8, 0x1

    goto :goto_19e

    :cond_1e1
    new-instance v5, Landroid/app/FragmentManagerState;

    invoke-direct {v5}, Landroid/app/FragmentManagerState;-><init>()V

    iput-object v1, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    iput-object v2, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    iput-object v3, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    iget v9, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v9, v5, Landroid/app/FragmentManagerState;->mNextFragmentIndex:I

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    if-eqz v9, :cond_1fa

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    iget v9, v9, Landroid/app/Fragment;->mIndex:I

    iput v9, v5, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    :cond_1fa
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->saveNonConfig()V

    return-object v5
.end method

.method saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_d

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    :cond_d
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    iput-object v3, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    :cond_24
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2b

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    :cond_2b
    iget-object v1, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_3e

    if-nez v0, :cond_36

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_36
    const-string/jumbo v1, "android:view_state"

    iget-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_3e
    iget-boolean v1, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_51

    if-nez v0, :cond_49

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_49
    const-string/jumbo v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_51
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;
    .registers 7

    const/4 v1, 0x0

    iget v2, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v2, :cond_28

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not currently in the FragmentManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_28
    iget v2, p1, Landroid/app/Fragment;->mState:I

    if-lez v2, :cond_38

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_37

    new-instance v1, Landroid/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    :cond_37
    return-object v1

    :cond_38
    return-object v1
.end method

.method saveFragmentViewState(Landroid/app/Fragment;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_27

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    :goto_11
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_26

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    :cond_26
    return-void

    :cond_27
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_11
.end method

.method saveNonConfig()V
    .registers 11

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v6, :cond_82

    const/4 v4, 0x0

    :goto_8
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_82

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    if-eqz v2, :cond_7f

    iget-boolean v6, v2, Landroid/app/Fragment;->mRetainInstance:Z

    if-eqz v6, :cond_50

    if-nez v3, :cond_25

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v2, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v6, :cond_75

    iget-object v6, v2, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    :goto_30
    iput v6, v2, Landroid/app/Fragment;->mTargetIndex:I

    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_50

    const-string/jumbo v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retainNonConfig: keeping retained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    iget-object v6, v2, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v6, :cond_77

    iget-object v6, v2, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v6}, Landroid/app/FragmentManagerImpl;->saveNonConfig()V

    iget-object v6, v2, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v6, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    :goto_5d
    if-nez v1, :cond_7a

    if-eqz v0, :cond_7a

    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_6d
    if-ge v5, v4, :cond_7a

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    :cond_75
    const/4 v6, -0x1

    goto :goto_30

    :cond_77
    iget-object v0, v2, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    goto :goto_5d

    :cond_7a
    if-eqz v1, :cond_7f

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_82
    if-nez v3, :cond_89

    if-nez v1, :cond_89

    iput-object v9, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    :goto_88
    return-void

    :cond_89
    new-instance v6, Landroid/app/FragmentManagerNonConfig;

    invoke-direct {v6, v3, v1}, Landroid/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v6, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    goto :goto_88
.end method

.method public setBackStackIndex(ILandroid/app/BackStackRecord;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    :cond_c
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_44

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_3d

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_b0

    :goto_42
    monitor-exit p0

    return-void

    :cond_44
    :goto_44
    if-ge v0, p1, :cond_81

    :try_start_46
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_57

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    :cond_57
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_75

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_81
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_aa

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_af
    .catchall {:try_start_46 .. :try_end_af} :catchall_b0

    goto :goto_42

    :catchall_b0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setPrimaryNavigationFragment(Landroid/app/Fragment;)V
    .registers 5

    if-eqz p1, :cond_3b

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_16

    iget-object v0, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eq v0, p0, :cond_3b

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    return-void
.end method

.method public showFragment(Landroid/app/Fragment;)V
    .registers 5

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    iget-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    :cond_2b
    return-void
.end method

.method startPendingDeferredFragments()V
    .registers 4

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v2, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_1b

    invoke-virtual {p0, v0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_27
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_32
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_27
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .registers 6

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    :goto_a
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_1f

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_22

    :cond_1d
    monitor-exit v3

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method
