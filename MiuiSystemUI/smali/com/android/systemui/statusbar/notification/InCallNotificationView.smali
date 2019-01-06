.class public Lcom/android/systemui/statusbar/notification/InCallNotificationView;
.super Landroid/widget/LinearLayout;
.source "InCallNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAnswerIcon:Landroid/widget/ImageView;

.field private mCallerInfo:Landroid/widget/TextView;

.field private mCallerName:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mEndCallIcon:Landroid/widget/ImageView;

.field private mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

.field private mIsVideoCall:Z

.field private mMiuiVoipManager:Lcom/miui/voiptalk/service/MiuiVoipManager;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSubId:I

.field private mTelephonyManager:Lmiui/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/notification/InCallNotificationView;)Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->setClipToPadding(Z)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mContext:Landroid/content/Context;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mTelephonyManager:Lmiui/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mMiuiVoipManager:Lcom/miui/voiptalk/service/MiuiVoipManager;

    return-void
.end method

.method private updateAnswerIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mTelephonyManager:Lmiui/telephony/TelephonyManager;

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mIsVideoCall:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mAnswerIcon:Landroid/widget/ImageView;

    const v1, 0x7f08072a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mAnswerIcon:Landroid/widget/ImageView;

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mAnswerIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mMiuiVoipManager:Lcom/miui/voiptalk/service/MiuiVoipManager;

    invoke-virtual {v0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f08072d

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f08072c

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InCallNotificationView"

    const-string/jumbo v1, "hide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;->onInCallNotificationHide()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mCallerName:Landroid/widget/TextView;

    const v0, 0x7f0a0073

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mCallerInfo:Landroid/widget/TextView;

    const v0, 0x7f0a00ca

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mEndCallIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mAnswerIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mEndCallIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/InCallNotificationView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView$1;-><init>(Lcom/android/systemui/statusbar/notification/InCallNotificationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mAnswerIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/InCallNotificationView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView$2;-><init>(Lcom/android/systemui/statusbar/notification/InCallNotificationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/InCallNotificationView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView$3;-><init>(Lcom/android/systemui/statusbar/notification/InCallNotificationView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setInCallCallback(Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    return-void
.end method

.method public show()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InCallNotificationView"

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;->onInCallNotificationShow()V

    :cond_1
    return-void
.end method

.method public updateInfo(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_0

    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1020438

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mCallerName:Landroid/widget/TextView;

    if-nez v1, :cond_2

    const-string/jumbo v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mCallerInfo:Landroid/widget/TextView;

    if-nez v0, :cond_3

    const-string/jumbo v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v2, "phoneNumber"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mPhoneNumber:Ljava/lang/String;

    const-string/jumbo v2, "subId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mSubId:I

    const-string/jumbo v2, "isVideoCall"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->mIsVideoCall:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->updateAnswerIcon()V

    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
