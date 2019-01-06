.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$1;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$2;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$3;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;
    }
.end annotation


# static fields
.field private static sFilterColor:I

.field private static sKeyIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackLandIcon:Landroid/graphics/drawable/Drawable;

.field private mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field mBarSize:I

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field mCurrentView:Landroid/view/View;

.field private mDarkSuit:Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mForceHide:Z

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field private mHomeIcon:Landroid/graphics/drawable/Drawable;

.field private final mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mIsLayoutRtl:Z

.field private mKeyOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutTransitionsEnabled:Z

.field private mLightSuit:Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

.field mNavigationIconHints:I

.field private mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

.field private mOpaEnable:Z

.field private mRecentIcon:Landroid/graphics/drawable/Drawable;

.field private mRecentLandIcon:Landroid/graphics/drawable/Drawable;

.field mRotatedViews:[Landroid/view/View;

.field private final mScreenKeyOrderObserver:Landroid/database/ContentObserver;

.field mShowMenu:Z

.field private mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

.field private final mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

.field mVertical:Z

.field private mWakeAndUnlocking:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->adjustKeyOrder()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sKeyIdMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sKeyIdMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a018f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sKeyIdMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a010b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sKeyIdMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0229

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sKeyIdMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0042

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput v3, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sFilterColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyOrder:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$H;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenKeyOrderObserver:Landroid/database/ContentObserver;

    const-string/jumbo v2, "ro.miui.customized.region"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "eea"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOpaEnable:Z

    :cond_0
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07027e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarSize:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private adjustExtraKeyGravity(Landroid/view/View;Z)V
    .locals 6

    const/16 v4, 0x50

    const/16 v5, 0x30

    const v3, 0x7f0a018f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0120

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_2

    move v3, v4

    :goto_0
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_3

    :goto_1
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private adjustKeyOrder()V
    .locals 6

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getScreenKeyOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyOrder:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sKeyIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    const v3, 0x7f0a01c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eq v0, v4, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v3, v4

    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->adjustKeyOrder(Landroid/view/ViewGroup;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    return-void
.end method

.method private adjustKeyOrder(Landroid/view/ViewGroup;Z)V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v6, "PhoneStatusBar/NavigationBarView"

    const-string/jumbo v7, "adjustKeyOrder"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyOrder:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyOrder:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v6, v2

    :goto_2
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v6, v2

    goto :goto_2

    :cond_4
    return-void
.end method

.method private getIcons(Landroid/content/res/Resources;)V
    .locals 2

    const v0, 0x7f0801db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0801df

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0801fb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0801f0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeIcon:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801de

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setBack(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setBackAlt(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    const v1, 0x7f0801f3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setHome(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    const v1, 0x7f0801fd

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setRecent(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    const v1, 0x7f0801e6

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setBgPort(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    const v1, 0x7f0801e7

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setBgPortCTS(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    const v1, 0x7f0801e9

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setBgLand(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    const v1, 0x7f0801ea

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setBgLandCTS(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    const v1, 0x7f0600b9

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->setBgColorRes(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->build()Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDarkSuit:Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->build()Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLightSuit:Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

    return-void
.end method

.method public static getScreenKeyOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_key_order"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    :goto_0
    array-length v8, v6

    if-ge v1, v8, :cond_1

    :try_start_0
    aget-object v8, v6, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v8, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_1
    sget-object v8, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v7
.end method

.method private inLockTask()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private isScreenPinningActive()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getLockTaskModeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method private notifyVerticalChangedListener(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;->onVerticalChanged(Z)V

    :cond_0
    return-void
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setNotTouchable(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setUseFadingAnimations(Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    const v3, 0x7f120008

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method private swapChildrenOrderIfVertical(Landroid/view/View;)V
    .locals 6

    instance-of v4, p1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    move-object v3, p1

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_3

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sFilterColor:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sFilterColor:I

    :cond_2
    sget v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->sFilterColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private updateLayoutTransitionsEnabled()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    if-nez v3, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x7f0a01c2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v7}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {v1, v8}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {v1, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {v1, v6}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {v1, v8}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {v1, v5}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {v1, v6}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_1
.end method

.method private updateRTLOrder()V
    .locals 6

    const v5, 0x7f0a01c2

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLayoutRtl:Z

    if-eq v3, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v3, v4

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->swapChildrenOrderIfVertical(Landroid/view/View;)V

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->adjustExtraKeyGravity(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v4, 0x3

    aget-object v1, v3, v4

    if-eq v2, v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->swapChildrenOrderIfVertical(Landroid/view/View;)V

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->adjustExtraKeyGravity(Landroid/view/View;Z)V

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLayoutRtl:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTaskSwitchHelper()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->setBarState(ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableChangeBg(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->disableChangeBg(Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resumeSuspendedNavBarAutohide()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->suspendNavBarAutohide()V

    goto :goto_0
.end method

.method public getBackButton()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    return-object v0
.end method

.method public getImeSwitchButton()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a0120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuButton()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRecentsButton()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a0229

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isForceImmersive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOverviewEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/view/ViewRootImplCompat;->setDrawDuringWindowsAnimating(Landroid/view/ViewRootImpl;)V

    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "miui.intent.TAKE_SCREENSHOT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_key_order"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenKeyOrderObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v7, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenKeyOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v7}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postInvalidate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarPading()V

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRTLOrder()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenKeyOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const v1, 0x7f0a0248

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const v1, 0x7f0a0249

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v1, v1, v5

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRTLOrder()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    if-lez p2, :cond_1

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    :cond_0
    const-string/jumbo v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->poke(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reorient()V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v3, v3, v0

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v3, v3, v2

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v6, 0x7f0a00a6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/DeadZone;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->init()V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOpaEnable:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v6, 0x7f0a010e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/OpaLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/OpaLayout;->setVertical(Z)V

    :cond_2
    return-void

    :cond_3
    move v3, v5

    goto :goto_1
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 11

    if-nez p2, :cond_0

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v8, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v8, 0x200000

    and-int/2addr v8, p1

    if-eqz v8, :cond_5

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v8

    xor-int/lit8 v3, v8, 0x1

    const/high16 v8, 0x400000

    and-int/2addr v8, p1

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_6

    const/4 v1, 0x1

    :goto_1
    const/high16 v8, 0x2000000

    and-int/2addr v8, p1

    if-eqz v8, :cond_8

    const/4 v4, 0x1

    :goto_2
    and-int/lit16 v8, p1, 0x200

    if-eqz v8, :cond_9

    const/4 v0, 0x1

    :goto_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v6

    if-eqz v0, :cond_a

    const/4 v8, 0x4

    if-eq v6, v8, :cond_1

    const/4 v8, 0x6

    if-ne v6, v8, :cond_a

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDarkSuit:Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->switchSuit(Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;Z)V

    :goto_4
    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    move v8, v1

    :goto_5
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    move v8, v1

    :goto_6
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNotTouchable(Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v9, 0x7f0a01c2

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v5, v8}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenPinningActive()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x0

    :cond_3
    :goto_7
    const-string/jumbo v8, "PhoneStatusBar/NavigationBarView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setDisabledFlags back:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " home:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " recent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v9

    if-eqz v1, :cond_e

    const/4 v8, 0x4

    :goto_8
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v9

    if-eqz v2, :cond_f

    const/4 v8, 0x4

    :goto_9
    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v9

    if-eqz v3, :cond_10

    const/4 v8, 0x4

    :goto_a
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mForceHide:Z

    if-nez v8, :cond_4

    if-eqz v1, :cond_11

    if-eqz v2, :cond_11

    if-eqz v3, :cond_11

    :cond_4
    const/4 v8, 0x0

    :goto_b
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setAlpha(F)V

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    return-void

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_a
    if-eqz v6, :cond_1

    const/4 v8, 0x3

    if-eq v6, v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLightSuit:Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->switchSuit(Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;Z)V

    goto/16 :goto_4

    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->inLockTask()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v3, :cond_3

    xor-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_3

    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_e
    const/4 v8, 0x0

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    goto :goto_9

    :cond_10
    const/4 v8, 0x0

    goto :goto_a

    :cond_11
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_b
.end method

.method public setLayoutDirection(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 3

    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postInvalidate()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarPading()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationIconHints(IZ)V
    .locals 5

    const/4 v4, 0x1

    if-nez p2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOpaEnable:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_8

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public setSlippery(Z)V
    .locals 5

    const/high16 v4, 0x20000000

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setWakeAndUnlocking(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUseFadingAnimations(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public switchSuit(Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;Z)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBack:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBackAlt:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mRecent:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mHome:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeIcon:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-direct {p0, v3, v4, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-direct {p0, v3, v4, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOpaEnable:Z

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    :goto_3
    if-eqz p2, :cond_7

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v4, v3, v6

    if-eqz v1, :cond_8

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgPortCTS:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v4, v3, v5

    if-eqz v1, :cond_9

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgLandCTS:Landroid/graphics/drawable/Drawable;

    :goto_6
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget v4, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgColor:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setForceBgColor(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x7f0a010e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/OpaLayout;

    if-eqz p2, :cond_6

    move v3, v5

    :goto_7
    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/OpaLayout;->setDarkIntensity(F)V

    goto :goto_3

    :cond_6
    move v3, v6

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgPort:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_9
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgLand:Landroid/graphics/drawable/Drawable;

    goto :goto_6
.end method
