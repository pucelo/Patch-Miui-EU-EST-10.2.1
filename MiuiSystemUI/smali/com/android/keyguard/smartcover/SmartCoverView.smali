.class public abstract Lcom/android/keyguard/smartcover/SmartCoverView;
.super Landroid/widget/RelativeLayout;
.source "SmartCoverView.java"

# interfaces
.implements Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryCompleteListener;


# instance fields
.field private SMS_INBOX_URI:Landroid/net/Uri;

.field private mBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/smartcover/ContentProviderBinder;",
            ">;"
        }
    .end annotation
.end field

.field protected mCharging:Z

.field protected mFull:Z

.field protected mLevel:I

.field protected mLowBatteryWarningLevel:I

.field protected mMissCallNum:I

.field protected mShowMissCall:Z

.field protected mShowSms:Z

.field protected mSmsNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->SMS_INBOX_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mBinders:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->SMS_INBOX_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mBinders:Ljava/util/ArrayList;

    return-void
.end method

.method private fillMissedCall()V
    .locals 4

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "number"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string/jumbo v1, "type=3 AND new=1"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/smartcover/SmartCoverView;->addContentProviderBinder(Landroid/net/Uri;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->setColumns([Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->setWhere(Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    move-result-object v2

    const-string/jumbo v3, "call_missed_count"

    invoke-virtual {v2, v3}, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->setCountName(Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    return-void
.end method

.method private fillUnreadSms()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->SMS_INBOX_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/SmartCoverView;->addContentProviderBinder(Landroid/net/Uri;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->setColumns([Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    move-result-object v0

    const-string/jumbo v1, "seen=0 AND read=0"

    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->setWhere(Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    move-result-object v0

    const-string/jumbo v1, "sms_unread_count"

    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->setCountName(Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    return-void
.end method


# virtual methods
.method public addContentProviderBinder(Landroid/net/Uri;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;
    .locals 2

    new-instance v0, Lcom/android/keyguard/smartcover/ContentProviderBinder;

    iget-object v1, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/smartcover/ContentProviderBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/keyguard/smartcover/ContentProviderBinder;->setQueryCompleteListener(Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryCompleteListener;)V

    invoke-virtual {v0, p1}, Lcom/android/keyguard/smartcover/ContentProviderBinder;->setUri(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    invoke-direct {v1, v0}, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;-><init>(Lcom/android/keyguard/smartcover/ContentProviderBinder;)V

    return-object v1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/keyguard/smartcover/SmartCoverView;->fillMissedCall()V

    invoke-direct {p0}, Lcom/android/keyguard/smartcover/SmartCoverView;->fillUnreadSms()V

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mBinders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/smartcover/ContentProviderBinder;

    invoke-virtual {v0}, Lcom/android/keyguard/smartcover/ContentProviderBinder;->init()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBatteryInfoRefresh(ZZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mCharging:Z

    iput-boolean p2, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mFull:Z

    iput p3, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mLevel:I

    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/SmartCoverView;->refresh()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mBinders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/smartcover/ContentProviderBinder;

    invoke-virtual {v0}, Lcom/android/keyguard/smartcover/ContentProviderBinder;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mLowBatteryWarningLevel:I

    return-void
.end method

.method public onQueryCompleted(Landroid/net/Uri;I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez p2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mShowMissCall:Z

    iput p2, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mMissCallNum:I

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/SmartCoverView;->refresh()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->SMS_INBOX_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez p2, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mShowSms:Z

    iput p2, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mSmsNum:I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected abstract refresh()V
.end method
