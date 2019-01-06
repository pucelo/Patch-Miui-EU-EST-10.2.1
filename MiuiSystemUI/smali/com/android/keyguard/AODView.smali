.class public Lcom/android/keyguard/AODView;
.super Landroid/widget/FrameLayout;
.source "AODView.java"

# interfaces
.implements Lcom/android/keyguard/util/ContentProviderBinder$QueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/AODView$1;,
        Lcom/android/keyguard/AODView$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m24HourFormat:Z

.field mAnimateInvisible:Ljava/lang/Runnable;

.field private mAodBg:Landroid/widget/ImageView;

.field private mBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/util/ContentProviderBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mClockColorType:I

.field private mClockHorizontal:Landroid/widget/TextView;

.field private mClockHourView:Landroid/widget/TextView;

.field private mClockMinuteView:Landroid/widget/TextView;

.field private mClockStyle:I

.field private mContext:Landroid/content/Context;

.field private mDateView:Landroid/widget/TextView;

.field private mEnableAnimate:Z

.field private mEnableAnimateObserver:Landroid/database/ContentObserver;

.field private mFirstIcon:Lcom/android/keyguard/BadgetImageView;

.field private mGradientLayout:Lcom/android/keyguard/GradientLinearLayout;

.field private mIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLeftImage:Landroid/widget/ImageView;

.field protected mMissCallNum:I

.field private mNotificationArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPosictionController:Lcom/android/keyguard/AODUpdatePositionController;

.field private mRegisteredCallLog:Z

.field private mRightImage:Landroid/widget/ImageView;

.field private mSecondIcon:Lcom/android/keyguard/BadgetImageView;

.field protected mShowMissCall:Z

.field private mTableModeContainer:Landroid/view/View;

