.class public Lcom/android/systemui/statusbar/policy/MobileSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUPPORT_CA:Z


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private mDataNetType:I

.field private mDataState:I

.field private mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private final mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field private mEnableVolteForSlot:Z

.field private mIsCtSim:Z

.field private mIsFirstSimStateChange:Z

.field private mIsQcom:Z

.field private mIsShowVoiceType:Z

.field private mMccNncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileTypeListener:Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;

.field private final mNetworkNameDefault:Ljava/lang/String;

.field final mNetworkToIconLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mStyle:I

.field final mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

.field private mSupportDualVolte:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->needUpdateNetwork(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "support_ca"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->SUPPORT_CA:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lmiui/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V
    .locals 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MobileSignalController("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p7}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsFirstSimStateChange:Z

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isDualVolteSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSupportDualVolte:Z

    const-string/jumbo v1, "qcom"

    const-string/jumbo v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsQcom:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->STATUS_BAR_STYLE_DATA_VOICE:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mStyle:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;

    invoke-virtual {p7}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move-object/from16 v0, p9

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;ILandroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v1, 0x104030b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccNncList:Ljava/util/List;

    iget-boolean v1, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readIconsFromXml:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->readIconsFromXml(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mStyle:I

    invoke-virtual {p7}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p7}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v7, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v7, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    iput-boolean p3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    return-void

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    goto :goto_2
.end method

.method private generateIconGroup()V
    .locals 36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    const/4 v5, 0x5

    if-lt v2, v5, :cond_1

    const/16 v31, 0x5

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    const/4 v5, 0x5

    if-lt v2, v5, :cond_2

    const/16 v34, 0x5

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    const/4 v5, 0x5

    if-lt v2, v5, :cond_3

    const/4 v8, 0x5

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    move/from16 v27, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v32

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v35

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v29

    sget-object v13, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v18, v2, v5

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v3

    if-ltz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v3, v2, :cond_4

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateIconGroup invalid slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    move/from16 v31, v0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    move/from16 v34, v0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v8, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    goto :goto_2

    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateIconGroup slot:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " style:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mStyle:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " connected:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " inetCondition:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " roaming:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " level:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " voiceLevel:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " dataConnected:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " dataActivity:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataActivity:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " CS:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v35 .. v35}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ", PS:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDataNetTypeFromServiceState slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  isUsingCarrierAggregation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v6}, Landroid/telephony/ServiceStateCompat;->isUsingCarrierAggregation(Landroid/telephony/ServiceState;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    move/from16 v0, v29

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/NetworkTypeUtils;->getDataNetTypeFromServiceState(ILandroid/telephony/ServiceState;)I

    move-result v28

    if-eqz v28, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsShowVoiceType:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsShowVoiceType:Z

    if-eqz v2, :cond_11

    move/from16 v4, v35

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVoiceType(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v5, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v6, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v7, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataType(IIZZZI)V

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v3, v8, v0, v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalStrengthIcon(IIIZ)I

    move-result v23

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "singleSignalIcon:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v2, :cond_12

    if-ltz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataActivity:I

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataActivity(II)I

    move-result v26

    :goto_5
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->convertMobileStrengthIcon(I)I

    move-result v33

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unstackedSignalIcon:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move/from16 v0, v23

    move/from16 v1, v33

    if-eq v0, v1, :cond_9

    move/from16 v24, v23

    move/from16 v23, v33

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mStyle:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    if-nez v32, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataAndVoice()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static/range {v34 .. v34}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getStackedVoiceIcon(I)I

    move-result v25

    :cond_a
    :goto_6
    if-nez v25, :cond_b

    const/16 v24, 0x0

    :cond_b
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalStrengthDes(I)[I

    move-result-object v13

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalNullIcon(I)I

    move-result v16

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "singleSignalIcon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " dataActivityId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " stackedDataIcon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " stackedVoiceIcon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v2, 0x12

    move/from16 v0, v28

    if-ne v0, v2, :cond_14

    const/16 v30, 0x6

    const/16 v22, 0x6

    const/16 v20, 0x6

    const v19, 0x7f11004d

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsShowVoiceType:Z

    if-eqz v2, :cond_d

    const/16 v20, 0x0

    :cond_d
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDataNetType, dataTypeIcon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " qsDataTypeIcon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " dataContentDesc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    new-instance v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-static/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v9 .. v26}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZIIIII)V

    iput-object v9, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    return-void

    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_11
    move/from16 v4, v28

    goto/16 :goto_4

    :cond_12
    const/16 v26, 0x0

    goto/16 :goto_5

    :cond_13
    if-eqz v32, :cond_a

    if-eqz v26, :cond_a

    move/from16 v0, v31

    invoke-static {v0, v8}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getRoamingSignalIconId(II)I

    move-result v23

    goto/16 :goto_6

    :cond_14
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataTypeIcon(I)I

    move-result v30

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getQSDataTypeIcon(I)I

    move-result v22

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    aget v20, v2, v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataTypeDesc(I)I

    move-result v19

    goto/16 :goto_7
.end method

.method private getAlternateLteLevel(Landroid/telephony/SignalStrength;)I
    .locals 5

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0x2c

    if-le v0, v2, :cond_2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAlternateLteLevel lteRsrp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " rsrpLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    const/16 v2, -0x61

    if-lt v0, v2, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/16 v2, -0x69

    if-lt v0, v2, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    const/16 v2, -0x71

    if-lt v0, v2, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_5
    const/16 v2, -0x78

    if-lt v0, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/16 v2, -0x8c

    if-lt v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDataNetworkType()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method private getNumLevels()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "(unknown)"

    return-object v2

    :cond_0
    const-string/jumbo v2, "(null)"

    return-object v2
.end method

.method private getSimSlotIndex()I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSimSlotIndex, slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private getVoiceNetworkType()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    return v0
.end method

.method private getVoiceSignalLevel()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    goto :goto_0
.end method

.method private hasService()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCarrierNetworkChangeActive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    return v0
.end method

.method private isCdma()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->phoneType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChinaTelecomSim(I)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string/jumbo v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "46011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "46005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "45502"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "45507"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v2
.end method

.method private isDataDisabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isRoaming()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v3

    if-eq v3, v1, :cond_3

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/telephony/TelephonyManagerEx;->isNetworkRoamingForSlot(I)Z

    move-result v1

    return v1
.end method

.method private mapIconSets()V
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x13

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private needUpdateNetwork(I)Z
    .locals 3

    const/4 v2, 0x0

    const-class v1, Lcom/android/systemui/statusbar/CallStateController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CallStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CallStateController;->isMsim()Z

    move-result v1

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/CallStateController;->getCallState(I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSupportDualVolte:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsQcom:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private showDataAndVoice()Z
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mStyle:I

    if-eq v2, v4, :cond_0

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    if-eq v0, v5, :cond_1

    if-ne v0, v5, :cond_3

    :cond_1
    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    :cond_2
    :goto_0
    return v4

    :cond_3
    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0xe

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0x13

    if-eq v0, v2, :cond_1

    :cond_4
    return v3

    :cond_5
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    goto :goto_0
.end method

.method private updateCtSim(Landroid/content/Intent;I)V
    .locals 2

    const-string/jumbo v1, "ss"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isChinaTelecomSim(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCtSim:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCtSim:Z

    goto :goto_0
.end method

.method private updateDataSim()V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v0, v3, :cond_0

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    goto :goto_1
.end method

.method private updateDataType(IIZZZI)V
    .locals 10

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    aget-object v3, v4, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v5, "com.android.systemui"

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    :goto_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    const-string/jumbo v5, ""

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    :goto_1
    const-string/jumbo v4, "MobileSignalController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDataType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mSelectedDataTypeIcon[%d]=%d, mSelectedDataActivityIndex=%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    aget v8, v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    aget v8, v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    if-nez p3, :cond_1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    goto :goto_1

    :cond_1
    :pswitch_2
    if-nez p3, :cond_2

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x2

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x1

    aput v5, v4, p1

    goto/16 :goto_1

    :cond_2
    :pswitch_3
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c2

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/16 v5, 0x8

    aput v5, v4, p1

    goto/16 :goto_1

    :pswitch_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccNncList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x6

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c3

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    :cond_3
    :goto_2
    const-string/jumbo v4, "MobileSignalController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "datatype = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; show datatype="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; networkOperator="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    const/16 v4, 0xa

    if-eq p2, v4, :cond_5

    const/16 v4, 0x9

    if-ne p2, v4, :cond_6

    :cond_5
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x4

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c7

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x4

    aput v5, v4, p1

    goto :goto_2

    :cond_6
    const/16 v4, 0x8

    if-eq p2, v4, :cond_7

    const/16 v4, 0xf

    if-ne p2, v4, :cond_3

    :cond_7
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c7

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x5

    aput v5, v4, p1

    goto/16 :goto_2

    :cond_8
    const/16 v4, 0x8

    if-eq p2, v4, :cond_9

    const/16 v4, 0x9

    if-ne p2, v4, :cond_a

    :cond_9
    if-eqz p5, :cond_b

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x4

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c7

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x4

    aput v5, v4, p1

    goto/16 :goto_1

    :cond_a
    const/16 v4, 0xa

    if-eq p2, v4, :cond_9

    if-eqz p5, :cond_c

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c7

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x5

    aput v5, v4, p1

    goto/16 :goto_1

    :cond_b
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c2

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x2

    aput v5, v4, p1

    goto/16 :goto_1

    :cond_c
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c2

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x2

    aput v5, v4, p1

    goto/16 :goto_1

    :pswitch_5
    if-nez p3, :cond_d

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v5, 0x8

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c1

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x7

    aput v5, v4, p1

    goto/16 :goto_1

    :cond_d
    :pswitch_6
    if-nez p3, :cond_e

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v5, 0x8

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c1

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x6

    aput v5, v4, p1

    goto/16 :goto_1

    :cond_e
    :pswitch_7
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c2

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x2

    aput v5, v4, p1

    goto/16 :goto_1

    :pswitch_8
    if-eqz p4, :cond_10

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x6

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    const/16 v4, 0x13

    if-ne p2, v4, :cond_f

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x7

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    :cond_f
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c3

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    goto/16 :goto_1

    :cond_10
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v5, 0x9

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c9

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    goto/16 :goto_1

    :pswitch_9
    if-nez p3, :cond_11

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x1

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c6

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    goto/16 :goto_1

    :cond_11
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x7f0803c2

    aput v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v4, p1

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x2

    aput v5, v4, p1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private final updateTelephony()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTelephony: hasService="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " ss="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_9

    move v2, v3

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showRsrpSignalLevelforLTE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getAlternateLteLevel(Landroid/telephony/SignalStrength;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    move v4, v3

    :cond_3
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVoiceType(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eq v2, v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readIconsFromXml:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceSignalLevel()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    return-void

    :cond_9
    move v2, v4

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto/16 :goto_2
.end method

.method private updateVoiceType(II)V
    .locals 4

    const/4 v3, 0x3

    const-string/jumbo v1, ""

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2, p2}, Lmiui/telephony/TelephonyManagerEx;->getNetworkClass(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    sget-boolean v2, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->SUPPORT_CA:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v1, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameVoice:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-boolean v2, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string/jumbo v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDataState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDataNetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentIconId()I
    .locals 4

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-le v0, v2, :cond_0

    move v0, v2

    :cond_0
    aget v1, v1, v0

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalNullIcon(I)I

    move-result v1

    return v1
.end method

.method public getQsCurrentIconId()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getAirplaneModeState(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getCarrierChangeState(I)I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getState(IIZ)I

    move-result v0

    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getEmptyState(I)I

    move-result v0

    return v0

    :cond_4
    return v1
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCtSim(Landroid/content/Intent;I)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsFirstSimStateChange:Z

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsFirstSimStateChange:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/telephony/TelephonyManager;->getPhoneTypeForSlot(I)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->phoneType:I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "miui.intent.action.ACTION_ENHANCED_4G_LTE_MODE_CHANGE_FOR_SLOT1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "miui.intent.action.ACTION_ENHANCED_4G_LTE_MODE_CHANGE_FOR_SLOT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string/jumbo v1, "extra_is_enhanced_4g_lte_on"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mEnableVolteForSlot:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/telephony/TelephonyManager;->getPhoneTypeForSlot(I)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->phoneType:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readIconsFromXml:Z

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->generateIconGroup()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getContentDescription()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v1, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    move/from16 v17, v0

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-nez v1, :cond_5

    move/from16 v20, v17

    :goto_1
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    xor-int/lit8 v1, v1, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v4

    move-object/from16 v0, v16

    invoke-direct {v2, v1, v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-eqz v1, :cond_1

    if-eqz v20, :cond_7

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    :goto_3
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    xor-int/lit8 v1, v1, 0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getQsCurrentIconId()I

    move-result v4

    move-object/from16 v0, v16

    invoke-direct {v3, v1, v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v1, :cond_9

    const/4 v12, 0x0

    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez v1, :cond_c

    :goto_8
    and-int v20, v20, v17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mStyle:I

    if-nez v1, :cond_d

    const/4 v1, 0x1

    :goto_9
    and-int v20, v20, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v21

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_e

    const/4 v8, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameVoice:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNetworkNameVoice(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsDefaultDataSim(IZ)V

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedDataIcon:I

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedVoiceIcon:I

    move-object/from16 v0, v18

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v15, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v15}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZ)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mEnableVolteForSlot:Z

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegister:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    const/4 v4, 0x6

    if-eq v1, v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCtSim:Z

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->volteNoService:Z

    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->volteNoService:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSupportDualVolte:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v4

    if-eq v1, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->volteNoService:Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->volteNoService:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setVolteNoService(IZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileTypeListener:Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsShowVoiceType:Z

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameVoice:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileTypeListener:Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;

    move-object/from16 v0, v19

    invoke-interface {v1, v14, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;->updateMobileTypeName(ILjava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v20, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v12, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto/16 :goto_5

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_c
    const/16 v17, 0x1

    goto/16 :goto_8

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_a

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->volteNoService:Z

    goto/16 :goto_b

    :cond_10
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_c
.end method

.method public registerListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v2, 0x101e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method setActivity(I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eq p1, v4, :cond_2

    if-ne p1, v2, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eq p1, v4, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    :cond_0
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readIconsFromXml:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataActivity:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method public setAirplaneMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public setCarrierNetworkChangeMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readIconsFromXml:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setImsRegister(Lcom/android/systemui/statusbar/policy/CallbackHandler;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegister:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsImsRegisted(IZ)V

    return-void
.end method

.method public setMobileTypeListener(Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileTypeListener:Lcom/android/systemui/statusbar/policy/NetworkController$MobileTypeListener;

    return-void
.end method

.method public setSpeechHd(Lcom/android/systemui/statusbar/policy/CallbackHandler;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->speedHd:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSpeechHd(IZ)V

    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public setVowifi(Lcom/android/systemui/statusbar/policy/CallbackHandler;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->vowifi:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setVowifi(IZ)V

    return-void
.end method

.method public unregisterListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
