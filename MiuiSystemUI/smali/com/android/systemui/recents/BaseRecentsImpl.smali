.class public abstract Lcom/android/systemui/recents/BaseRecentsImpl;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/BaseRecentsImpl$1;,
        Lcom/android/systemui/recents/BaseRecentsImpl$2;,
        Lcom/android/systemui/recents/BaseRecentsImpl$3;,
        Lcom/android/systemui/recents/BaseRecentsImpl$4;,
        Lcom/android/systemui/recents/BaseRecentsImpl$5;,
        Lcom/android/systemui/recents/BaseRecentsImpl$6;,
        Lcom/android/systemui/recents/BaseRecentsImpl$7;,
        Lcom/android/systemui/recents/BaseRecentsImpl$8;,
        Lcom/android/systemui/recents/BaseRecentsImpl$9;,
        Lcom/android/systemui/recents/BaseRecentsImpl$H;,
        Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;
    }
.end annotation


# static fields
.field public static mTaskBarHeight:I

.field protected static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

.field public static sOneKeyCleaning:Z


# instance fields
.field private isShowing:Z

.field mActivityStateObserver:Landroid/app/IMiuiActivityObserver;

.field private mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

.field private mCloudDataObserver:Landroid/database/ContentObserver;

.field protected mContext:Landroid/content/Context;

.field private mCurType:Ljava/lang/String;

.field private mDisabledByDriveMode:Z

.field mDraggingInRecents:Z

.field private mDriveModeObserver:Landroid/database/ContentObserver;

.field protected mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field private mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

.field private mFsgBackState:I

.field private mFsgReceiver:Landroid/content/BroadcastReceiver;

.field private mGestureAnimationStartTime:J

.field private mGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

.field private mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

.field private mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

.field protected mHandler:Landroid/os/Handler;

.field private mHasNavigationBar:Z

.field private mHasRegistedInput:Z

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final mHeaderBarLock:Ljava/lang/Object;

.field private mHotZoneChangeActListStr:Ljava/lang/String;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private mInputMethodHeight:I

.field private mInputMethodVisibleHeightChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHideRecentsViewByFsGesture:Z

.field private mIsInAnotherPro:Z

.field private mIsSizeReset:Z

.field private mIsStartRecent:Z

.field protected mKM:Landroid/app/KeyguardManager;

.field protected mLastToggleTime:J

.field mLaunchedWhileDocking:Z

