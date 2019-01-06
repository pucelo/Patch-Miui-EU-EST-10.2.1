.class public Lcom/miui/systemui/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;,
        Lcom/miui/systemui/support/v4/app/Fragment$InstantiationException;,
        Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;,
        Lcom/miui/systemui/support/v4/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field private static final sClassMap:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/systemui/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

.field mChildNonConfig:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mIsNewlyAdded:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mParentFragment:Lcom/miui/systemui/support/v4/app/Fragment;

.field mPerformedCreateView:Z

.field mPostponedAlpha:F

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->callStartTransitionListener()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/miui/systemui/support/v4/app/Fragment;->sClassMap:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/systemui/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    iput v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    iput v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mTargetIndex:I

    iput-boolean v2, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mMenuVisible:Z

    iput-boolean v2, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mUserVisibleHint:Z

    return-void
.end method

.method private callStartTransitionListener()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v1, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iput-object v3, v1, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;

    goto :goto_0
.end method

.method private ensureAnimationInfo()Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    invoke-direct {v0}, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/miui/systemui/support/v4/app/Fragment;
    .locals 10
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    sget-object v7, Lcom/miui/systemui/support/v4/app/Fragment;->sClassMap:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-virtual {v7, p1}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v7, Lcom/miui/systemui/support/v4/app/Fragment;->sClassMap:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-virtual {v7, p1, v0}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz p2, :cond_1

    invoke-virtual {v6}, Lcom/miui/systemui/support/v4/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v6, p2}, Lcom/miui/systemui/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v6

    :catch_0
    move-exception v5

    new-instance v7, Lcom/miui/systemui/support/v4/app/Fragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": calling Fragment constructor caused an exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lcom/miui/systemui/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_1
    move-exception v4

    new-instance v7, Lcom/miui/systemui/support/v4/app/Fragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": could not find Fragment constructor"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/miui/systemui/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_2
    move-exception v2

    new-instance v7, Lcom/miui/systemui/support/v4/app/Fragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": make sure class name exists, is public, and has an"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " empty constructor that is public"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lcom/miui/systemui/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_3
    move-exception v3

    new-instance v7, Lcom/miui/systemui/support/v4/app/Fragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": make sure class name exists, is public, and has an"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " empty constructor that is public"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/miui/systemui/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_4
    move-exception v1

    new-instance v7, Lcom/miui/systemui/support/v4/app/Fragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": make sure class name exists, is public, and has an"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " empty constructor that is public"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/miui/systemui/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    sget-object v2, Lcom/miui/systemui/support/v4/app/Fragment;->sClassMap:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, p1}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Lcom/miui/systemui/support/v4/app/Fragment;->sClassMap:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, p1, v0}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v2, Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mParentFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mParentFragment:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mTarget:Lcom/miui/systemui/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getNextAnim()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final getActivity()Lcom/miui/systemui/support/v4/app/FragmentActivity;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/support/v4/app/FragmentActivity;

    goto :goto_0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->-get0(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->-get0(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->-get1(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->-get1(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method getAnimatingAway()Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-object v0
.end method

.method getAnimator()Landroid/animation/Animator;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public final getChildFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;
    .locals 2

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    iget v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    return-object v0

    :cond_1
    iget v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->-get2(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getEnterTransitionCallback()Lcom/miui/systemui/support/v4/app/SharedElementCallback;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Lcom/miui/systemui/support/v4/app/SharedElementCallback;

    return-object v0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->-get3(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getExitTransitionCallback()Lcom/miui/systemui/support/v4/app/SharedElementCallback;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mExitTransitionCallback:Lcom/miui/systemui/support/v4/app/SharedElementCallback;

    return-object v0
.end method

.method public final getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getChildFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/systemui/support/v4/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object v0
.end method

.method getNextAnim()I
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget v0, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mNextAnim:I

    return v0
.end method

.method getNextTransition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget v0, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mNextTransition:I

    return v0
.end method

.method getNextTransitionStyle()I
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget v0, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    return v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->-get4(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/miui/systemui/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->-get4(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->-get5(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/miui/systemui/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->-get5(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->-get6(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->-get7(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/miui/systemui/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->-get7(Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method getStateAfterAnimating()I
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget v0, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    iput-object v2, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mRemoving:Z

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFromLayout:Z

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mInLayout:Z

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mRestored:Z

    iput v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mBackStackNesting:I

    iput-object v2, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iput-object v2, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iput-object v2, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    iput v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentId:I

    iput v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    iput-object v2, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mDetached:Z

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mRetaining:Z

    iput-object v2, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoadersStarted:Z

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 3

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    new-instance v2, Lcom/miui/systemui/support/v4/app/Fragment$2;

    invoke-direct {v2, p0}, Lcom/miui/systemui/support/v4/app/Fragment$2;-><init>(Lcom/miui/systemui/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->attachController(Lcom/miui/systemui/support/v4/app/FragmentHostCallback;Lcom/miui/systemui/support/v4/app/FragmentContainer;Lcom/miui/systemui/support/v4/app/Fragment;)V

    return-void
.end method

.method public final isDetached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mDetached:Z

    return v0
.end method

.method isHideReplaced()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return v0
.end method

.method final isInBackStack()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mBackStackNesting:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isPostponed()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return v0
.end method

.method public final isStateSaved()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    return v0
.end method

.method noteStateNotSaved()V
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0, v0}, Lcom/miui/systemui/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public onAttachFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->isStateAtLeast(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    :cond_0
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getActivity()Lcom/miui/systemui/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doDestroy()V

    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onDetach()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0, v0, p2, p3}, Lcom/miui/systemui/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoadersStarted:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoadersStarted:Z

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method peekChildFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    :cond_2
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, p1, p2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mPerformedCreateView:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method performDestroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    :cond_0
    iput v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v2, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    return-void
.end method

.method performDestroyView()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchDestroyView()V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->onDestroyView()V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doReportNextStart()V

    :cond_2
    iput-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mPerformedCreateView:Z

    return-void
.end method

.method performDetach()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->onDetach()V

    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    iput-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    :cond_2
    return-void
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v1
.end method

.method performLowMemory()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->onLowMemory()V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    :cond_0
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    :cond_0
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->onPause()V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onPictureInPictureModeChanged(Z)V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    :cond_0
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method performReallyStop()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoadersStarted:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoadersStarted:Z

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doRetain()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doStop()V

    goto :goto_0
.end method

.method performResume()V
    .locals 3

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    :cond_2
    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->onStart()V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    :cond_2
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mLoaderManager:Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/LoaderManagerImpl;->doReportStart()V

    :cond_3
    return-void
.end method

.method performStop()V
    .locals 3

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->onStop()V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "android:support:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    :cond_0
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildNonConfig:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    invoke-virtual {v1, v0, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;)V

    iput-object v3, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildNonConfig:Lcom/miui/systemui/support/v4/app/FragmentManagerNonConfig;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mChildFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    :cond_1
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v2, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/systemui/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method setAnimatingAway(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->ensureAnimationInfo()Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-void
.end method

.method setAnimator(Landroid/animation/Animator;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->ensureAnimationInfo()Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fragment already active and state has been saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method setHideReplaced(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->ensureAnimationInfo()Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-boolean p1, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return-void
.end method

.method final setIndex(ILcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 2

    iput p1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/miui/systemui/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0
.end method

.method setNextAnim(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->ensureAnimationInfo()Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mNextAnim:I

    return-void
.end method

.method setNextTransition(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->ensureAnimationInfo()Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iput p1, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mNextTransition:I

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iput p2, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    return-void
.end method

.method setOnStartEnterTransitionListener(Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->ensureAnimationInfo()Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mAnimationInfo:Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    iput-object p1, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/miui/systemui/support/v4/app/Fragment$OnStartEnterTransitionListener;->startListening()V

    :cond_3
    return-void
.end method

.method setStateAfterAnimating(I)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->ensureAnimationInfo()Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    return-void
.end method

.method public startPostponedEnterTransition()V
    .locals 2

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->ensureAnimationInfo()Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/systemui/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/systemui/support/v4/app/Fragment$1;

    invoke-direct {v1, p0}, Lcom/miui/systemui/support/v4/app/Fragment$1;-><init>(Lcom/miui/systemui/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->callStartTransitionListener()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lcom/miui/systemui/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    if-ltz v1, :cond_0

    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_1

    const-string/jumbo v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
