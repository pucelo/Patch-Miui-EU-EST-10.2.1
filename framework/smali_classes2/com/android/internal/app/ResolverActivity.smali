.class public Lcom/android/internal/app/ResolverActivity;
.super Lmiui/app/AlertActivity;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$1;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$PageGridAdapter;,
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$TargetInfo;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTRA_RESOLVE_INFOS:Ljava/lang/String; = "rlist"

.field private static final MAX_PER_SCREEN:I = 0x8

.field private static final PRIV_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"

.field private static final XSPACE_NOT_SHOW_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final PACKAGE_NAME_BROWSER:Ljava/lang/String;

.field protected mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAdapterView:Landroid/widget/AbsListView;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mDefaultTitleResId:I

.field private mFilteredComponents:[Landroid/content/ComponentName;

.field private mIconDpi:I

.field private mIconSize:I

.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelected:I

.field protected mLaunchedFromUid:I

.field private mLayoutId:I

.field private mMaskColor:I

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field protected mPm:Landroid/content/pm/PackageManager;

.field private mPostListReadyRunnable:Ljava/lang/Runnable;

.field private mProfileSwitchMessageId:I

.field private mProfileView:Landroid/view/View;

.field private mRecommendFirstItem:Z

.field private mReferrerPackage:Ljava/lang/String;

.field private mRegistered:Z

.field protected mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private mResolvingHome:Z

.field private mRetainInOnStop:Z

.field private mSafeForwardingMode:Z

.field private mScreenView:Lmiui/widget/ScreenView;

.field private mShowMoreResolverButton:Z

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/android/internal/app/ResolverActivity;->PRIV_PACKAGES:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/android/internal/app/ResolverActivity;->XSPACE_NOT_SHOW_LIST:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/ResolverActivity;)I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/ResolverActivity;)I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mMaskColor:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecommendFirstItem:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/ResolverActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/app/ResolverActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/internal/app/ResolverActivity;I)I
    .registers 2

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/internal/app/ResolverActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mRecommendFirstItem:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/internal/app/ResolverActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/ResolverActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initGridViews()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/ResolverActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->sendResolverShownAnalyticsBroadcast(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/app/ResolverActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->showMore()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/app/ResolverActivity;->PRIV_PACKAGES:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/app/ResolverActivity;->XSPACE_NOT_SHOW_LIST:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/internal/app/ResolverActivity;->PRIV_PACKAGES:Ljava/util/Set;

    const-string/jumbo v1, "com.miui.personalassistant.favorite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/android/internal/app/ResolverActivity;->PRIV_PACKAGES:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.midrop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/app/ResolverActivity;->PRIV_PACKAGES:Ljava/util/Set;

    const-string/jumbo v1, "com.android.browser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/app/ResolverActivity;->XSPACE_NOT_SHOW_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    const-string/jumbo v0, "com.android.browser"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->PACKAGE_NAME_BROWSER:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method private collectAnalyticsData(Ljava/util/List;)Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "displayPackages"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v4, "chooserId"

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->hashCode()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "recommendFirstItem"

    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mRecommendFirstItem:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v4, "maxCountPerScreen"

    const/16 v5, 0x8

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getLabelRes(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    return v0
.end method

.method private hasManagedProfile()Z
    .registers 8

    const/4 v6, 0x0

    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    if-nez v4, :cond_d

    return v6

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_2a} :catch_2f

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    return v5

    :catch_2f
    move-exception v0

    return v6

    :cond_31
    return v6
.end method

.method private inflateGridView(I)Landroid/widget/GridView;
    .registers 8

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    const v4, 0x11030013

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;

    invoke-direct {v2, p0, p0, p1}, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object v0
.end method

.method private initGridViews()V
    .registers 12

    const/4 v10, 0x4

    const/4 v7, -0x2

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6}, Lmiui/widget/ScreenView;->removeAllScreens()V

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    div-int/lit8 v1, v0, 0x8

    rem-int/lit8 v6, v0, 0x8

    if-nez v6, :cond_4d

    move v4, v1

    :goto_15
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6}, Lmiui/widget/ScreenView;->removeAllViews()V

    const/4 v6, 0x1

    if-ne v4, v6, :cond_50

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->inflateGridView(I)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/widget/GridView;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/widget/GridView;->getCount()I

    move-result v6

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6, v2}, Lmiui/widget/ScreenView;->addView(Landroid/view/View;)V

    :cond_47
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6, v9}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    return-void

    :cond_4d
    add-int/lit8 v4, v1, 0x1

    goto :goto_15

    :cond_50
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x51

    invoke-direct {v5, v7, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6, v5}, Lmiui/widget/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6, v9}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    const/4 v3, 0x0

    :goto_62
    if-ge v3, v4, :cond_47

    add-int/lit8 v6, v3, 0x1

    invoke-direct {p0, v6}, Lcom/android/internal/app/ResolverActivity;->inflateGridView(I)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6, v2}, Lmiui/widget/ScreenView;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_62
