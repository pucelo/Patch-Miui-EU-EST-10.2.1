.class public Lcom/android/systemui/miui/statusbar/WifiLabelText;
.super Landroid/widget/TextView;
.source "WifiLabelText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/statusbar/WifiLabelText$1;,
        Lcom/android/systemui/miui/statusbar/WifiLabelText$2;
    }
.end annotation


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCustomCarrier:Ljava/lang/String;

.field private mCustomCarrierObserver:Landroid/database/ContentObserver;

.field private mForceHide:Z

.field private mRealCarrier:Ljava/lang/String;

.field private mShowCarrier:Z

.field private mShowCarrierObserver:Landroid/database/ContentObserver;

.field private mSupportNetwork:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/statusbar/WifiLabelText;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/miui/statusbar/WifiLabelText;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mCustomCarrier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/miui/statusbar/WifiLabelText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mForceHide:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/miui/statusbar/WifiLabelText;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mRealCarrier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/miui/statusbar/WifiLabelText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mShowCarrier:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/miui/statusbar/WifiLabelText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mCustomCarrier:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/miui/statusbar/WifiLabelText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mShowCarrier:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/miui/statusbar/WifiLabelText;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->initCarrier()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/miui/statusbar/WifiLabelText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mRealCarrier:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/miui/statusbar/WifiLabelText$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/statusbar/WifiLabelText$1;-><init>(Lcom/android/systemui/miui/statusbar/WifiLabelText;)V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/miui/statusbar/WifiLabelText$2;

    new-instance v2, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/miui/statusbar/WifiLabelText$2;-><init>(Lcom/android/systemui/miui/statusbar/WifiLabelText;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mShowCarrierObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private initCarrier()V
    .locals 4

    const/4 v3, -0x2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_show_carrier_under_keyguard"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mShowCarrier:Z

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_custom_carrier0"

    invoke-static {v0, v1, v3}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mCustomCarrier:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->updateCarrier()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerObservers()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/systemui/miui/statusbar/WifiLabelText$3;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/miui/statusbar/WifiLabelText$3;-><init>(Lcom/android/systemui/miui/statusbar/WifiLabelText;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mCustomCarrierObserver:Landroid/database/ContentObserver;

    const-string/jumbo v2, "status_bar_custom_carrier0"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mCustomCarrierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "status_bar_show_carrier_under_keyguard"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mShowCarrierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->updateCarrier()V

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mSupportNetwork:Z

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mSupportNetwork:Z

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->initCarrier()V

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->registerObservers()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mSupportNetwork:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->unregisterObservers()V

    :cond_0
    return-void
.end method

.method public setWifiLabel(ZLjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mSupportNetwork:Z

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mRealCarrier:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mForceHide:Z

    if-eq v0, p1, :cond_2

    :cond_1
    iput-object p2, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mRealCarrier:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mForceHide:Z

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->updateCarrier()V

    :cond_2
    return-void
.end method

.method public unregisterObservers()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mCustomCarrierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mShowCarrierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateCarrier()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText;->mSupportNetwork:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/miui/statusbar/WifiLabelText$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/statusbar/WifiLabelText$4;-><init>(Lcom/android/systemui/miui/statusbar/WifiLabelText;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
