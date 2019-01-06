.class public Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;
.super Ljava/lang/Object;
.source "OLEDScreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$1;,
        Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$2;,
        Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDirection:I

.field private mHandler:Landroid/os/Handler;

.field private mInterval:I

.field private mIsScreenOn:Z

.field private mListener:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mPixels:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarMode:I

.field private mStatusBarView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mDirection:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mInterval:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mDirection:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mInterval:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mPixels:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->restart()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->update()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mListener:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "OLEDScreenHelper"

    const-string/jumbo v1, "IS_OLED_SCREEN=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-boolean v5, Lcom/android/systemui/Constants;->IS_OLED_SCREEN:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mContext:Landroid/content/Context;

    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mInterval:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mPixels:I

    const-class v0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    const-string/jumbo v1, "OLEDScreenHelper"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mListener:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->addPromptStateChangedListener(Ljava/lang/String;Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;)V

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "systemui.oled.strategy"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private generateRandomDirection()I
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method private resetView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private restart()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mIsScreenOn:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->stop(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mIsScreenOn:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->start(Z)V

    return-void
.end method

.method private update()V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OLEDScreenHelper"

    const-string/jumbo v1, "update mDirection=%d mInterval=%d mPixels=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mDirection:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mStatusBarView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->updateView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->updateView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->updateView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->updateView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private updateView(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mDirection:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mPixels:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mPixels:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mPixels:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mPixels:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->restart()V

    return-void
.end method

.method public onStatusBarModeChanged(I)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_OLED_SCREEN:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mStatusBarMode:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->restart()V

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mStatusBarMode:I

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mIsScreenOn:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->stop(Z)V

    goto :goto_0
.end method

.method public setNavigationBarView(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_OLED_SCREEN:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    :cond_0
    return-void
.end method

.method public setStatusBarView(Landroid/view/View;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_OLED_SCREEN:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mStatusBarView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public start(Z)V
    .locals 6

    const/16 v5, 0x2711

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mIsScreenOn:Z

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_OLED_SCREEN:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OLEDScreenHelper"

    const-string/jumbo v1, "start isScreenOn=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->generateRandomDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mDirection:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mInterval:I

    int-to-long v2, v1

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public stop(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mIsScreenOn:Z

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_OLED_SCREEN:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OLEDScreenHelper"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mStatusBarView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->resetView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->resetView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->resetView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->resetView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
