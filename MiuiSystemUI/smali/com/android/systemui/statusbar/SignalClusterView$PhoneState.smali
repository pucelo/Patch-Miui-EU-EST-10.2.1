.class public Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
.super Ljava/lang/Object;
.source "SignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalClusterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PhoneState"
.end annotation


# instance fields
.field public mActivityIn:Z

.field public mActivityOut:Z

.field private mDataActivityId:I

.field private mDataConnected:Z

.field private mIsDefaultDataSim:Z

.field private mIsMobileTypeIconWide:Z

.field private mLastMobileStrengthId:I

.field private mLastMobileTypeId:I

.field private mMobile:Landroid/widget/ImageView;

.field private mMobileDescription:Ljava/lang/String;

.field protected mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileInOut:Landroid/widget/ImageView;

.field private mMobileInOutId:I

.field private mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileSignalUpgrade:Landroid/widget/ImageView;

.field public mMobileStrengthId:I

.field private mMobileType:Landroid/widget/TextView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field public mMobileTypeId:I

.field public mMobileVisible:Z

.field private mMobileVoice:Landroid/widget/TextView;

.field private mMobileVoiceLabel:Ljava/lang/String;

.field private mNotchVolte:Landroid/widget/ImageView;

.field public mRoaming:Z

.field public final mSlot:I

.field private mSmallRoam:Landroid/widget/ImageView;

.field private mSpeechHd:Landroid/widget/ImageView;

.field private mStackedDataId:I

.field private mStackedVoiceId:I

.field private mVolte:Landroid/widget/ImageView;

.field private mVolteNoService:Landroid/widget/ImageView;

.field private mWcdmaCardSlot:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;ILandroid/content/Context;)V
    .locals 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0086

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setViews(Landroid/view/ViewGroup;)V

    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    return-void
.end method

