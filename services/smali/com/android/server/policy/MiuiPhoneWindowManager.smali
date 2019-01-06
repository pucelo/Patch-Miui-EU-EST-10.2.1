.class public Lcom/android/server/policy/MiuiPhoneWindowManager;
.super Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;
    }
.end annotation


# static fields
.field private static final ACTION_NOT_PASS_TO_USER:I = 0x0

.field private static final ACTION_PASS_TO_USER:I = 0x1

.field private static final FINGERPRINT_NAV_ACTION_DEFAULT:I = -0x1

.field private static final FINGERPRINT_NAV_ACTION_HOME:I = 0x1

.field private static final FINGERPRINT_NAV_ACTION_NONE:I = 0x0

.field private static final FORCE_ENABLE_PROTRAIT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MM_PKG:Ljava/lang/String; = "com.tencent.mm"

.field protected static final NAV_BAR_BOTTOM:I

.field protected static final NAV_BAR_LEFT:I

.field protected static final NAV_BAR_RIGHT:I


# instance fields
.field private mAccountHelper:Lcom/android/server/wm/AccountHelper;

.field private mAdjust:Z

.field private mDisplayHeight:I

.field private mDisplayRotation:I

.field private mDisplayWidth:I

.field private mEnableNotchConfig:Z

.field private mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

.field private mKeyguardAdded:Z

.field private mMiuiSecurityPermissionHandler:Lmiui/view/MiuiSecurityPermissionHandler;

.field private mNeedAdjust:Z

.field private mPackage:Ljava/lang/String;

.field private mPhoneWindowCallback:Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;

.field private mWindowStatusBinder:Landroid/os/Binder;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lcom/android/server/wm/AccountHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mAccountHelper:Lcom/android/server/wm/AccountHelper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/view/MiuiSecurityPermissionHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiSecurityPermissionHandler:Lmiui/view/MiuiSecurityPermissionHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPhoneWindowCallback:Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/MiuiPhoneWindowManager;)Landroid/os/Binder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mWindowStatusBinder:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/MiuiPhoneWindowManager;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/MiuiPhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->bringUpActionChooseDlg()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/16 v5, 0x1a

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v5, :cond_45

    move v0, v1

    :goto_b
    sput v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->NAV_BAR_BOTTOM:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v5, :cond_47

    move v0, v3

    :goto_12
    sput v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->NAV_BAR_RIGHT:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v5, :cond_49

    move v0, v4

    :goto_19
    sput v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->NAV_BAR_LEFT:I

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v5, "com.tencent.mm/com.tencent.mm.plugin.mmsight.ui.SightCaptureUI"

    aput-object v5, v0, v1

    const-string/jumbo v1, "com.tencent.mm/com.tencent.mm.plugin.voip.ui.VideoActivity"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.tencent.mm/com.tencent.mm.ui.chatting.gallery.ImageGalleryUI"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.tencent.mm/com.tencent.mm.ui.MMNewPhotoEditUI"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.tencent.mm/com.tencent.mm.plugin.sns.ui.SnsBrowseUI"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mm/com.tencent.mm.plugin.multitalk.ui.MultiTalkMainUI"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->FORCE_ENABLE_PROTRAIT_LIST:Ljava/util/List;

    return-void

    :cond_45
    move v0, v2

    goto :goto_b

    :cond_47
    move v0, v4

    goto :goto_12

    :cond_49
    move v0, v3

    goto :goto_19
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mWindowStatusBinder:Landroid/os/Binder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    return-void
.end method