.end method

.method static final isSpecificUriMatch(I)Z
    .registers 3

    const/4 v0, 0x0

    const/high16 v1, 0xfff0000

    and-int/2addr p0, v1

    const/high16 v1, 0x300000

    if-lt p0, v1, :cond_d

    const/high16 v1, 0x500000

    if-gt p0, v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_9

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_9
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_13

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6

    :cond_13
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6

    :cond_2e
    move v0, v1

    goto :goto_6
.end method

.method private safelyStartActivityInternal(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .registers 8

    const/4 v5, 0x0

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_14

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_14
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    if-nez v3, :cond_22

    invoke-interface {p1, p0, v5}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    :cond_21
    return-void

    :cond_22
    const/4 v3, 0x0

    const/16 v4, -0x2710

    :try_start_25
    invoke-interface {p1, p0, v3, v4}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    :try_start_30
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3b} :catch_73

    move-result-object v2

    :goto_3c
    const-string/jumbo v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to launch as uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", while running in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    :catch_73
    move-exception v1

    const-string/jumbo v2, "??"

    goto :goto_3c
.end method

.method private sendAnalyticBroadcast(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_3a

    invoke-virtual {v4, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    if-eqz v0, :cond_4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/app/ResolverActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_4

    :cond_3a
    const/4 v0, 0x0

    goto :goto_1e

    :cond_3c
    return-void
.end method

.method private sendItemSelectedAnalyticsBroadcast(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->collectAnalyticsData(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "selectedItem"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "com.miui.action.resolver_activity_item_select"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/ResolverActivity;->sendAnalyticBroadcast(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private sendResolverShownAnalyticsBroadcast(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->collectAnalyticsData(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.miui.action.resolver_activity_shown"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/ResolverActivity;->sendAnalyticBroadcast(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_15

    const-string/jumbo v2, "ResolverActivity"

    const-string/jumbo v3, "Invalid position supplied to setAlwaysButtonEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_24

    const-string/jumbo v2, "ResolverActivity"

    const-string/jumbo v3, "Attempted to set selection to resolve info for another user"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    const/4 v0, 0x1

    :cond_25
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private setProfileSwitchMessageId(I)V
    .registers 7

    const/4 v4, -0x2

    if-eq p1, v4, :cond_2b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq p1, v4, :cond_2b

    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    :goto_1c
    invoke-virtual {v3}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-eqz v0, :cond_2e

    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_2e

    const v4, 0x11090101

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    const/4 v0, 0x0

    goto :goto_1c

    :cond_2e
    if-nez v0, :cond_2b

    if-eqz v2, :cond_2b

    const v4, 0x11090102

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    goto :goto_2b
.end method

.method private showMore()V
    .registers 5

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    const v2, 0x110c0034

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_17
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initGridViews()V

    const/4 v1, 0x0

    :goto_20
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v2}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_3c

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v2, v1}, Lmiui/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_3c
    return-void
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_16

    const/16 v4, 0x15

    if-lt v3, v4, :cond_15

    const/4 v2, 0x1

    :cond_15
    return v2

    :catch_16
    move-exception v1

    return v2
.end method

.method private useLayoutWithDefault()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method bindProfileView()V
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x110c0032

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v3

    if-nez v3, :cond_34

    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_34
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_42
    return-void

    :cond_43
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_42
.end method

.method public configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x11030014

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x110c0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ScreenView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView;->setScreenTransitionType(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v0, :cond_89

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    :goto_48
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()Z

    move-result v8

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v7

    if-eqz v8, :cond_8b

    const/4 v0, 0x1

    if-ne v7, v0, :cond_8b

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-virtual {p0, v9}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void

    :cond_89
    const/4 v6, 0x0

    goto :goto_48

    :cond_8b
    if-nez v7, :cond_a1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get1(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)I

    move-result v0

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x1109003d

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_a0
    return-void

    :cond_a1
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initGridViews()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V

    goto :goto_a0
.end method

.method public createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->createListController()Lcom/android/internal/app/ResolverListController;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZLcom/android/internal/app/ResolverListController;)V

    return-object v0
.end method

.method protected createListController()Lcom/android/internal/app/ResolverListController;
    .registers 7

    new-instance v0, Lcom/android/internal/app/ResolverListController;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;I)V

    return-object v0
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0}, Lmiui/app/AlertActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    return-void
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 6

    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    :goto_6
    return-object v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLayoutResource()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getReferrerPackageName()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string/jumbo v1, "android-app"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_19
    return-object v3
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3

    return-object p2
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_9
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 5

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v1, :cond_11

    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    :goto_6
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v0, v1, :cond_16

    if-eqz p2, :cond_16

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_11
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    goto :goto_6

    :cond_16
    iget v1, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .registers 7

    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_19

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_19

    return-object v0

    :cond_19
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_2c} :catch_30

    move-result-object v0

    if-eqz v0, :cond_3a

    return-object v0

    :catch_30
    move-exception v1

    const-string/jumbo v3, "ResolverActivity"

    const-string/jumbo v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method

.method public onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .registers 2

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz v8, :cond_2a

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_2a

    const-string/jumbo v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    :cond_2a
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    sget v10, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    const-string/jumbo v10, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_24

    const-string/jumbo v10, "android.intent.action.WEB_SEARCH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_24

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    :cond_24
    iget-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    if-eqz v10, :cond_51

    if-eqz p5, :cond_51

    const/4 v7, 0x0

    :goto_2b
    move-object/from16 v0, p5

    array-length v10, v0

    if-ge v7, v10, :cond_51

    aget-object v8, p5, v7

    const-string/jumbo v10, "android.intent.action.VIEW"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_91

    const-string/jumbo v10, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_91

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    :cond_51
    const/4 v10, 0x1

    invoke-static {v10}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessageId(I)V

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    const/4 v10, 0x1

    if-nez v10, :cond_94

    sget-boolean v10, Lmiui/os/Build;->IS_TABLET:Z

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_94

    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_94

    if-eqz v5, :cond_94

    const-string/jumbo v10, "android.intent.category.HOME"

    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_94

    const-string/jumbo v10, "ResolverActivity"

    const-string/jumbo v11, "Default Home Already Exists"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void

    :cond_91
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_94
    :try_start_94
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v10

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_a2} :catch_b2

    :goto_a2
    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v10, :cond_ae

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v10

    if-eqz v10, :cond_b7

    :cond_ae
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void

    :catch_b2
    move-exception v6

    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto :goto_a2

    :cond_b7
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, p0, v11, v12}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mReferrerPackage:Ljava/lang/String;

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    const-string/jumbo v10, "activity"

    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v10

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v10

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x11070012

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mMaskColor:I

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    move/from16 v0, p4

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mDefaultTitleResId:I

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {p0, v10, v0, v1}, Lcom/android/internal/app/ResolverActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-static {p0, v10, v11}, Lmiui/securityspace/XSpaceResolverActivityHelper;->checkAndResolve(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)Z

    move-result v10

    if-eqz v10, :cond_12e

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->setupAlert()V

    iget-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v10, :cond_12d

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v10}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_12d
    return-void

    :cond_12e
    const v10, 0x102020a

    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v9, :cond_14d

    new-instance v10, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v10, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v10

    if-eqz v10, :cond_14b

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    :cond_14b
    iput-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    :cond_14d
    if-nez p3, :cond_159

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {p0, v10, v0}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p3

    :cond_159
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p3

    iput-object v0, v10, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->setupAlert()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/high16 v11, 0x20000

    invoke-virtual {v10, v11}, Landroid/view/Window;->clearFlags(I)V

    if-eqz p7, :cond_198

    const v10, 0x110c0034

    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_207

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    if-eqz v10, :cond_202

    const/4 v10, 0x0

    if-eqz v10, :cond_202

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v10, v10, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v10, :cond_202

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v10, v10, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_202

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_198
    :goto_198
    const v10, 0x110c0031

    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v10, :cond_1b2

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    new-instance v11, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v11, p0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    :cond_1b2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v10

    if-eqz v10, :cond_1bb

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->onSetupVoiceInteraction()V

    :cond_1bb
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v10

    if-eqz v10, :cond_20b

    const/16 v10, 0x1c3

    :goto_1c9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v4, :cond_20e

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_1f6
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v10, v11}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_202
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_198

    :cond_207
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    goto :goto_198

    :cond_20b
    const/16 v10, 0x1c5

    goto :goto_1c9

    :cond_20e
    const-string/jumbo v11, ""

    goto :goto_1f6
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lmiui/app/AlertActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    :cond_13
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPostListReadyRunnable:Ljava/lang/Runnable;

    :cond_22
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get2(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get2(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->destroy()V

    :cond_37
    return-void
.end method

.method public onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V
    .registers 3

    return-void
.end method

.method protected onRestart()V
    .registers 4

    invoke-super {p0}, Lmiui/app/AlertActivity;->onRestart()V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_14
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    :cond_20
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resetAlwaysOrOnceButtonBar()V

    return-void
.end method

.method public onSetupVoiceInteraction()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->sendVoiceChoicesIfNeeded()V

    return-void
.end method

.method protected onStop()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lmiui/app/AlertActivity;->onStop()V

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_39

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_39

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_39
    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .registers 45

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v35

    if-eqz p1, :cond_64

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v21

    :goto_a
    if-eqz v21, :cond_27d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    move/from16 v39, v0

    if-nez v39, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v39

    if-eqz v39, :cond_27d

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v39, v0

    if-eqz v39, :cond_27d

    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v39

    if-eqz v39, :cond_67

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v18

    :goto_3d
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_48

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_48
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v12

    if-eqz v12, :cond_6a

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_52
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_6a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_52

    :cond_64
    const/16 v21, 0x0

    goto :goto_a

    :cond_67
    move-object/from16 v18, v21

    goto :goto_3d

    :cond_6a
    const-string/jumbo v39, "android.intent.category.DEFAULT"

    move-object/from16 v0, v17

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v39, v0

    const/high16 v40, 0xfff0000

    and-int v9, v39, v40

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    const/high16 v39, 0x600000

    move/from16 v0, v39

    if-ne v9, v0, :cond_99

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_99

    :try_start_92
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_99
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_92 .. :try_end_99} :catch_1ee

    :cond_99
    :goto_99
    if-eqz v14, :cond_175

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v39

    if-eqz v39, :cond_175

    const/high16 v39, 0x600000

    move/from16 v0, v39

    if-ne v9, v0, :cond_c3

    const-string/jumbo v39, "file"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_175

    const-string/jumbo v39, "content"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    xor-int/lit8 v39, v39, 0x1

    if-eqz v39, :cond_175

    :cond_c3
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v17

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v28

    if-eqz v28, :cond_107

    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v37

    :cond_de
    if-eqz v37, :cond_107

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_107

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/PatternMatcher;

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_de

    invoke-virtual/range {v27 .. v27}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v27 .. v27}, Landroid/os/PatternMatcher;->getType()I

    move-result v40

    move-object/from16 v0, v17

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_107
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v6

    if-eqz v6, :cond_13c

    :cond_113
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_13c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v5, v14}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v39

    if-ltz v39, :cond_113

    invoke-virtual {v5}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v32

    invoke-virtual {v5}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v40

    if-ltz v32, :cond_1fd

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v39

    :goto_133
    move-object/from16 v0, v17

    move-object/from16 v1, v40

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13c
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v28

    if-eqz v28, :cond_175

    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v30

    :cond_14c
    if-eqz v30, :cond_175

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_175

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/PatternMatcher;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_14c

    invoke-virtual/range {v27 .. v27}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v27 .. v27}, Landroid/os/PatternMatcher;->getType()I

    move-result v40

    move-object/from16 v0, v17

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_175
    if-eqz v17, :cond_27d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get0(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v39

    if-eqz v39, :cond_201

    const/16 v25, 0x1

    :goto_195
    if-nez v25, :cond_204

    new-array v0, v4, [Landroid/content/ComponentName;

    move-object/from16 v36, v0

    :goto_19b
    const/4 v8, 0x0

    const/16 v20, 0x0

    :goto_19e
    move/from16 v0, v20

    if-ge v0, v4, :cond_20d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v33

    new-instance v39, Landroid/content/ComponentName;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-direct/range {v39 .. v41}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v39, v36, v20

    move-object/from16 v0, v33

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v39, v0

    move/from16 v0, v39

    if-le v0, v8, :cond_1eb

    move-object/from16 v0, v33

    iget v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    :cond_1eb
    add-int/lit8 v20, v20, 0x1

    goto :goto_19e

    :catch_1ee
    move-exception v16

    const-string/jumbo v39, "ResolverActivity"

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v17, 0x0

    goto/16 :goto_99

    :cond_1fd
    const/16 v39, 0x0

    goto/16 :goto_133

    :cond_201
    const/16 v25, 0x0

    goto :goto_195

    :cond_204
    add-int/lit8 v39, v4, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object/from16 v36, v0

    goto :goto_19b

    :cond_20d
    if-eqz v25, :cond_239

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get0(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v39

    aput-object v39, v36, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get0(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v39

    move-object/from16 v0, v39

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v0, v8, :cond_239

    move/from16 v8, v26

    :cond_239
    if-eqz p2, :cond_2e1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v39

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    move-object/from16 v2, v36

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    move/from16 v39, v0

    if-eqz v39, :cond_285

    move-object/from16 v0, v31

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_27d

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    :cond_27d
    :goto_27d
    if-eqz p1, :cond_282

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    :cond_282
    const/16 v39, 0x1

    return v39

    :cond_285
    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v29

    if-eqz v14, :cond_2d3

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    :goto_293
    if-eqz v15, :cond_2d8

    const-string/jumbo v39, "http"

    move-object/from16 v0, v39

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_2d5

    const-string/jumbo v39, "https"

    move-object/from16 v0, v39

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    :goto_2a9
    if-eqz v7, :cond_2db

    const-string/jumbo v39, "android.intent.action.VIEW"

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    :goto_2b4
    if-eqz v12, :cond_2de

    const-string/jumbo v39, "android.intent.category.BROWSABLE"

    move-object/from16 v0, v39

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    :goto_2bf
    if-eqz v22, :cond_27d

    if-eqz v23, :cond_27d

    if-eqz v19, :cond_27d

    const/16 v39, 0x2

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move/from16 v2, v39

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    goto :goto_27d

    :cond_2d3
    const/4 v15, 0x0

    goto :goto_293

    :cond_2d5
    const/16 v22, 0x1

    goto :goto_2a9

    :cond_2d8
    const/16 v22, 0x0

    goto :goto_2a9

    :cond_2db
    const/16 v23, 0x0

    goto :goto_2b4

    :cond_2de
    const/16 v19, 0x0

    goto :goto_2bf

    :cond_2e1
    :try_start_2e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->-get2(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Lcom/android/internal/app/ResolverListController;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/internal/app/ResolverListController;->setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    :try_end_2f4
    .catch Landroid/os/RemoteException; {:try_start_2e1 .. :try_end_2f4} :catch_2f5

    goto :goto_27d

    :catch_2f5
    move-exception v34

    const-string/jumbo v39, "ResolverActivity"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Error calling setLastChosenActivity\n"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27d
.end method

.method optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .registers 5

    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public resetAlwaysOrOnceButtonBar()V
    .registers 1

    return-void
.end method

.method public safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .registers 3

    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityInternal(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    return-void

    :catchall_a
    move-exception v0

    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    throw v0
.end method

.method public sendVoiceChoicesIfNeeded()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    new-array v2, v3, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    const/4 v1, 0x0

    array-length v0, v2

    :goto_11
    if-ge v1, v0, :cond_22

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_22
    new-instance v3, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    new-instance v4, Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    return-void
.end method

.method protected final setAdditionalTargets([Landroid/content/Intent;)V
    .registers 6

    if-eqz p1, :cond_10

    const/4 v1, 0x0

    array-length v2, p1

    :goto_4
    if-ge v1, v2, :cond_10

    aget-object v0, p1, v1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method protected setRetainInOnStop(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mRetainInOnStop:Z

    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    return-void
.end method

.method public setTitleAndIcon()V
    .registers 1

    return-void
.end method

.method public shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public shouldGetActivityMetadata()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .registers 7

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->dismiss()V

    return-void
.end method

.method public startSelected(IZZ)V
    .registers 11

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_8

    return-void

    :cond_8
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    instance-of v2, v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    if-eqz v2, :cond_25

    move-object v2, v1

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get1(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->showMore()V

    return-void

    :cond_25
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_67

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_67

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_67
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_91

    if-eqz p2, :cond_92

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_92

    const/16 v2, 0x1c7

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :goto_78
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_a2

    const/16 v2, 0x1c4

    :goto_82
    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getDisplayList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/internal/app/ResolverActivity;->sendItemSelectedAnalyticsBroadcast(Ljava/util/List;I)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_91
    return-void

    :cond_92
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_9c

    const/16 v2, 0x1c8

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_78

    :cond_9c
    const/16 v2, 0x1c9

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_78

    :cond_a2
    const/16 v2, 0x1c6

    goto :goto_82
.end method