.method private is4Gplus(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "4G+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateMobileType(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->is4Gplus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "4G"

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get5(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->updateMobileTypeForNormal(ZLjava/lang/String;)Z

    move-result v1

    return v1

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->updateMobileTypeForNotchEarDual(ZLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private updateMobileTypeForNormal(ZLjava/lang/String;)Z
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return p1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateMobileTypeForNotchEarDual(ZLjava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataConnected:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/SignalClusterView;->mDataConnectedStatus:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/SignalClusterView;->mDataConnectedStatus:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsDefaultDataSim:Z

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v1, v3, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v0, :cond_3

    :goto_1
    return p1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move p1, v2

    goto :goto_1
.end method


# virtual methods
.method public apply(Z)Z
    .locals 10

    const v9, 0x7f0805e2

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get6(Lcom/android/systemui/statusbar/SignalClusterView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v8, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->-set0(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get5(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get3(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2c

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    if-eqz v2, :cond_b

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataConnected:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mDataConnectedStatus:[Z

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataConnected:Z

    aput-boolean v7, v2, v6

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->updateMobileType(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get5(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-nez v2, :cond_14

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    if-eq v2, v6, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->isNotSignalSimpleDualShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get8(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap0(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-nez v2, :cond_c

    :cond_4
    move v2, v5

    :goto_1
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalUpgrade:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    :goto_2
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalUpgrade:Landroid/widget/ImageView;

    const v7, 0x7f080609

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap0(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_e

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoiceLabel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoiceLabel:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Z

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->bigRoamEnable()Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v4

    :goto_4
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->bigRoamEnable()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSmallRoam:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->isNotSignalSimpleDualShowing()Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v4

    :goto_5
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    if-eqz v2, :cond_11

    const v2, 0x7f0805fa

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    :goto_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/SignalClusterView;->-get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/SignalClusterView;->-get8(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataConnected:Z

    if-eqz v6, :cond_8

    move v5, v4

    :cond_8
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get5(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    :goto_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mDualSignalDescription:[Ljava/lang/String;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/SignalClusterView;->mDualSignalDescription:[Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/SignalClusterView;->mDualSignalDescription:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/SignalClusterView;->mDualSignalDescription:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_8
    sget-boolean v2, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string/jumbo v5, "SignalClusterView"

    const-string/jumbo v6, "mobile: %s sig=%d typ=%d"

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v2, :cond_2d

    const-string/jumbo v2, "VISIBLE"

    :goto_9
    aput-object v2, v7, v4

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return v2

    :cond_b
    move v2, v4

    goto/16 :goto_0

    :cond_c
    move v2, v4

    goto/16 :goto_1

    :cond_d
    move v2, v5

    goto/16 :goto_2

    :cond_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_f
    move v2, v5

    goto/16 :goto_4

    :cond_10
    move v2, v5

    goto/16 :goto_5

    :cond_11
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-nez v2, :cond_12

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    if-eqz v2, :cond_12

    const v2, 0x7f080603

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    goto/16 :goto_6

    :cond_12
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-eqz v2, :cond_13

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_13

    const v2, 0x7f0805f8

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    goto/16 :goto_6

    :cond_13
    iput v9, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    goto/16 :goto_6

    :cond_14
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobile:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/Icons;->getSignalHalfId(Ljava/lang/Integer;)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    :cond_15
    :goto_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mDataConnectedStatus:[Z

    aget-boolean v2, v2, v4

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mDataConnectedStatus:[Z

    aget-boolean v2, v2, v3

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileInout:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsDefaultDataSim:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get8(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap0(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_17

    :cond_16
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-nez v2, :cond_1a

    :cond_17
    move v2, v5

    :goto_b
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileUpgrade:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap0(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_18
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_1b

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoiceLabel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileVoice:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoiceLabel:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileVoice:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_19
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    if-ne v2, v3, :cond_15

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobile2:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/Icons;->getSignalHalfId(Ljava/lang/Integer;)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_a

    :cond_1a
    move v2, v4

    goto :goto_b

    :cond_1b
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileVoice:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_1c
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataConnected:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get8(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap0(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1e

    :cond_1d
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-nez v2, :cond_22

    :cond_1e
    move v2, v5

    :goto_c
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileUpgrade:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap0(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_1f
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_23

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoiceLabel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileVoice:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoiceLabel:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileVoice:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    if-eqz v2, :cond_29

    const v2, 0x7f0805fa

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    :goto_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileInout:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileInout:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/SignalClusterView;->-get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v6

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/SignalClusterView;->-get8(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v6

    if-eqz v6, :cond_21

    :cond_20
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataConnected:Z

    if-eqz v6, :cond_21

    move v5, v4

    :cond_21
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_22
    move v2, v4

    goto :goto_c

    :cond_23
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileVoice:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d

    :cond_24
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileVoice:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get8(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap0(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_26

    :cond_25
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-nez v2, :cond_27

    :cond_26
    move v2, v5

    :goto_f
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileUpgrade:Landroid/widget/ImageView;

    if-eqz v0, :cond_28

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    :goto_10
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileUpgrade:Landroid/widget/ImageView;

    const v7, 0x7f080609

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_d

    :cond_27
    move v2, v4

    goto :goto_f

    :cond_28
    move v2, v5

    goto :goto_10

    :cond_29
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-nez v2, :cond_2a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    if-eqz v2, :cond_2a

    const v2, 0x7f080603

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    goto/16 :goto_e

    :cond_2a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-eqz v2, :cond_2b

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2b

    const v2, 0x7f0805f8

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    goto/16 :goto_e

    :cond_2b
    iput v9, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    goto/16 :goto_e

    :cond_2c
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    :cond_2d
    const-string/jumbo v2, "GONE"

    goto/16 :goto_9
.end method

.method protected bigRoamEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-get0(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    return v0
.end method

.method public populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 4

    const v3, 0x7f080609

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setTextColor()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-get5(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    const v2, 0x7f0803bc

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalUpgrade:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mNotchVolte:Landroid/widget/ImageView;

    const v2, 0x7f0805f2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSmallRoam:Landroid/widget/ImageView;

    const v2, 0x7f0803be

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mVolte:Landroid/widget/ImageView;

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_MX_TELCEL:Z

    if-eqz v0, :cond_1

    const v0, 0x7f08060c

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSpeechHd:Landroid/widget/ImageView;

    const v2, 0x7f080613

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mVolteNoService:Landroid/widget/ImageView;

    const v2, 0x7f080625

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v0, 0x7f08060b

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobile:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/Icons;->getSignalHalfId(Ljava/lang/Integer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileInout:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileUpgrade:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobile2:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/Icons;->getSignalHalfId(Ljava/lang/Integer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    goto :goto_2
.end method

.method public setIsDefaultDataSim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsDefaultDataSim:Z

    return-void
.end method

.method public setIsImsRegisted(Z)V
    .locals 4

    const/16 v1, 0x8

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mVolte:Landroid/widget/ImageView;

    sget-boolean v3, Lcom/android/systemui/Constants;->STATUS_BAR_HIDE_VOLTE:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/SignalClusterView;->isNotSignalSimpleDualShowing()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mNotchVolte:Landroid/widget/ImageView;

    sget-boolean v3, Lcom/android/systemui/Constants;->STATUS_BAR_HIDE_VOLTE:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/SignalClusterView;->isNotSignalSimpleDualShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setMobile(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setNetworkNameVoice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoiceLabel:Ljava/lang/String;

    return-void
.end method

.method public setSpeechHd(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSpeechHd:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTextColor()V
    .locals 7

    const v2, 0x7f060181

    const v4, 0x7f06018a

    const/4 v6, 0x0

    const v3, 0x7f060189

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get5(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get7(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)F

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get7(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)F

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get7(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)F

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_5

    const/4 v0, 0x1

    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    move v2, v3

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get5(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get7(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)F

    move-result v5

    invoke-static {v1, v2, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v0, :cond_9

    move v1, v4

    :goto_8
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get7(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)F

    move-result v5

    invoke-static {v1, v2, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_b

    :goto_a
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    move v1, v3

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    :cond_b
    move v4, v3

    goto :goto_a

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get7(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)F

    move-result v5

    invoke-static {v1, v2, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_d

    const/4 v0, 0x1

    :goto_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v0, :cond_e

    move v1, v4

    :goto_c
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileVoice:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_f

    :goto_d
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :cond_e
    move v1, v3

    goto :goto_c

    :cond_f
    move v4, v3

    goto :goto_d
.end method

.method public setViews(Landroid/view/ViewGroup;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0a01b6

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    const v0, 0x7f0a01bc

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    const v0, 0x7f0a01ba

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalUpgrade:Landroid/widget/ImageView;

    const v0, 0x7f0a0313

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mVolte:Landroid/widget/ImageView;

    const v0, 0x7f0a0314

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mVolteNoService:Landroid/widget/ImageView;

    const v0, 0x7f0a01dd

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mNotchVolte:Landroid/widget/ImageView;

    const v0, 0x7f0a029c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSmallRoam:Landroid/widget/ImageView;

    const v0, 0x7f0a02a7

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSpeechHd:Landroid/widget/ImageView;

    const v0, 0x7f0a007a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    const v0, 0x7f0a01b5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    const v0, 0x7f0a01b4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    const v0, 0x7f0a0079

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mWcdmaCardSlot:Landroid/widget/ImageView;

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_MX_TELCEL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mVolte:Landroid/widget/ImageView;

    const v1, 0x7f08060c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setVolteNoService(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mVolteNoService:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
