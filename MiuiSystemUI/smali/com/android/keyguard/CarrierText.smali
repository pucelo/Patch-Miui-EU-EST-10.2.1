.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$1;,
        Lcom/android/keyguard/CarrierText$2;,
        Lcom/android/keyguard/CarrierText$3;
    }
.end annotation


# static fields
.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field private mAirplaneModeOn:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCustomCarrier:[Ljava/lang/String;

.field private mCustomCarrierObserver:[Landroid/database/ContentObserver;

.field private mEmergencyOnly:Z

.field private mForceHide:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mMobileType:[Ljava/lang/String;

.field private final mPhoneCount:I

.field private mShowCarrier:Z

.field private mShowCarrierObserver:Landroid/database/ContentObserver;

.field private mShowStyle:I

.field private mSimCarrier:[Ljava/lang/String;

.field private mSimErrorState:[Z

.field private mSupportNetwork:Z


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/CarrierText;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/CarrierText;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mCustomCarrier:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/CarrierText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mForceHide:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/CarrierText;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/CarrierText;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/CarrierText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mShowCarrier:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/CarrierText;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/CarrierText;->mShowStyle:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/CarrierText;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimCarrier:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/CarrierText;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/CarrierText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/CarrierText;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/CarrierText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/CarrierText;->mShowCarrier:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/CarrierText;Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->isSimErrorByIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/CarrierText;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getCarrierString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/CarrierText;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->initCarrier()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/CarrierText;->mShowStyle:I

    new-instance v0, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/CarrierText$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierText$2;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/keyguard/CarrierText$3;

    new-instance v2, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/CarrierText$3;-><init>(Lcom/android/keyguard/CarrierText;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mShowCarrierObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    iget v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    iget v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    new-array v0, v0, [Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mCustomCarrierObserver:[Landroid/database/ContentObserver;

    iget v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mCustomCarrier:[Ljava/lang/String;

    iget v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimCarrier:[Ljava/lang/String;

    iget v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mMobileType:[Ljava/lang/String;

    return-void
.end method

.method private getCarrierString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mAirplaneModeOn:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1103b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->isCMTest()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mMobileType:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mEmergencyOnly:Z

    if-eqz v2, :cond_5

    const v2, 0x7f1103be

    :goto_3
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const v2, 0x7f1103bf

    goto :goto_3
.end method

.method private initCarrier()V
    .locals 8

    const/4 v7, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "status_bar_show_carrier_under_keyguard"

    invoke-static {v1, v4, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/CarrierText;->mShowCarrier:Z

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCustomCarrier:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status_bar_custom_carrier"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mAirplaneModeOn:Z

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    :cond_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method private isCMTest()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    return v0
.end method

.method private isSimErrorByIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_5

    return v2

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method private registerObservers()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    new-instance v1, Landroid/os/Handler;

    sget-object v3, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Looper;

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mCustomCarrierObserver:[Landroid/database/ContentObserver;

    new-instance v4, Lcom/android/keyguard/CarrierText$4;

    invoke-direct {v4, p0, v1}, Lcom/android/keyguard/CarrierText$4;-><init>(Lcom/android/keyguard/CarrierText;Landroid/os/Handler;)V

    aput-object v4, v3, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status_bar_custom_carrier"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mCustomCarrierObserver:[Landroid/database/ContentObserver;

    aget-object v4, v4, v2

    invoke-virtual {v3, v0, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "status_bar_show_carrier_under_keyguard"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/CarrierText;->mShowCarrierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    return-void
.end method


# virtual methods
.method public forceHide(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mForceHide:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/CarrierText;->mForceHide:Z

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mForceHide:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/CarrierText;->mSupportNetwork:Z

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->initCarrier()V

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->registerObservers()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCarrierNameListener(Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;)V

    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->isCMTest()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addMobileTypeListener(Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mSupportNetwork:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setTextColor(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mSupportNetwork:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->unregisterObservers()V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCarrierNameListener(Lcom/android/systemui/statusbar/policy/NetworkController$CarrierNameListener;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->isCMTest()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeMobileTypeListener(Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;)V

    :cond_1
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mEmergencyOnly:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/CarrierText;->mEmergencyOnly:Z

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    :cond_0
    return-void
.end method

.method public setShowStyle(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/CarrierText;->mShowStyle:I

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    return-void
.end method

.method public unregisterObservers()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mCustomCarrierObserver:[Landroid/database/ContentObserver;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mShowCarrierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateCarrier()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/CarrierText$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierText$5;-><init>(Lcom/android/keyguard/CarrierText;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateCarrierName(ILjava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimCarrier:[Ljava/lang/String;

    aput-object p2, v0, p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    return-void
.end method

.method public updateMobileTypeName(ILjava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/CarrierText;->mPhoneCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mMobileType:[Ljava/lang/String;

    aput-object p2, v0, p1

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    :cond_0
    return-void
.end method