.method private bringUpActionChooseDlg()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    if-eqz v2, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/android/server/policy/MiuiPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiPhoneWindowManager$4;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    new-instance v2, Lmiui/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x110900b7

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x110900b8

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x110900b9

    invoke-virtual {v2, v3, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x110900ba

    invoke-virtual {v2, v3, v0}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x7d8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method private forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method private getExtraWindowSystemUiVis(Landroid/view/WindowManagerPolicy$WindowState;)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v0, v1, 0x0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    or-int/lit8 v0, v0, 0x1

    :cond_16
    invoke-static {v0}, Landroid/app/MiuiStatusBarManager;->getSystemUIVisibilityFlags(I)I

    move-result v0

    return v0
.end method

.method private hideNavBar(II)Z
    .registers 5

    const/4 v1, 0x0

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_9

    and-int/lit16 v0, p2, 0x1800

    if-eqz v0, :cond_b

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_b
    return v1
.end method

.method private hideStatusBar(II)Z
    .registers 5

    const/4 v1, 0x0

    and-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_9

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_b

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_b
    return v1
.end method

.method private injectEvent(Landroid/view/KeyEvent;II)V
    .registers 24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v3, Landroid/view/KeyEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-wide v6, v4

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    new-instance v7, Landroid/view/KeyEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v19

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-wide v8, v4

    move-wide v10, v4

    move/from16 v13, p2

    move/from16 v16, p3

    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v7, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v8}, Lcom/android/server/policy/MiuiPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    return-void
.end method

.method private isForceEnablePortrait(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "com.tencent.mm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Lcom/android/server/policy/MiuiPhoneWindowManager;->FORCE_ENABLE_PROTRAIT_LIST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method private navigationBarPosition(III)I
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-nez v0, :cond_7

    sget v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->NAV_BAR_BOTTOM:I

    return v0

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_16

    if-le p1, p2, :cond_16

    const/4 v0, 0x3

    if-ne p3, v0, :cond_13

    sget v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->NAV_BAR_LEFT:I

    return v0

    :cond_13
    sget v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->NAV_BAR_RIGHT:I

    return v0

    :cond_16
    sget v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->NAV_BAR_BOTTOM:I

    return v0
.end method

.method private processBackFingerprintDpcenterEvent(Landroid/view/KeyEvent;Z)V
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz p2, :cond_35

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "com.android.camera"

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/16 v1, 0x1b

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectEvent(Landroid/view/KeyEvent;II)V

    :cond_2b
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_34
    :goto_34
    return-void

    :cond_35
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "miui.policy:FINGERPRINT_DPAD_CENTER"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    goto :goto_34
.end method

.method private processFrontFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_6c

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    if-eqz v1, :cond_1f

    iput-boolean v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    if-eqz v1, :cond_1f

    iput-boolean v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    const-string/jumbo v1, "BaseMiuiPhoneWindowManager"

    const-string/jumbo v2, "After dpcenter & home down, ignore tap fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_46

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gez v1, :cond_46

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-eqz v1, :cond_47

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1, v6}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectEvent(Landroid/view/KeyEvent;II)V

    :cond_46
    :goto_46
    return-void

    :cond_47
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_nav_center_action"

    const/4 v3, -0x2

    invoke-static {v1, v2, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v6, v0, :cond_62

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/MiuiPhoneWindowManager$3;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MiuiPhoneWindowManager$3;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_46

    :cond_62
    if-ne v7, v0, :cond_69

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v6}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectEvent(Landroid/view/KeyEvent;II)V

    goto :goto_46

    :cond_69
    if-nez v0, :cond_46

    return-void

    :cond_6c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_46

    iput-boolean v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    goto :goto_46
.end method