.field private mLocalCtrlActs:[Ljava/lang/String;

.field mNavBarHeight:I

.field mNavBarWidth:I

.field private mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

.field private mNoBackActListStr:Ljava/lang/String;

.field private mNoBackAndHomeActListStr:Ljava/lang/String;

.field private mNoHomeActListStr:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mRecentsReceiver:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;

.field private mRecentsVisible:Z

.field private mScreenWidth:I

.field mStatusBarHeight:I

.field private mStubSize:I

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

.field protected mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field protected mTriggeredFromAltTab:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/BaseRecentsImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/BaseRecentsImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFsgBackState:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/recents/BaseRecentsImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mRecentsVisible:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/recents/BaseRecentsImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mScreenWidth:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/recents/BaseRecentsImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mStubSize:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/recents/BaseRecentsImpl;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/BaseRecentsImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/BaseRecentsImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/recents/BaseRecentsImpl;)Landroid/view/IWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/recents/BaseRecentsImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mInputMethodHeight:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/recents/BaseRecentsImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/recents/BaseRecentsImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsStartRecent:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/BaseRecentsImpl;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/systemui/recents/BaseRecentsImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mInputMethodHeight:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/recents/BaseRecentsImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsStartRecent:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/recents/BaseRecentsImpl;Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->adaptToTopActivity()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->addBackStubWindow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->clearBackStubWindow()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->hideBackStubWindow()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->readCloudDataForFsg()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->sendChangeBackGestureSizeIsNeeded()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->sendResetBackGestureSizeIsNeeded()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showBackStubWindow()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->updateFsgWindowState()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/recents/BaseRecentsImpl;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/BaseRecentsImpl;->updateFsgWindowVisibilityState(ZLjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/BaseRecentsImpl;->sOneKeyCleaning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    iput-boolean v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsHideRecentsViewByFsGesture:Z

    new-instance v0, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v1, Lcom/android/systemui/recents/BaseRecentsImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$1;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    const/16 v2, 0xe1

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mRecentsReceiver:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;

    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$2;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mInputMethodVisibleHeightChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.systemui.fsgesture.HomeDemoAct"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.android.systemui.fsgesture.DemoFinishAct"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.systemui.fsgesture.DrawerDemoAct"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.systemui.fsgesture.FsGestureBackDemoActivity"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.provision.activities.CongratulationActivity"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLocalCtrlActs:[Ljava/lang/String;

    iput v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFsgBackState:I

    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$3;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/BaseRecentsImpl$3;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mCloudDataObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$4;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mActivityStateObserver:Landroid/app/IMiuiActivityObserver;

    iput-boolean v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$5;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$6;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFsgReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->isShowing:Z

    iput-boolean v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasRegistedInput:Z

    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$7;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/BaseRecentsImpl$7;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$8;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/BaseRecentsImpl$8;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/recents/BaseRecentsImpl$9;

    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/BaseRecentsImpl$9;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDriveModeObserver:Landroid/database/ContentObserver;

    iput-boolean v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsStartRecent:Z

    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/recents/BaseRecentsImpl$H;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/recents/BaseRecentsImpl$H;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;Lcom/android/systemui/recents/BaseRecentsImpl$H;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskStackListener()Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const v0, 0x7f0d00dc

    invoke-virtual {v6, v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->reloadResources()V

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerMiuiTaskResizeList(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->addFsgGestureWindow()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.android.systemui.taskmanager.Clear"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mRecentsReceiver:Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->registerMiuiGestureControlHelper()V

    return-void
.end method

.method private adaptToTopActivity()V
    .locals 5

    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v4

    if-ne v3, v4, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->onResumed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private addBackStubWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->initGestureStub(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->showGestureStub()V

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->showGestureStub()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->isShowing:Z

    return-void
.end method

.method private addFsgGestureWindow()V
    .locals 17

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "systemui_fsg_version"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "force_fsg_nav_bar"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mCloudDataObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "drive_mode_drive_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDriveModeObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_gesture_appswitch_feature"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.android.systemui.fsgesture"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFsgReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v9, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v11

    if-nez v11, :cond_0

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mActivityStateObserver:Landroid/app/IMiuiActivityObserver;

    invoke-interface {v11, v1, v14}, Landroid/app/IActivityManager;->registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->readCloudDataForFsg()V

    const/16 v16, 0xd

    const-string/jumbo v1, "lithium"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v16, 0xe

    :cond_1
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mStubSize:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "force_fsg_nav_bar"

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "drive_mode_drive_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "RecentsImpl"

    const-string/jumbo v2, "navstubview will be added: addFsgGestureWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavStubView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/NavStubView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mStubSize:I

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :catch_1
    move-exception v13

    goto/16 :goto_0
.end method

.method private calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/BaseRecentsImpl;->inset(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private clearBackStubWindow()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->clearGestureStub()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->clearGestureStub()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->isShowing:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->unRegisterInputMethodVisibleHeightReceiver()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    sget-object v0, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    return-object v0
.end method

.method private getLaunchTargetTaskViewRect(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;Lcom/android/systemui/recents/model/Task;)Landroid/graphics/RectF;
    .locals 4

    invoke-virtual {p0, p2, p4, p3}, Lcom/android/systemui/recents/BaseRecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v1

    iget-object v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sget v3, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    return-object v0
.end method

.method private getWindowRectOverride(I)Landroid/graphics/Rect;
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v5

    const/4 v1, 0x4

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    return-object v2
.end method

.method private hideBackStubWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->hideGestureStubDelay()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->hideGestureStubDelay()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->isShowing:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->unRegisterInputMethodVisibleHeightReceiver()V

    return-void
.end method

.method private initGestureStub(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_gesture_appswitch_feature"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/android/systemui/fsgesture/GestureStubView;

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/fsgesture/GestureStubView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/fsgesture/GestureStubView;->setGestureStubPosition(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/fsgesture/GestureStubView;->enableGestureBackAnimation(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/fsgesture/GestureStubView;->disableQuickSwitch(Z)V

    new-instance v1, Lcom/android/systemui/fsgesture/GestureStubView;

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/fsgesture/GestureStubView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/fsgesture/GestureStubView;->setGestureStubPosition(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/fsgesture/GestureStubView;->enableGestureBackAnimation(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/fsgesture/GestureStubView;->disableQuickSwitch(Z)V

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->adaptToTopActivity()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inset(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private preloadIcon(I)V
    .locals 4

    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    iput p1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    return-void
.end method

.method private readCloudDataForFsg()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ykrq"

    const-string/jumbo v2, "no_back_gesture_only"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.miui.home.launcher.Launcher"

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ykrq"

    const-string/jumbo v2, "no_home_gesture_only"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ykrq"

    const-string/jumbo v2, "no_back_and_home"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ykrq"

    const-string/jumbo v2, "hot_zone_change"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHotZoneChangeActListStr:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui.fsgesture.DemoIntroduceAct:com.android.systemui.sliderpanel.SliderPanelActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    return-void
.end method

.method private registerInputMethodVisibleHeightReceiver()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasRegistedInput:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasRegistedInput:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "miui.intent.action.INPUT_METHOD_VISIBLE_HEIGHT_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mInputMethodVisibleHeightChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private reloadResources()V
    .locals 8

    const v4, 0x7f0703cd

    const v1, 0x7f0703cc

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v0, 0x105018e

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mStatusBarHeight:I

    const v0, 0x1050103

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavBarHeight:I

    const v0, 0x1050108

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavBarWidth:I

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    sput v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    return-void
.end method

.method private sendChangeBackGestureSizeIsNeeded()V
    .locals 4

    const/16 v3, 0xad9

    iget-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsSizeReset:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsSizeReset:Z

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb3d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private sendResetBackGestureSizeIsNeeded()V
    .locals 4

    const/16 v3, 0xb3d

    iget-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsSizeReset:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsSizeReset:Z

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xad9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private showBackStubWindow()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showBackStubWindow(I)V

    return-void
.end method

.method private showBackStubWindow(I)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "force_fsg_nav_bar"

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/BaseRecentsImpl;->initGestureStub(I)V

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->showGestureStub()V

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->showGestureStub()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->isShowing:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->registerInputMethodVisibleHeightReceiver()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/RecentsActivityLaunchState;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10884000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "launchState"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v3, "startRecentsActivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private unRegisterInputMethodVisibleHeightReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasRegistedInput:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasRegistedInput:Z

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mInputMethodVisibleHeightChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateFsgWindowState()V
    .locals 6

    iget-boolean v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "force_fsg_nav_bar"

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    if-nez v2, :cond_1

    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v3, "navstubview will be added: updateFsgWindowState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavStubView;

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/NavStubView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    iget v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mStubSize:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->addBackStubWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v3, "navstubview will be removed: updateFsgWindowState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->clearBackStubWindow()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateFsgWindowVisibilityState(ZLjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_6

    iput-object p2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mCurType:Ljava/lang/String;

    const-string/jumbo v0, "typefrom_demo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavStubView;->setVisibility(I)V

    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v1, "resume demo nstub gone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->hideBackStubWindow()V

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v0, "typefrom_keyguard"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "typefrom_provision"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v1, "resume statusbar nstub gone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavStubView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "typefrom_status_bar_expansion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "typefrom_home"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mCurType:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iput-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mCurType:Ljava/lang/String;

    const-string/jumbo v0, "typefrom_keyguard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showBackStubWindow()V

    return-void

    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->adaptToTopActivity()V

    goto :goto_0
.end method

.method private updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 12

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_5

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iput v11, v8, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-direct {p0, v8, v2}, Lcom/android/systemui/recents/BaseRecentsImpl;->calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v11, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    if-eqz p1, :cond_4

    iget v3, v8, Landroid/graphics/Rect;->top:I

    iget v4, v8, Landroid/graphics/Rect;->left:I

    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1, v11}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v3

    if-ne v3, v10, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v3

    sget v5, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    if-eq v3, v5, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v10, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    sget v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    sget v5, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    const/4 v6, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v6, v11, v10, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v3, v10, :cond_6

    :cond_3
    :goto_1
    sget v3, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v2

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    if-eq v3, v4, :cond_4

    goto :goto_1
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 0

    return-void
.end method

.method public dockTopTask(IIILandroid/graphics/Rect;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->supportsMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f110531

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    invoke-virtual {v8, p1, p3, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToDockedStack(IILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v2, p2, p4}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    if-nez p2, :cond_2

    move v2, v4

    :goto_0
    const/4 v6, -0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/BaseRecentsImpl;->showRecents(ZZZZZIZ)V

    :cond_1
    return-void

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method protected getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const v2, 0x7f0100ab

    const v3, 0x7f0100ac

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public getIsHideRecentsViewByFsGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsHideRecentsViewByFsGesture:Z

    return v0
.end method

.method getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 11

    const/4 v7, 0x0

    new-instance v8, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v8}, Lcom/android/systemui/recents/model/Task;-><init>()V

    invoke-virtual {p0, p2, v8, p3}, Lcom/android/systemui/recents/BaseRecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v10

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v9, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v9, Landroid/graphics/RectF;->top:F

    sget v1, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    iget v2, v9, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v9, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-static/range {v0 .. v7}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 7

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0

    :cond_0
    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method protected getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const v2, 0x7f0100ad

    const v3, 0x7f0100ae

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public hideRecents(ZZZ)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showNextTask()V

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method

.method public onBootCompleted()V
    .locals 5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getIconCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsEvent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsHideRecentsViewByFsGesture:Z

    const/4 v6, -0x1

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/BaseRecentsImpl;->showRecents(ZZZZZIZ)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGesturePreloadRecentsEvent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->preloadRecents()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureShowFirstCardEvent;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mIsHideRecentsViewByFsGesture:Z

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;->isEnter:Z

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;->typeFrom:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->updateFsgWindowVisibilityState(ZLjava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RotationChangedEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->onBusEvent(Lcom/android/systemui/recents/events/activity/RotationChangedEvent;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/HideNavStubForBackWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->hideBackStubWindow()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mRecentsVisible:Z

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEndEvent;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/BaseRecentsImpl;->sOneKeyCleaning:Z

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/recents/BaseRecentsImpl;->sOneKeyCleaning:Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->reloadResources()V

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange()V

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    return-void
.end method

.method public onDraggingInRecents(F)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method

.method public onResumed(Ljava/lang/String;)V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNavStubView:Lcom/android/systemui/statusbar/phone/NavStubView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLocalCtrlActs:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/BaseRecentsImpl$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$11;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    const-string/jumbo v1, "lithium"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHotZoneChangeActListStr:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFsgBackState:I

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->sendChangeBackGestureSizeIsNeeded()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/BaseRecentsImpl$12;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/BaseRecentsImpl$12;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/BaseRecentsImpl$13;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/BaseRecentsImpl$13;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/BaseRecentsImpl$14;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$14;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFsgBackState:I

    invoke-direct {p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->sendResetBackGestureSizeIsNeeded()V

    goto :goto_2
.end method

.method public onStartScreenPinning(Landroid/content/Context;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/Application;

    invoke-virtual {v2}, Lcom/android/systemui/Application;->getSystemUIApplication()Lcom/android/systemui/SystemUIApplication;

    move-result-object v0

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setRecentsVisibility(Landroid/content/Context;Z)V

    return-void
.end method

.method public preloadRecents()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    new-instance v0, Lcom/android/systemui/recents/model/MutableBoolean;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lcom/android/systemui/recents/model/MutableBoolean;-><init>(Z)V

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    sput-object v6, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    sget-object v6, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v7, v0, Lcom/android/systemui/recents/model/MutableBoolean;->value:Z

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    sget-object v6, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v7, v0, Lcom/android/systemui/recents/model/MutableBoolean;->value:Z

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v6, v3, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    sget-object v6, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->preloadIcon(I)V

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/recents/BaseRecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public registerMiuiGestureControlHelper()V
    .locals 8

    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v4

    if-eq v3, v4, :cond_0

    const-string/jumbo v3, "RecentsImpl"

    const-string/jumbo v4, "registerMiuiGestureControlHelper failed: userId is wrong."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/systemui/recents/BaseRecentsImpl$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/BaseRecentsImpl$10;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    iput-object v3, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "registerMiuiGestureControlHelper"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "unregisterMiuiGestureControlHelper"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mGestureControlHelper:Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showNextTask()V
    .locals 15

    const/4 v13, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    iget-object v12, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    const/4 v12, -0x1

    invoke-virtual {v4, v5, v12, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    invoke-static {v6}, Landroid/app/ActivityManagerCompat;->getRunningTaskStackId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v12

    invoke-static {v12, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeOrRecentsStack(ILandroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v12, v9, -0x1

    if-ge v1, v12, :cond_3

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_4

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/model/Task;

    iget-object v12, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const v13, 0x7f0100b1

    const v14, 0x7f0100aa

    invoke-static {v12, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    :cond_3
    :goto_1
    if-nez v11, :cond_6

    iget-object v12, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const v13, 0x7f0100b2

    invoke-static {v12, v13}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    return-void

    :cond_4
    iget-object v12, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v13, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v12, v13, :cond_5

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/model/Task;

    iget-object v12, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const v13, 0x7f0100b4

    const v14, 0x7f0100b3

    invoke-static {v12, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-object v12, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v13, v11, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v14, v11, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v7, v12, v13, v14, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    return-void
.end method

.method public showRecents(ZZZZZIZ)V
    .locals 10

    iput-boolean p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean p2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDraggingInRecents:Z

    iput-boolean p4, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    if-nez p4, :cond_4

    move v7, p2

    :goto_1
    new-instance v8, Lcom/android/systemui/recents/model/MutableBoolean;

    invoke-direct {v8, v7}, Lcom/android/systemui/recents/model/MutableBoolean;-><init>(Z)V

    sget-boolean v0, Lcom/android/systemui/recents/BaseRecentsImpl;->sOneKeyCleaning:Z

    if-eqz v0, :cond_5

    const v0, 0x7f110538

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showToast(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    return-void

    :cond_4
    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    if-nez v7, :cond_6

    :try_start_1
    invoke-virtual {v9, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-boolean v0, v8, Lcom/android/systemui/recents/model/MutableBoolean;->value:Z

    if-nez v0, :cond_8

    move v2, p5

    :goto_2
    move-object v0, p0

    move v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/BaseRecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZIZ)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_3
    return-void

    :cond_8
    const/4 v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v2, "Failed to launch RecentsActivity"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method protected startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZIZ)V
    .locals 26

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v9

    new-instance v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-direct {v6}, Lcom/android/systemui/recents/RecentsActivityLaunchState;-><init>()V

    const-string/jumbo v22, "RecentsImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "startRecentsActivity runningTask: "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_0
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v21, v0

    if-nez v21, :cond_8

    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTriggeredFromAltTab:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    sget-object v21, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v21, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v21

    sput-object v21, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTriggeredFromAltTab:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    sget-object v21, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_3

    :cond_2
    sget-object v21, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    xor-int/lit8 v22, p2, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v12, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    :cond_3
    sget-object v21, Lcom/android/systemui/recents/BaseRecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v21

    if-lez v21, :cond_9

    const/4 v5, 0x1

    :goto_2
    if-eqz p1, :cond_a

    xor-int/lit8 v21, p2, 0x1

    if-eqz v21, :cond_a

    move/from16 v19, v5

    :goto_3
    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v21, v0

    xor-int/lit8 v21, v21, 0x1

    :goto_4
    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v19, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v21, v0

    :goto_5
    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDraggingInRecents:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    iput v12, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTriggeredFromAltTab:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    move/from16 v0, p5

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/recents/BaseRecentsImpl;->preloadIcon(I)V

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->getWindowRectOverride(I)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v15

    iget v0, v15, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iget v0, v15, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    iget-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    iget-boolean v13, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    :goto_6
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v21

    new-instance v22, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;-><init>(Z)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    if-eqz p3, :cond_4

    if-eqz p5, :cond_10

    :cond_4
    if-eqz p2, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-static/range {v21 .. v23}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/RecentsActivityLaunchState;)V

    :cond_5
    :goto_7
    if-eqz v5, :cond_6

    new-instance v7, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v7}, Lcom/android/systemui/recents/model/Task;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/systemui/recents/BaseRecentsImpl;->getLaunchTargetTaskViewRect(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;Lcom/android/systemui/recents/model/Task;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v21

    new-instance v22, Lcom/android/systemui/recents/events/activity/FsGestureLaunchTargetTaskViewRectEvent;

    move-object/from16 v0, v22

    invoke-direct {v0, v8, v7}, Lcom/android/systemui/recents/events/activity/FsGestureLaunchTargetTaskViewRectEvent;-><init>(Landroid/graphics/RectF;Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_6
    return-void

    :cond_7
    const-string/jumbo v21, "null"

    goto/16 :goto_0

    :cond_8
    const/4 v12, -0x1

    goto/16 :goto_1

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_4

    :cond_c
    const/16 v21, 0x1

    goto/16 :goto_5

    :cond_d
    const/4 v13, 0x0

    goto :goto_6

    :cond_e
    new-instance v16, Lcom/android/systemui/recents/model/Task;

    invoke-direct/range {v16 .. v16}, Lcom/android/systemui/recents/model/Task;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v18

    if-eqz v18, :cond_f

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    sget v22, Lcom/android/systemui/recents/BaseRecentsImpl;->mTaskBarHeight:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->top:F

    :try_start_0
    const-class v21, Landroid/app/ActivityOptions;

    const-string/jumbo v22, "makeTaskLaunchBehindWithCoordinates"

    const/16 v23, 0x8

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const-class v24, Landroid/content/Context;

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const-class v24, Landroid/view/View;

    const/16 v25, 0x1

    aput-object v24, v23, v25

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x2

    aput-object v24, v23, v25

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x3

    aput-object v24, v23, v25

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x4

    aput-object v24, v23, v25

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x5

    aput-object v24, v23, v25

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x6

    aput-object v24, v23, v25

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x7

    aput-object v24, v23, v25

    invoke-virtual/range {v21 .. v23}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    if-eqz v10, :cond_5

    const-class v21, Landroid/app/ActivityOptions;

    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v23, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aput-object v23, v22, v24

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x2

    aput-object v23, v22, v24

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x3

    aput-object v23, v22, v24

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x4

    aput-object v23, v22, v24

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x5

    aput-object v23, v22, v24

    const/16 v23, -0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x6

    aput-object v23, v22, v24

    const/16 v23, -0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x7

    aput-object v23, v22, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityOptions;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/RecentsActivityLaunchState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v4

    const-string/jumbo v21, "RecentsImpl"

    const-string/jumbo v22, "makeTaskLaunchBehindWithCoordinates method not found"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-static/range {v21 .. v23}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/RecentsActivityLaunchState;)V

    goto/16 :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-static/range {v21 .. v23}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/RecentsActivityLaunchState;)V

    goto/16 :goto_7

    :cond_10
    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/BaseRecentsImpl;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v11

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/RecentsActivityLaunchState;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mLastToggleTime:J

    return-void

    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v11

    goto :goto_8

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/BaseRecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v11

    goto :goto_8
.end method

.method public toggleRecents(I)V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mDraggingInRecents:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLaunchedWhileDocking:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mTriggeredFromAltTab:Z

    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v13

    new-instance v9, Lcom/android/systemui/recents/model/MutableBoolean;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Lcom/android/systemui/recents/model/MutableBoolean;-><init>(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLastToggleTime:J

    sub-long v10, v2, v4

    invoke-virtual {v13, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v12

    iget-boolean v0, v12, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v0, :cond_3

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v10

    if-gez v0, :cond_1

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v10, v2

    if-gez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    const-string/jumbo v0, "doubleTap"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendSwitchAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLastToggleTime:J

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v2, "Failed to launch RecentsActivity"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    const-string/jumbo v0, "hideRecents"

    const-string/jumbo v2, "clickRecentsKey"

    invoke-static {v0, v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x15e

    cmp-long v0, v10, v2

    if-gez v0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    const-string/jumbo v0, "hideRecents"

    const-string/jumbo v2, "clickAltTabKey"

    invoke-static {v0, v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLastToggleTime:J

    goto :goto_1

    :cond_5
    const-wide/16 v2, 0x15e

    cmp-long v0, v10, v2

    if-gez v0, :cond_6

    return-void

    :cond_6
    sget-boolean v0, Lcom/android/systemui/recents/BaseRecentsImpl;->sOneKeyCleaning:Z

    if-eqz v0, :cond_7

    const v0, 0x7f110538

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->showToast(I)V

    return-void

    :cond_7
    invoke-virtual {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-boolean v2, v9, Lcom/android/systemui/recents/model/MutableBoolean;->value:Z

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/BaseRecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZIZ)V

    const-string/jumbo v0, "recentapps"

    invoke-virtual {v13, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl;->mLastToggleTime:J
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
