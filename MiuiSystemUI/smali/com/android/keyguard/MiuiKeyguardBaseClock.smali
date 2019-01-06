.class public Lcom/android/keyguard/MiuiKeyguardBaseClock;
.super Landroid/widget/LinearLayout;
.source "MiuiKeyguardBaseClock.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDisplaySimCardInfo:Z

.field protected mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field protected mOwnerInfoString:Ljava/lang/String;

.field protected mPhoneCount:I

.field protected mRealCarrier:[Ljava/lang/String;

.field private mRealCarrierObserver:[Landroid/database/ContentObserver;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MiuiKeyguardBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mResources:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mOwnerInfoString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mDisplaySimCardInfo:Z

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public initCarrier(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2, p1}, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;-><init>(Lcom/android/keyguard/MiuiKeyguardBaseClock;Landroid/os/Handler;I)V

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mDisplaySimCardInfo:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    array-length v2, v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mPhoneCount:I

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_bar_real_carrier"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mPhoneCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mDisplaySimCardInfo:Z

    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mDisplaySimCardInfo:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mPhoneCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrier:[Ljava/lang/String;

    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mPhoneCount:I

    new-array v0, v0, [Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method public updateSimCardInfo()V
    .locals 0

    return-void
.end method