.method private processFrontFingerprintDprightEvent(Landroid/view/KeyEvent;)V
    .registers 4

    const-string/jumbo v0, "BaseMiuiPhoneWindowManager"

    const-string/jumbo v1, "processFrontFingerprintDprightEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected adjustFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;FI)V
    .registers 27

    iget-boolean v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-nez v12, :cond_5

    return-void

    :cond_5
    invoke-interface/range {p9 .. p9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-static {v0, v1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    const/4 v12, 0x0

    move-object/from16 v0, p9

    invoke-static {v0, v12}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v11

    invoke-static/range {p11 .. p11}, Lmiui/util/CustomizeUtil;->isRestrict(F)Z

    move-result v12

    if-eqz v12, :cond_82

    invoke-interface/range {p9 .. p9}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_82

    if-nez p10, :cond_82

    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarPosition:I

    sget v13, Lcom/android/server/policy/MiuiPhoneWindowManager;->NAV_BAR_BOTTOM:I

    if-ne v12, v13, :cond_83

    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    int-to-float v12, v12

    mul-float v12, v12, p11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v5, v12

    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v13, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavBarHeight:I

    sub-int v4, v12, v13

    sub-int v8, v4, v5

    iget v12, p1, Landroid/graphics/Rect;->top:I

    sub-int v10, v8, v12

    invoke-direct {p0, v2, v11}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideStatusBar(II)Z

    move-result v12

    if-eqz v12, :cond_5a

    move/from16 v0, p12

    invoke-direct {p0, v2, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideNavBar(II)Z

    move-result v12

    if-eqz v12, :cond_5a

    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    sub-int/2addr v12, v5

    div-int/lit8 v3, v12, 0x2

    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    sub-int v4, v12, v3

    sub-int v8, v4, v5

    :cond_5a
    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v12, v4, :cond_63

    iget v12, p1, Landroid/graphics/Rect;->top:I

    if-lt v12, v8, :cond_63

    return-void

    :cond_63
    iput v8, p1, Landroid/graphics/Rect;->top:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    iget v13, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v10

    move-object/from16 v0, p4

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v10

    move-object/from16 v0, p5

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    :cond_82
    :goto_82
    return-void

    :cond_83
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarPosition:I

    sget v13, Lcom/android/server/policy/MiuiPhoneWindowManager;->NAV_BAR_RIGHT:I

    if-ne v12, v13, :cond_c1

    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    int-to-float v12, v12

    mul-float v12, v12, p11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v9, v12

    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget v13, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavBarWidth:I

    sub-int v7, v12, v13

    sub-int v6, v7, v9

    invoke-direct {p0, v2, v11}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideStatusBar(II)Z

    move-result v12

    if-eqz v12, :cond_b3

    move/from16 v0, p12

    invoke-direct {p0, v2, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideNavBar(II)Z

    move-result v12

    if-eqz v12, :cond_b3

    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    sub-int/2addr v12, v9

    div-int/lit8 v3, v12, 0x2

    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    sub-int v7, v12, v3

    sub-int v6, v7, v9

    :cond_b3
    iput v6, p1, Landroid/graphics/Rect;->left:I

    iput v7, p1, Landroid/graphics/Rect;->right:I

    iget v12, p1, Landroid/graphics/Rect;->right:I

    iget v13, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    iput v12, v0, Landroid/graphics/Rect;->right:I

    goto :goto_82

    :cond_c1
    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarPosition:I

    sget v13, Lcom/android/server/policy/MiuiPhoneWindowManager;->NAV_BAR_LEFT:I

    if-ne v12, v13, :cond_82

    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    int-to-float v12, v12

    mul-float v12, v12, p11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v9, v12

    iget v6, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavBarWidth:I

    add-int v7, v6, v9

    invoke-direct {p0, v2, v11}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideStatusBar(II)Z

    move-result v12

    if-eqz v12, :cond_ed

    move/from16 v0, p12

    invoke-direct {p0, v2, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideNavBar(II)Z

    move-result v12

    if-eqz v12, :cond_ed

    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    sub-int/2addr v12, v9

    div-int/lit8 v3, v12, 0x2

    iget v12, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    sub-int v7, v12, v3

    sub-int v6, v7, v9

    :cond_ed
    iput v6, p1, Landroid/graphics/Rect;->left:I

    iput v7, p1, Landroid/graphics/Rect;->right:I

    iget v12, p1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iput v12, v0, Landroid/graphics/Rect;->right:I

    iget v12, p1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v6

    move-object/from16 v0, p4

    iput v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v6

    move-object/from16 v0, p5

    iput v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v6

    move-object/from16 v0, p7

    iput v12, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_82
.end method

.method protected adjustFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;I)V
    .registers 34

    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v2, :cond_5

    return-void

    :cond_5
    invoke-interface/range {p9 .. p9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    move-object/from16 v0, p9

    invoke-static {v0, v9}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v15

    const/4 v2, 0x0

    move-object/from16 v0, p9

    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isForceEnablePortrait(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v16

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_6b

    const/4 v10, 0x1

    :goto_23
    move/from16 v0, p11

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_6d

    const/4 v14, 0x1

    :goto_2a
    if-nez v10, :cond_6f

    if-nez v14, :cond_6f

    move/from16 v7, v16

    :goto_30
    if-eqz v10, :cond_73

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_71

    const/4 v13, 0x1

    :goto_39
    or-int v13, v13, v16

    if-eqz v10, :cond_7f

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_7d

    const/4 v11, 0x1

    :goto_44
    const/16 v18, 0x0

    and-int/lit16 v2, v15, 0x200

    if-eqz v2, :cond_5a

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7da

    if-eq v2, v3, :cond_5a

    invoke-interface/range {p9 .. p9}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5a

    const/16 v18, 0x1

    :cond_5a
    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, p11

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_89

    const/16 v19, 0x1

    :goto_64
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_8c

    return-void

    :cond_6b
    const/4 v10, 0x0

    goto :goto_23

    :cond_6d
    const/4 v14, 0x0

    goto :goto_2a

    :cond_6f
    const/4 v7, 0x1

    goto :goto_30

    :cond_71
    const/4 v13, 0x0

    goto :goto_39

    :cond_73
    move/from16 v0, p11

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_7b

    const/4 v13, 0x1

    goto :goto_39

    :cond_7b
    const/4 v13, 0x0

    goto :goto_39

    :cond_7d
    const/4 v11, 0x0

    goto :goto_44

    :cond_7f
    move/from16 v0, p11

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_87

    const/4 v11, 0x1

    goto :goto_44

    :cond_87
    const/4 v11, 0x0

    goto :goto_44

    :cond_89
    const/16 v19, 0x0

    goto :goto_64

    :cond_8c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDisplayRotation:I

    packed-switch v2, :pswitch_data_1d6

    :cond_93
    :goto_93
    :pswitch_93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p9

    if-ne v0, v2, :cond_d9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPackage:Ljava/lang/String;

    invoke-interface/range {p9 .. p9}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_af

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mAdjust:Z

    if-eq v2, v5, :cond_1c8

    :cond_af
    :goto_af
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mAdjust:Z

    move v8, v5

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNeedAdjust:Z

    move/from16 v17, v4

    invoke-interface/range {p9 .. p9}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mEnableNotchConfig:Z

    move v12, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v2, Lcom/android/server/policy/MiuiPhoneWindowManager$5;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/MiuiPhoneWindowManager$5;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;ZZLjava/lang/String;Z)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d9
    return-void

    :pswitch_da
    if-eqz v7, :cond_e0

    xor-int/lit8 v2, v13, 0x1

    if-nez v2, :cond_ec

    :cond_e0
    if-nez v7, :cond_93

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v15, v1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideStatusBar(II)Z

    move-result v2

    if-eqz v2, :cond_93

    :cond_ec
    const/4 v4, 0x1

    if-eqz v19, :cond_f1

    if-eqz v7, :cond_93

    :cond_f1
    if-eqz v18, :cond_105

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    :goto_103
    const/4 v5, 0x1

    goto :goto_93

    :cond_105
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_103

    :pswitch_126
    if-eqz v7, :cond_12c

    xor-int/lit8 v2, v11, 0x1

    if-nez v2, :cond_130

    :cond_12c
    xor-int/lit8 v2, v7, 0x1

    if-eqz v2, :cond_93

    :cond_130
    const/4 v4, 0x1

    if-eqz v19, :cond_135

    if-eqz v7, :cond_93

    :cond_135
    if-eqz v18, :cond_14a

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :goto_147
    const/4 v5, 0x1

    goto/16 :goto_93

    :cond_14a
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_147

    :pswitch_16b
    if-eqz v7, :cond_171

    xor-int/lit8 v2, v11, 0x1

    if-nez v2, :cond_175

    :cond_171
    xor-int/lit8 v2, v7, 0x1

    if-eqz v2, :cond_93

    :cond_175
    const/4 v4, 0x1

    if-eqz v19, :cond_17a

    if-eqz v7, :cond_93

    :cond_17a
    if-eqz v18, :cond_197

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarHeight:I

    move/from16 v21, v0

    sub-int v3, v3, v21

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_194
    const/4 v5, 0x1

    goto/16 :goto_93

    :cond_197
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarHeight:I

    move/from16 v21, v0

    sub-int v3, v3, v21

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarHeight:I

    move/from16 v21, v0

    sub-int v3, v3, v21

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_194

    :cond_1c8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNeedAdjust:Z

    if-ne v2, v4, :cond_af

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mEnableNotchConfig:Z

    if-eq v2, v7, :cond_d9

    goto/16 :goto_af

    :pswitch_data_1d6
    .packed-switch 0x0
        :pswitch_da
        :pswitch_126
        :pswitch_93
        :pswitch_16b
    .end packed-switch
.end method

.method public beginLayoutLw(ZIIII)V
    .registers 8

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/policy/MiuiPhoneWindowManager;->navigationBarPosition(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarPosition:I

    invoke-super/range {p0 .. p5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->beginLayoutLw(ZIIII)V

    iput p4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDisplayRotation:I

    iput p2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDisplayWidth:I

    iput p3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDisplayHeight:I

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->forceShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_59

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarPosition:I

    sget v1, Lcom/android/server/policy/MiuiPhoneWindowManager;->NAV_BAR_BOTTOM:I

    if-ne v0, v1, :cond_5a

    sget-object v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSystemBottom:I

    sget-object v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockBottom:I

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockBottom:I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedScreenHeight:I

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockBottom:I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    :goto_39
    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockTop:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mCurTop:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mVoiceContentTop:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContentTop:I

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockBottom:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mCurBottom:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mVoiceContentBottom:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContentBottom:I

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockLeft:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mCurLeft:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mVoiceContentLeft:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContentLeft:I

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockRight:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mCurRight:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mVoiceContentRight:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContentRight:I

    :cond_59
    return-void

    :cond_5a
    sget-object v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSystemRight:I

    sget-object v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockRight:I

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockRight:I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedScreenWidth:I

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockRight:I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_39
.end method

.method protected callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e1

    if-ne v0, v1, :cond_19

    const-string/jumbo v0, "com.android.systemui"

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    return v0

    :cond_19
    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    return v0
.end method

.method protected finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    return-void
.end method

.method public finishedGoingToSleep(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->screenTurnedOffInternal(I)V

    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->finishedGoingToSleep(I)V

    return-void
.end method

.method protected forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    const-class v0, Lmiui/process/ProcessManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/process/ProcessManagerInternal;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method getExtraSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;F)I
    .registers 12

    const/high16 v8, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getExtraSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;F)I

    iget-boolean v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v7, :cond_46

    iget-boolean v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    xor-int/lit8 v2, v7, 0x1

    :goto_d
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v7

    if-eqz v7, :cond_48

    iget-object v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    :goto_15
    invoke-direct {p0, v4}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getExtraWindowSystemUiVis(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v5

    iget-object v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v7}, Lcom/android/server/policy/MiuiPhoneWindowManager;->drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v7

    if-eqz v7, :cond_4b

    and-int v7, v5, v8

    if-nez v7, :cond_4b

    const/4 v3, 0x1

    :goto_26
    iget-object v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v7}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getExtraWindowSystemUiVis(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v1

    iget-object v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v7}, Lcom/android/server/policy/MiuiPhoneWindowManager;->drawsSystemBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v7

    if-eqz v7, :cond_52

    and-int v7, v1, v8

    if-nez v7, :cond_52

    const/4 v0, 0x1

    :goto_39
    const/4 v6, 0x0

    if-eqz v3, :cond_59

    if-eqz v0, :cond_59

    const/16 v6, 0x8

    const v7, -0x40000001    # -1.9999999f

    and-int/lit8 v6, v7, 0x8

    :cond_45
    :goto_45
    return v6

    :cond_46
    const/4 v2, 0x0

    goto :goto_d

    :cond_48
    iget-object v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_15

    :cond_4b
    iget-object v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v7}, Lcom/android/server/policy/MiuiPhoneWindowManager;->forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    goto :goto_26

    :cond_52
    iget-object v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v7}, Lcom/android/server/policy/MiuiPhoneWindowManager;->forcesDrawStatusBarBackground(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    goto :goto_39

    :cond_59
    iget-boolean v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-nez v7, :cond_63

    iget-object v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v4, v7, :cond_63

    :goto_61
    const/4 v6, 0x0

    goto :goto_45

    :cond_63
    if-eqz v2, :cond_45

    goto :goto_61
.end method

.method protected getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getWakePolicyFlag()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getWindowLayerFromTypeLw(IZ)I
    .registers 8

    const/16 v0, 0xb

    const/16 v1, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x2

    if-lt p1, v4, :cond_d

    const/16 v2, 0x63

    if-gt p1, v2, :cond_d

    return v3

    :cond_d
    packed-switch p1, :pswitch_data_8a

    :pswitch_10
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_2b
    return v4

    :pswitch_2c
    return v3

    :pswitch_2d
    return v3

    :pswitch_2e
    return v3

    :pswitch_2f
    const/4 v0, 0x3

    return v0

    :pswitch_31
    const/4 v0, 0x4

    return v0

    :pswitch_33
    const/4 v0, 0x5

    return v0

    :pswitch_35
    const/4 v0, 0x6

    return v0

    :pswitch_37
    const/4 v0, 0x7

    return v0

    :pswitch_39
    const/16 v0, 0x8

    return v0

    :pswitch_3c
    const/16 v0, 0x9

    return v0

    :pswitch_3f
    if-eqz p2, :cond_42

    :goto_41
    return v0

    :cond_42
    move v0, v1

    goto :goto_41

    :pswitch_44
    const/16 v0, 0xc

    return v0

    :pswitch_47
    const/16 v0, 0xd

    return v0

    :pswitch_4a
    const/16 v0, 0xe

    return v0

    :pswitch_4d
    const/16 v0, 0xf

    return v0

    :pswitch_50
    const/16 v0, 0x10

    return v0

    :pswitch_53
    const/16 v0, 0x11

    return v0

    :pswitch_56
    const/16 v0, 0x12

    return v0

    :pswitch_59
    const/16 v0, 0x13

    return v0

    :pswitch_5c
    const/16 v0, 0x14

    return v0

    :pswitch_5f
    const/16 v0, 0x15

    return v0

    :pswitch_62
    if-eqz p2, :cond_66

    const/16 v0, 0x16

    :cond_66
    return v0

    :pswitch_67
    const/16 v0, 0x17

    return v0

    :pswitch_6a
    const/16 v0, 0x18

    return v0

    :pswitch_6d
    const/16 v0, 0x19

    return v0

    :pswitch_70
    if-eqz p2, :cond_74

    const/16 v1, 0x1a

    :cond_74
    return v1

    :pswitch_75
    const/16 v0, 0x1b

    return v0

    :pswitch_78
    const/16 v0, 0x1c

    return v0

    :pswitch_7b
    const/16 v0, 0x1d

    return v0

    :pswitch_7e
    const/16 v0, 0x1e

    return v0

    :pswitch_81
    const/16 v0, 0x1f

    return v0

    :pswitch_84
    const/16 v0, 0x20

    return v0

    :pswitch_87
    const/16 v0, 0x21

    return v0

    :pswitch_data_8a
    .packed-switch 0x7d0
        :pswitch_56
        :pswitch_31
        :pswitch_2f
        :pswitch_3f
        :pswitch_50
        :pswitch_39
        :pswitch_62
        :pswitch_3c
        :pswitch_37
        :pswitch_5c
        :pswitch_70
        :pswitch_4a
        :pswitch_4d
        :pswitch_2b
        :pswitch_59
        :pswitch_81
        :pswitch_7b
        :pswitch_53
        :pswitch_87
        :pswitch_67
        :pswitch_5f
        :pswitch_84
        :pswitch_35
        :pswitch_47
        :pswitch_6a
        :pswitch_10
        :pswitch_78
        :pswitch_75
        :pswitch_10
        :pswitch_10
        :pswitch_2c
        :pswitch_33
        :pswitch_7e
        :pswitch_31
        :pswitch_2d
        :pswitch_2e
        :pswitch_6d
        :pswitch_2c
        :pswitch_44
    .end packed-switch
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/MiuiPhoneWindowManager;->initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    return-void
.end method

.method protected intercept(Landroid/view/KeyEvent;IZI)I
    .registers 9

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, -0x1

    if-ne p4, v1, :cond_1a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_18
    :goto_18
    const/4 v1, 0x0

    return v1

    :cond_1a
    const/4 v1, 0x1

    if-ne p4, v1, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_18
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, 0x20000000

    and-int/2addr v1, p2

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->interceptKeyBeforeQueueingInternal(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method protected isFingerPrintKey(Landroid/view/KeyEvent;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    return v3

    :pswitch_23
    const/4 v1, 0x1

    return v1

    :cond_25
    return v3

    :pswitch_data_26
    .packed-switch 0x16
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method protected isInLockTaskMode()Z
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    return v2

    :catch_b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    const/4 v2, 0x0

    return v2
.end method

.method protected isScreenOnInternal()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method protected launchAssistActionInternal(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method protected launchRecentPanelInternal()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    :cond_9
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 1

    invoke-super {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->onConfigurationChanged()V

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->updateNavigationBarWidth()V

    return-void
.end method

.method protected onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    invoke-interface {p1, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method protected preloadRecentAppsInternal()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    :cond_9
    return-void
.end method

.method protected processFingerprintNavigationEvent(Landroid/view/KeyEvent;Z)I
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    return v2

    :pswitch_9
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSupportTapFingerprintSensorToHome:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSupportFsg:Z

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFsgDisableHwKeys:Z

    if-nez v1, :cond_1d

    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->processFrontFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V

    return v2

    :cond_1d
    return v2

    :cond_1e
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/MiuiPhoneWindowManager;->processBackFingerprintDpcenterEvent(Landroid/view/KeyEvent;Z)V

    return v2

    :pswitch_22
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->processFrontFingerprintDprightEvent(Landroid/view/KeyEvent;)V

    return v2

    :pswitch_data_26
    .packed-switch 0x16
        :pswitch_22
        :pswitch_9
    .end packed-switch
.end method

.method public registerMIUIWatermarkCallback(Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPhoneWindowCallback:Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;

    return-void
.end method

.method protected screenOffBecauseOfProxSensor()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public startedGoingToSleep(I)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->releaseScreenOnProximitySensor()V

    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->startedGoingToSleep(I)V

    return-void
.end method

.method protected stopLockTaskMode()Z
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    const/4 v2, 0x1

    return v2

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    const/4 v2, 0x0

    return v2
.end method

.method public systemReady()V
    .registers 4

    invoke-super {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->systemReady()V

    new-instance v0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->systemReadyInternal()V

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_WATER_MARKER:Z

    if-eqz v0, :cond_39

    :cond_19
    invoke-static {}, Lcom/android/server/wm/AccountHelper;->getInstance()Lcom/android/server/wm/AccountHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mAccountHelper:Lcom/android/server/wm/AccountHelper;

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mAccountHelper:Lcom/android/server/wm/AccountHelper;

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/MiuiPhoneWindowManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MiuiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccountHelper;->registerAccountListener(Landroid/content/Context;Lcom/android/server/wm/AccountHelper$AccountCallback;)V

    new-instance v0, Lmiui/view/MiuiSecurityPermissionHandler;

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/MiuiPhoneWindowManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MiuiPhoneWindowManager$2;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    invoke-direct {v0, v1, v2}, Lmiui/view/MiuiSecurityPermissionHandler;-><init>(Landroid/content/Context;Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiSecurityPermissionHandler:Lmiui/view/MiuiSecurityPermissionHandler;

    :cond_39
    return-void
.end method

.method protected toggleSplitScreenInternal()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    :cond_9
    return-void
.end method

.method protected updateNavigationBarWidth()V
    .registers 7

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPortraitRotation:I

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSupportFsg:Z

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    :goto_f
    iget-object v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSeascapeRotation:I

    aput v1, v4, v5

    iget-object v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mLandscapeRotation:I

    aput v1, v4, v5

    iget-object v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUpsideDownRotation:I

    aput v1, v4, v5

    aput v1, v2, v3

    return-void

    :cond_24
    const v1, 0x1050108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_f
.end method