.field private mThirdIcon:Lcom/android/keyguard/BadgetImageView;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/AODView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mIconList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/AODView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/AODView;->mEnableAnimate:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/AODView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/AODView;->handleUpdateIcons()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/AODView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/AODView;->showAnimate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/AODView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/AODView;->updateNotificationList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/keyguard/AODView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/AODView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/AODView;->mBinders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/AODView;->mIconMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/AODView;->mNotificationArray:Ljava/util/List;

    iput v1, p0, Lcom/android/keyguard/AODView;->mClockStyle:I

    iput v1, p0, Lcom/android/keyguard/AODView;->mClockColorType:I

    iput-boolean v1, p0, Lcom/android/keyguard/AODView;->mRegisteredCallLog:Z

    new-instance v0, Lcom/android/keyguard/AODView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AODView$1;-><init>(Lcom/android/keyguard/AODView;)V

    iput-object v0, p0, Lcom/android/keyguard/AODView;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/keyguard/AODView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AODView$2;-><init>(Lcom/android/keyguard/AODView;)V

    iput-object v0, p0, Lcom/android/keyguard/AODView;->mAnimateInvisible:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/AODView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/keyguard/AODUpdatePositionController;

    invoke-direct {v0, p1}, Lcom/android/keyguard/AODUpdatePositionController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/AODView;->mPosictionController:Lcom/android/keyguard/AODUpdatePositionController;

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.tencent.mm"

    const v2, 0x7f080732

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.tencent.mobileqq"

    const v2, 0x7f0802fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.whatsapp"

    const v2, 0x7f080733

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.facebook.orca"

    const v2, 0x7f0800af

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "jp.naver.line.android"

    const v2, 0x7f080252

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.google.android.gm"

    const v2, 0x7f0800ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.android.email"

    const v2, 0x7f080267

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.google.android.calendar"

    const v2, 0x7f0800c7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.android.calendar"

    const v2, 0x7f080081

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.android.server.telecom"

    const v2, 0x7f0802e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.android.mms"

    const v2, 0x7f08038c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private bindView(Lcom/android/keyguard/BadgetImageView;I)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lcom/android/keyguard/AODView;->getPkg(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/keyguard/AODView;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v3}, Lcom/android/keyguard/BadgetImageView;->setVisibility(I)V

    const-string/jumbo v4, "com.android.server.telecom"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v3, p0, Lcom/android/keyguard/AODView;->mMissCallNum:I

    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/keyguard/BadgetImageView;->setBadget(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/AODView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0xb2

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p1, v0}, Lcom/android/keyguard/BadgetImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_1
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/keyguard/BadgetImageView;->setVisibility(I)V

    goto :goto_0
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

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lcom/android/systemui/Util;->isProviderAccess(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->addContentProviderBinder(Landroid/net/Uri;)Lcom/android/keyguard/util/ContentProviderBinder$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/keyguard/util/ContentProviderBinder$Builder;->setColumns([Ljava/lang/String;)Lcom/android/keyguard/util/ContentProviderBinder$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/keyguard/util/ContentProviderBinder$Builder;->setWhere(Ljava/lang/String;)Lcom/android/keyguard/util/ContentProviderBinder$Builder;

    :cond_0
    return-void
.end method

.method private getPkg(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mNotificationArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/AODView;->mNotificationArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private handleUpdateDate()V
    .locals 6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0, v2}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iget-object v3, p0, Lcom/android/keyguard/AODView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v3, p0, Lcom/android/keyguard/AODView;->m24HourFormat:Z

    if-eqz v3, :cond_0

    const v3, 0x7f1103b9

    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v3, p0, Lcom/android/keyguard/AODView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v3, 0x7f1103ba

    goto :goto_0
.end method

.method private handleUpdateIcons()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mFirstIcon:Lcom/android/keyguard/BadgetImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/AODView;->bindView(Lcom/android/keyguard/BadgetImageView;I)V

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mSecondIcon:Lcom/android/keyguard/BadgetImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/AODView;->bindView(Lcom/android/keyguard/BadgetImageView;I)V

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mThirdIcon:Lcom/android/keyguard/BadgetImageView;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/AODView;->bindView(Lcom/android/keyguard/BadgetImageView;I)V

    return-void
.end method

.method private handleUpdateTime()V
    .locals 13

    const/16 v12, 0x14

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0, v4}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Lcom/android/keyguard/AODView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/Utils;->getHourMinformat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x12

    invoke-virtual {v0, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-boolean v6, p0, Lcom/android/keyguard/AODView;->m24HourFormat:Z

    if-nez v6, :cond_0

    const/16 v6, 0xc

    if-le v1, v6, :cond_0

    add-int/lit8 v1, v1, -0xc

    :cond_0
    iget-boolean v6, p0, Lcom/android/keyguard/AODView;->m24HourFormat:Z

    if-nez v6, :cond_1

    if-nez v1, :cond_1

    const/16 v1, 0xc

    :cond_1
    iget-object v6, p0, Lcom/android/keyguard/AODView;->mClockHourView:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/AODView;->mClockHourView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/AODView;->mClockMinuteView:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/AODView;->mClockMinuteView:Landroid/widget/TextView;

    const-string/jumbo v7, "%02d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v0, v12}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/AODView;->mClockHorizontal:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/AODView;->mClockHorizontal:Landroid/widget/TextView;

    const-string/jumbo v7, "%d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v0, v12}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private makeNormalPanel()V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "fonts/Mitype2018-clock.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/AODView;->refreshClockStyle()V

    const v2, 0x7f0a0096

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iget v2, p0, Lcom/android/keyguard/AODView;->mClockStyle:I

    if-nez v2, :cond_4

    const v2, 0x7f0d001b

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f0a0088

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/AODView;->mTableModeContainer:Landroid/view/View;

    const v2, 0x7f0a008a

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/AODView;->mClockHourView:Landroid/widget/TextView;

    const v2, 0x7f0a008b

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/AODView;->mClockMinuteView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mClockHourView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mClockHourView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/AODView;->mClockMinuteView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mClockMinuteView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    const v2, 0x7f0a00a1

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/AODView;->mDateView:Landroid/widget/TextView;

    const v2, 0x7f0a00d9

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/BadgetImageView;

    iput-object v2, p0, Lcom/android/keyguard/AODView;->mFirstIcon:Lcom/android/keyguard/BadgetImageView;

    const v2, 0x7f0a027f

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/BadgetImageView;

    iput-object v2, p0, Lcom/android/keyguard/AODView;->mSecondIcon:Lcom/android/keyguard/BadgetImageView;

    const v2, 0x7f0a02c9

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/BadgetImageView;

    iput-object v2, p0, Lcom/android/keyguard/AODView;->mThirdIcon:Lcom/android/keyguard/BadgetImageView;

    const v2, 0x7f0a002d

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/AODView;->mAodBg:Landroid/widget/ImageView;

    const v2, 0x7f0a0089

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/AODView;->mClockHorizontal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mClockHorizontal:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/keyguard/AODView;->mClockStyle:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    const v2, 0x7f0a00fe

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/GradientLinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/AODView;->mGradientLayout:Lcom/android/keyguard/GradientLinearLayout;

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/AODView;->m24HourFormat:Z

    const v2, 0x7f0a002e

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/AODView;->mLeftImage:Landroid/widget/ImageView;

    const v2, 0x7f0a0030

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/AODView;->mRightImage:Landroid/widget/ImageView;

    return-void

    :cond_4
    iget v2, p0, Lcom/android/keyguard/AODView;->mClockStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const v2, 0x7f0d001d

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    goto/16 :goto_0

    :cond_5
    iget v2, p0, Lcom/android/keyguard/AODView;->mClockStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const v2, 0x7f0d001c

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    goto/16 :goto_0
.end method

.method private setAnimateInvisible()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/AODView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/AODView;->mAnimateInvisible:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/keyguard/AODView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/AODView;->mAnimateInvisible:Ljava/lang/Runnable;

    const-wide/16 v2, 0x960

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showAnimate(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/android/keyguard/AODView;->mEnableAnimate:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/keyguard/AODView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showAnimate pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/systemui/doze/DozeHost;->setNotificationAnimate(Z)V

    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/doze/DozeHost;->fireAnimateState()V

    iget-object v1, p0, Lcom/android/keyguard/AODView;->mLeftImage:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/keyguard/AODNotificationColor;->getColorItem(Ljava/lang/String;)Lcom/android/keyguard/AODNotificationColor$ColorItem;

    move-result-object v2

    iget v2, v2, Lcom/android/keyguard/AODNotificationColor$ColorItem;->left:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/keyguard/AODView;->mRightImage:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/keyguard/AODNotificationColor;->getColorItem(Ljava/lang/String;)Lcom/android/keyguard/AODNotificationColor$ColorItem;

    move-result-object v2

    iget v2, v2, Lcom/android/keyguard/AODNotificationColor$ColorItem;->right:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/keyguard/AODView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x960

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/keyguard/AODView;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/keyguard/AODView;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/android/keyguard/AODView;->setAnimateInvisible()V

    return-void
.end method

.method private updateNotificationList()V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mIconList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mIconList:Ljava/util/List;

    new-instance v3, Lcom/android/keyguard/AODView$5;

    invoke-direct {v3, p0}, Lcom/android/keyguard/AODView$5;-><init>(Lcom/android/keyguard/AODView;)V

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mNotificationArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mIconList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mNotificationArray:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mNotificationArray:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mNotificationArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_1
    new-instance v2, Lcom/android/keyguard/AODView$6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/AODView$6;-><init>(Lcom/android/keyguard/AODView;)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/AODView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addContentProviderBinder(Landroid/net/Uri;)Lcom/android/keyguard/util/ContentProviderBinder$Builder;
    .locals 2

    new-instance v0, Lcom/android/keyguard/util/ContentProviderBinder;

    iget-object v1, p0, Lcom/android/keyguard/AODView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/util/ContentProviderBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/keyguard/util/ContentProviderBinder;->setQueryCompleteListener(Lcom/android/keyguard/util/ContentProviderBinder$QueryCompleteListener;)V

    invoke-virtual {v0, p1}, Lcom/android/keyguard/util/ContentProviderBinder;->setUri(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/keyguard/AODView;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/keyguard/util/ContentProviderBinder$Builder;

    invoke-direct {v1, v0}, Lcom/android/keyguard/util/ContentProviderBinder$Builder;-><init>(Lcom/android/keyguard/util/ContentProviderBinder;)V

    return-object v1
.end method

.method public handleUpdateView()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mPosictionController:Lcom/android/keyguard/AODUpdatePositionController;

    iget-object v1, p0, Lcom/android/keyguard/AODView;->mTableModeContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AODUpdatePositionController;->updatePosition(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/keyguard/AODView;->handleUpdateTime()V

    invoke-direct {p0}, Lcom/android/keyguard/AODView;->handleUpdateDate()V

    invoke-direct {p0}, Lcom/android/keyguard/AODView;->handleUpdateIcons()V

    return-void
.end method

.method public isAnimateEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/AODView;->mEnableAnimate:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Lcom/android/keyguard/AODView$3;

    invoke-virtual {p0}, Lcom/android/keyguard/AODView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/AODView$3;-><init>(Lcom/android/keyguard/AODView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/AODView;->mEnableAnimateObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mEnableAnimateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/AODView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wakeup_for_keyguard_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mEnableAnimateObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/AODView;->mIconList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/keyguard/AODView;->updateNotificationList()V

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    new-instance v1, Lcom/android/keyguard/AODView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/AODView$4;-><init>(Lcom/android/keyguard/AODView;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;->setListener(Lcom/android/systemui/statusbar/policy/NotificationChangeListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/AODView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/AODView;->mEnableAnimateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/AODView;->makeNormalPanel()V

    invoke-virtual {p0}, Lcom/android/keyguard/AODView;->handleUpdateView()V

    return-void
.end method

.method public onQueryCompleted(Landroid/net/Uri;I)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/keyguard/AODView;->mShowMissCall:Z

    iput p2, p0, Lcom/android/keyguard/AODView;->mMissCallNum:I

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/AODView;->handleUpdateIcons()V

    return-void
.end method

.method public onStartDoze()V
    .locals 3

    iget-boolean v2, p0, Lcom/android/keyguard/AODView;->mRegisteredCallLog:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/Utils;->isBootCompleted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/AODView;->fillMissedCall()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/AODView;->mRegisteredCallLog:Z

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mBinders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/ContentProviderBinder;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ContentProviderBinder;->init()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStopDoze()V
    .locals 3

    iget-boolean v2, p0, Lcom/android/keyguard/AODView;->mRegisteredCallLog:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/AODView;->mBinders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/ContentProviderBinder;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ContentProviderBinder;->finish()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/AODView;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/AODView;->mRegisteredCallLog:Z

    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/AODView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/AODView;->m24HourFormat:Z

    :cond_0
    return-void
.end method

.method refreshClockStyle()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/keyguard/AODView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_clock_style"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "horizontal"

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v5, p0, Lcom/android/keyguard/AODView;->mClockStyle:I

    :cond_0
    const-string/jumbo v3, "vertical"

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v6, p0, Lcom/android/keyguard/AODView;->mClockStyle:I

    :cond_1
    const-string/jumbo v3, "oneline"

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/keyguard/AODView;->mClockStyle:I

    :cond_2
    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/AODView;->mClockColorType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/keyguard/AODView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "refreshClockStyle"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
