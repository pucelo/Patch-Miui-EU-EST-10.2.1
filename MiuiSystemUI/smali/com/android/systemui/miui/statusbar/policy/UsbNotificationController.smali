.class public Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;
.super Ljava/lang/Object;
.source "UsbNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;,
        Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$2;
    }
.end annotation


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCdInstallNotificationId:I

.field private mChargingNotificationId:I

.field private mContext:Landroid/content/Context;

.field private mDisableUsbBySim:Z

.field private final mDisableUsbObserver:Landroid/database/ContentObserver;

.field private mEnableUsbModeSelection:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsDialogShowing:Z

.field private mIsScreenshotMode:Z

.field private mMtpNotificationId:I

.field private mPlugType:I

.field private mPtpNotificationId:I

.field private mUsbAlert:Landroid/app/AlertDialog;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mDisableUsbBySim:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mIsDialogShowing:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mPlugType:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mUsbAlert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mDisableUsbBySim:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mIsDialogShowing:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mPlugType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->refreshWhenUsbConnectChanged(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mHandler:Landroid/os/Handler;

    iput v5, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mPlugType:I

    new-instance v1, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;-><init>(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mDisableUsbObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$2;-><init>(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)V

    iput-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/MiuiThemeHelper;->isScreenshotMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mIsScreenshotMode:Z

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11090042

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mPtpNotificationId:I

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11090043

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mMtpNotificationId:I

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11090044

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mCdInstallNotificationId:I

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mEnableUsbModeSelection:Z

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "usb_charging_notification_title"

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "com.mediatek"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mChargingNotificationId:I

    iget v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mChargingNotificationId:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "usb_charging_notification_title"

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mChargingNotificationId:I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "disable_usb_by_sim"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mDisableUsbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mDisableUsbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private isChargingNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getId()I

    move-result v0

    const-string/jumbo v3, "android"

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mChargingNotificationId:I

    if-eq v0, v3, :cond_0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isMtpSwitcherNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getId()I

    move-result v0

    const-string/jumbo v3, "android"

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mPtpNotificationId:I

    if-eq v0, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mMtpNotificationId:I

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v3, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mCdInstallNotificationId:I

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isUsbModeNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getId()I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mEnableUsbModeSelection:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "com.android.systemui"

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x53505542

    if-eq v0, v3, :cond_0

    const v3, 0x53505256

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const v3, 0x5344534b

    if-eq v0, v3, :cond_0

    const v3, 0x534d4f56

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private refreshWhenUsbConnectChanged(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/systemui/Constants;->SUPPORT_DISABLE_USB_BY_SIM:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mDisableUsbBySim:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mIsDialogShowing:Z

    if-nez v1, :cond_0

    iput-boolean v4, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mIsDialogShowing:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mContext:Landroid/content/Context;

    sget v2, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f110113

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f110112

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mUsbAlert:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mUsbAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mUsbAlert:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$3;-><init>(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mUsbAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v2, "none"

    invoke-static {v1, v2, v3}, Landroid/hardware/usb/UsbManagerCompat;->setCurrentFunction(Landroid/hardware/usb/UsbManager;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "adb_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isUsbNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->isMtpSwitcherNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->isUsbModeNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->isChargingNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public needDisableUsbNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mDisableUsbBySim:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->mIsScreenshotMode:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->isUsbNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
