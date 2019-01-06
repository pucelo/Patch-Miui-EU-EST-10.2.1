.class public Lcom/android/systemui/fsgesture/HomeDemoAct;
.super Landroid/app/Activity;
.source "HomeDemoAct.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private appBgView:Landroid/view/View;

.field private appCalculatorImg:Landroid/widget/ImageView;

.field private appNoteIconImg:Landroid/view/View;

.field private appNoteImg:Landroid/widget/ImageView;

.field private fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field private fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field private fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

.field handler:Landroid/os/Handler;

.field private homeIconImg:Landroid/widget/LinearLayout;

.field private mAnimIcon:Landroid/view/View;

.field private navSubViewBgView:Landroid/view/View;

.field private recentsBgView:Landroid/view/View;

.field private recentsClearImg:Landroid/view/View;

.field private wallPaperImg:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fsgesture/HomeDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fsgesture/HomeDemoAct;)Lcom/android/systemui/fsgesture/NavStubDemoView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/fsgesture/HomeDemoAct;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mAnimIcon:Landroid/view/View;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fsgesture/HomeDemoAct;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->handler:Landroid/os/Handler;

    return-void
.end method

.method private startSwipeViewAnimation(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fsgesture/HomeDemoAct$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/HomeDemoAct$3;-><init>(Lcom/android/systemui/fsgesture/HomeDemoAct;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/HomeDemoAct;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x400

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    const v8, 0x7f0d0046

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/HomeDemoAct;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/Util;->hideSystemBars(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/HomeDemoAct;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v8, "DEMO_TYPE"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "FULLY_SHOW_STEP"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "IS_FROM_PROVISION"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const v8, 0x7f0a0337

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->wallPaperImg:Landroid/widget/ImageView;

    const v8, 0x7f0a010d

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->homeIconImg:Landroid/widget/LinearLayout;

    const v8, 0x7f0a002b

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mAnimIcon:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/fsgesture/HomeDemoAct$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/fsgesture/HomeDemoAct$1;-><init>(Lcom/android/systemui/fsgesture/HomeDemoAct;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const v8, 0x7f0a022a

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->recentsBgView:Landroid/view/View;

    const v8, 0x7f0a0033

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appCalculatorImg:Landroid/widget/ImageView;

    const v8, 0x7f0a022b

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->recentsClearImg:Landroid/view/View;

    const v8, 0x7f0a0038

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appNoteIconImg:Landroid/view/View;

    const v8, 0x7f0a0032

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appBgView:Landroid/view/View;

    const v8, 0x7f0a0039

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appNoteImg:Landroid/widget/ImageView;

    const v8, 0x7f0a01c4

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->navSubViewBgView:Landroid/view/View;

    const v8, 0x7f0a00f3

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    const-string/jumbo v8, "DEMO_FULLY_SHOW"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-ne v7, v11, :cond_1

    const/4 v6, 0x2

    :goto_0
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v8, v6}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    new-instance v9, Lcom/android/systemui/fsgesture/HomeDemoAct$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/fsgesture/HomeDemoAct$2;-><init>(Lcom/android/systemui/fsgesture/HomeDemoAct;)V

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->registerSkipEvent(Landroid/view/View$OnClickListener;)V

    sget-boolean v8, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/HomeDemoAct;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07042f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v8}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v10, v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v8, v4}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const v8, 0x7f0a00f2

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    const/4 v8, 0x3

    if-ne v6, v8, :cond_4

    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->startSwipeViewAnimation(I)V

    :goto_1
    const v8, 0x7f0a00ee

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/fsgesture/NavStubDemoView;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v8, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setCurActivity(Landroid/app/Activity;)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v8, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setDemoType(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v8, v7}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setFullyShowStep(I)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v8, v3}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setIsFromPro(Z)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->homeIconImg:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setHomeIconImg(Landroid/widget/LinearLayout;)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->recentsBgView:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setRecentsBgView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->recentsClearImg:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setRecentsClearImg(Landroid/view/View;)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appCalculatorImg:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setAppCalculatorImg(Landroid/widget/ImageView;)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appNoteIconImg:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setAppNoteIconImg(Landroid/view/View;)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appBgView:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setAppBgView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appNoteImg:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setAppNoteImg(Landroid/widget/ImageView;)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setDemoTitleView(Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setSwipeView(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->navSubViewBgView:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setBgView(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 v6, 0x3

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v8, "DEMO_TO_HOME"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v6, 0x2

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x3

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->startSwipeViewAnimation(I)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method
