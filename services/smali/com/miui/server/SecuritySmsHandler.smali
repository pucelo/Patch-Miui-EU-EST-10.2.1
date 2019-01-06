.class Lcom/miui/server/SecuritySmsHandler;
.super Ljava/lang/Object;
.source "SecuritySmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/SecuritySmsHandler$1;,
        Lcom/miui/server/SecuritySmsHandler$2;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInterceptSmsCallerPkgName:Ljava/lang/String;

.field private mInterceptSmsCallerUid:I

.field private mInterceptSmsCount:I

.field private mInterceptSmsLock:Ljava/lang/Object;

.field private mInterceptSmsSenderNum:Ljava/lang/String;

.field private mInterceptedSmsResultReceiver:Landroid/content/BroadcastReceiver;

.field private mNormalMsgResultReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/miui/server/SecuritySmsHandler;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchNormalSms(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchSmsToAntiSpam(Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    new-instance v0, Lcom/miui/server/SecuritySmsHandler$1;

    invoke-direct {v0, p0}, Lcom/miui/server/SecuritySmsHandler$1;-><init>(Lcom/miui/server/SecuritySmsHandler;)V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalMsgResultReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/server/SecuritySmsHandler$2;

    invoke-direct {v0, p0}, Lcom/miui/server/SecuritySmsHandler$2;-><init>(Lcom/miui/server/SecuritySmsHandler;)V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptedSmsResultReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/miui/server/SecuritySmsHandler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8

    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lmiui/provider/ExtraTelephony;->getSmsBlockType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "SecurityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkByAntiSpam : blockType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private checkWithInterceptedSender(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    const-string/jumbo v1, "SecurityManagerService"

    const-string/jumbo v3, "checkWithInterceptedSender: callerUid:%d, senderNum:%s, count:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget v5, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    if-lez v1, :cond_42

    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    const/4 v0, 0x1

    :cond_42
    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    if-nez v1, :cond_49

    invoke-direct {p0}, Lcom/miui/server/SecuritySmsHandler;->releaseSmsIntercept()V
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_4b

    :cond_49
    monitor-exit v2

    return v0

    :catchall_4b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .registers 14

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/server/SecuritySmsHandler;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchMmsToAntiSpam(Landroid/content/Intent;)V
    .registers 5

    const/4 v2, 0x0

    const-string/jumbo v0, "SecurityManagerService"

    const-string/jumbo v1, "dispatchMmsToAntiSpam"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v0, "com.android.mms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.permission.RECEIVE_SMS"

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private dispatchNormalMms(Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v1, "SecurityManagerService"

    const-string/jumbo v2, "dispatchNormalMms"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "SecurityManagerService"

    const-string/jumbo v2, "Delivering MMS to: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalMsgResultReceiver:Landroid/content/BroadcastReceiver;

    const/16 v3, 0x10

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private dispatchNormalSms(Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v1, "SecurityManagerService"

    const-string/jumbo v2, "dispatchNormalSms"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "SecurityManagerService"

    const-string/jumbo v2, "Delivering SMS to: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalMsgResultReceiver:Landroid/content/BroadcastReceiver;

    const/16 v3, 0x10

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private dispatchSmsToAntiSpam(Landroid/content/Intent;)V
    .registers 5

    const/4 v2, 0x0

    const-string/jumbo v0, "SecurityManagerService"

    const-string/jumbo v1, "dispatchSmsToAntiSpam"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v0, "com.android.mms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.permission.RECEIVE_SMS"

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private dispatchToInterceptApp(Landroid/content/Intent;)V
    .registers 5

    const-string/jumbo v0, "SecurityManagerService"

    const-string/jumbo v1, "dispatchToInterceptApp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.permission.RECEIVE_SMS"

    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptedSmsResultReceiver:Landroid/content/BroadcastReceiver;

    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static getSlotIdFromIntent(Landroid/content/Intent;)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1d

    sget-object v1, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_1d

    const-string/jumbo v1, "SecurityManagerService"

    const-string/jumbo v2, "getSlotIdFromIntent slotId < 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return v0
.end method

.method private releaseSmsIntercept()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    return-void
.end method


# virtual methods
.method checkSmsBlocked(Landroid/content/Intent;)Z
    .registers 33

    const-string/jumbo v27, "SecurityManagerService"

    const-string/jumbo v28, "enter checkSmsBlocked"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0x13

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_15

    return v7

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/miui/server/SecuritySmsHandler;->getSlotIdFromIntent(Landroid/content/Intent;)I

    move-result v25

    const-string/jumbo v27, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_bd

    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v17

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    :goto_33
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_4e

    aget-object v27, v17, v16

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v16, v16, 0x1

    goto :goto_33

    :cond_4e
    const/16 v27, 0x0

    aget-object v27, v17, v27

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/server/SecuritySmsHandler;->checkWithInterceptedSender(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6f

    const-string/jumbo v27, "SecurityManagerService"

    const-string/jumbo v28, "Intercepted by sender address"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchToInterceptApp(Landroid/content/Intent;)V

    const/4 v7, 0x1

    :cond_6f
    if-nez v7, :cond_9e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v4, v8, v1}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_9e

    const-string/jumbo v27, "blockType"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v6}, Lmiui/provider/ExtraTelephony;->getRealBlockType(I)I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_9e

    const-string/jumbo v27, "SecurityManagerService"

    const-string/jumbo v28, "This sms is intercepted by AntiSpam"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchSmsToAntiSpam(Landroid/content/Intent;)V

    const/4 v7, 0x1

    :cond_9e
    :goto_9e
    const-string/jumbo v27, "SecurityManagerService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "leave checkSmsBlocked, blocked:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_bd
    const-string/jumbo v27, "android.provider.Telephony.WAP_PUSH_DELIVER"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9e

    const-string/jumbo v27, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v23

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x112007e

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    const-string/jumbo v4, ""

    :try_start_e1
    const-string/jumbo v27, "com.google.android.mms.pdu.PduParser"

    invoke-static/range {v27 .. v27}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v21

    const-string/jumbo v27, "com.google.android.mms.pdu.GenericPdu"

    invoke-static/range {v27 .. v27}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    const-string/jumbo v27, "com.google.android.mms.pdu.EncodedStringValue"

    invoke-static/range {v27 .. v27}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "com.google.android.mms.pdu.PduPersister"

    invoke-static/range {v27 .. v27}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const-class v28, [B

    const/16 v29, 0x0

    aput-object v28, v27, v29

    sget-object v28, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v29, 0x1

    aput-object v28, v27, v29

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v27

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v23, v28, v29

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    const/16 v30, 0x1

    aput-object v29, v28, v30

    invoke-virtual/range {v27 .. v28}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    const-string/jumbo v27, "parse"

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    const-string/jumbo v27, "getFrom"

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const-string/jumbo v27, "getTextString"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v15, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    const-string/jumbo v27, "toIsoString"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    const-class v29, [B

    const/16 v30, 0x0

    aput-object v29, v28, v30

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v5, v28, v29

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_1b4
    .catch Ljava/lang/InstantiationException; {:try_start_e1 .. :try_end_1b4} :catch_1fb
    .catch Ljava/lang/IllegalAccessException; {:try_start_e1 .. :try_end_1b4} :catch_1f6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e1 .. :try_end_1b4} :catch_1f1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e1 .. :try_end_1b4} :catch_1ec
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e1 .. :try_end_1b4} :catch_1e7

    :goto_1b4
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v25

    invoke-direct {v0, v4, v1, v2}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_9e

    const-string/jumbo v27, "blockType"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v6}, Lmiui/provider/ExtraTelephony;->getRealBlockType(I)I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_9e

    const-string/jumbo v27, "SecurityManagerService"

    const-string/jumbo v28, "This mms is intercepted by AntiSpam"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchMmsToAntiSpam(Landroid/content/Intent;)V

    const/4 v7, 0x1

    goto/16 :goto_9e

    :catch_1e7
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1b4

    :catch_1ec
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b4

    :catch_1f1
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1b4

    :catch_1f6
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1b4

    :catch_1fb
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1b4
.end method

.method startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9

    const/4 v4, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_8

    return v4

    :cond_8
    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.miui.permission.MANAGE_SMS_INTERCEPT"

    const-string/jumbo v3, "SecurityManagerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1a
    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-nez v1, :cond_29

    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    iput p3, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_2b

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_29
    monitor-exit v2

    return v4

    :catchall_2b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method stopInterceptSmsBySender()Z
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_9

    return v4

    :cond_9
    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.miui.permission.MANAGE_SMS_INTERCEPT"

    const-string/jumbo v3, "SecurityManagerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1b
    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_2c

    if-nez v1, :cond_21

    monitor-exit v2

    return v5

    :cond_21
    :try_start_21
    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-ne v1, v0, :cond_2a

    invoke-direct {p0}, Lcom/miui/server/SecuritySmsHandler;->releaseSmsIntercept()V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2c

    monitor-exit v2

    return v5

    :cond_2a
    monitor-exit v2

    return v4

    :catchall_2c
    move-exception v1

    monitor-exit v2

    throw v1
.end method
