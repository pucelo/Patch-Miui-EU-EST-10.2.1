.class public Lcom/android/systemui/fsgesture/DrawerDemoAct;
.super Landroid/app/Activity;
.source "DrawerDemoAct.java"


# static fields
.field private static final IS_DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private drawerImg:Landroid/widget/ImageView;

.field private drawerImgMain:Landroid/widget/ImageView;

.field private fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field private fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field handler:Landroid/os/Handler;

.field private initTranslateWidht:I

.field private maxTranslateWidth:I

.field private shelterView:Landroid/view/View;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->IS_DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/fsgesture/DrawerDemoAct;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->initTranslateWidht:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/fsgesture/DrawerDemoAct;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->maxTranslateWidth:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->shelterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->initTranslateWidht:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->maxTranslateWidth:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->startSwipeViewAnimation(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->TAG:Ljava/lang/String;

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    sput-boolean v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->IS_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->handler:Landroid/os/Handler;

    return-void
.end method

.method private startSwipeViewAnimation(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    const v3, 0x7f0d0032

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/Util;->hideSystemBars(Landroid/view/View;)V

    const v3, 0x7f0a00bb

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    const v3, 0x7f0a028f

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->shelterView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->shelterView:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    const v3, 0x7f0a00bd

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImgMain:Landroid/widget/ImageView;

    const v3, 0x7f0a00f3

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    new-instance v4, Lcom/android/systemui/fsgesture/DrawerDemoAct$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$3;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->registerSkipEvent(Landroid/view/View$OnClickListener;)V

    sget-boolean v3, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07042f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v3}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const v3, 0x7f0a00f2

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->startSwipeViewAnimation(I)V

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
