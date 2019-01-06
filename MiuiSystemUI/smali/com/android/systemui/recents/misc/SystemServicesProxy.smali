.class public Lcom/android/systemui/recents/misc/SystemServicesProxy;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/misc/SystemServicesProxy$1;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$H;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sMultiWindowForceNotResizePkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMultiWindowForceResizePkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sRecentsBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# instance fields
.field private mAccessControlLockMode:I

.field private mAccessLockedFakeScreenshotLand:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessLockedFakeScreenshotPort:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mAccm:Landroid/view/accessibility/AccessibilityManager;

.field mAm:Landroid/app/ActivityManager;

.field mAssistComponent:Landroid/content/ComponentName;

.field mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field mBgProtectionCanvas:Landroid/graphics/Canvas;

.field mBgProtectionPaint:Landroid/graphics/Paint;

.field mContext:Landroid/content/Context;

.field mDisplay:Landroid/view/Display;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field mDummyThumbnailHeight:I

.field mDummyThumbnailWidth:I

.field private final mHandler:Landroid/os/Handler;

.field mHasFreeformWorkspaceSupport:Z

.field public final mIFsGestureCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/fsgesture/IFsGestureCallback;",
            ">;"
        }
    .end annotation
.end field

.field mIam:Landroid/app/IActivityManager;

.field mIpm:Landroid/content/pm/IPackageManager;

.field private mIsFsGestureAnimating:Z

.field mIsSafeMode:Z

.field mIwm:Landroid/view/IWindowManager;

.field mPm:Landroid/content/pm/PackageManager;

.field mRecentsPackage:Ljava/lang/String;

.field mStatusBarHeight:I

.field private mTaskStackListener:Lcom/android/systemui/recents/misc/TaskStackListener;

.field private mTaskStackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field mTtsEngines:Landroid/speech/tts/TtsEngines;

.field mUm:Landroid/os/UserManager;

.field mWebAppDAO:Lcom/miui/browser/webapps/WebAppDAO;

.field public mWm:Landroid/view/WindowManager;

.field mWpm:Landroid/app/WallpaperManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/service/dreams/IDreamManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->DEBUG:Z

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    const-string/jumbo v1, "com.android.systemui.tv.pip.PipOnboardingActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    const-string/jumbo v1, "com.android.systemui.tv.pip.PipMenuActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    const-string/jumbo v1, "com.android.systemui.recents.RecentsActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceResizePkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceNotResizePkgList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/misc/SystemServicesProxy$H;)V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIFsGestureCallbackMap:Ljava/util/HashMap;

    iput-boolean v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsFsGestureAnimating:Z

    new-instance v3, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListener:Lcom/android/systemui/recents/misc/TaskStackListener;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    new-instance v3, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    const-string/jumbo v3, "dreams"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWpm:Landroid/app/WallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRecentsPackage:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHasFreeformWorkspaceSupport:Z

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsSafeMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050002

    const v0, 0x1050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailWidth:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailHeight:I

    const v3, 0x105018e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mStatusBarHeight:I

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistComponent:Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/miui/browser/webapps/WebAppDAO;->getInstance(Landroid/content/Context;)Lcom/miui/browser/webapps/WebAppDAO;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWebAppDAO:Lcom/miui/browser/webapps/WebAppDAO;

    new-instance v3, Landroid/speech/tts/TtsEngines;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "access_control_lock_mode"

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessControlLockMode:I

    return-void
.end method

.method private createAccessLockedFakeScreenshot()Landroid/graphics/Bitmap;
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const v8, 0x3f19999a    # 0.6f

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Point;->set(II)V

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d0106

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget v6, v4, Landroid/graphics/Point;->x:I

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v5, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getAccessLockedFakeScreenshot(Z)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessLockedFakeScreenshotPort:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->createAccessLockedFakeScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p1, :cond_4

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessLockedFakeScreenshotPort:Ljava/lang/ref/SoftReference;

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessLockedFakeScreenshotPort:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessLockedFakeScreenshotLand:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessLockedFakeScreenshotLand:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessLockedFakeScreenshotLand:Ljava/lang/ref/SoftReference;

    goto :goto_1
.end method

.method private getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Must be called on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    :cond_1
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public static getMultiWindowForceNotResizeList(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v9, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceNotResizePkgList:Ljava/util/List;

    monitor-enter v9

    :try_start_0
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceNotResizePkgList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "MultiWindowForceNotResizePkgsForN"

    :goto_0
    invoke-static {v10, v8}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "SystemServicesProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "json="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "pkg"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceNotResizePkgList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceNotResizePkgList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f030051

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceNotResizePkgList:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v9

    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceNotResizePkgList:Ljava/util/List;

    return-object v8

    :cond_3
    :try_start_3
    const-string/jumbo v8, "MultiWindowForceNotResizePkgsForM"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public static getMultiWindowForceResizeList(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v9, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceResizePkgList:Ljava/util/List;

    monitor-enter v9

    :try_start_0
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceResizePkgList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "MultiWindowForceResizePkgsForN"

    :goto_0
    invoke-static {v10, v8}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "SystemServicesProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "json="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "pkg"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceResizePkgList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceResizePkgList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f030052

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceResizePkgList:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v9

    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sMultiWindowForceResizePkgList:Ljava/util/List;

    return-object v8

    :cond_3
    :try_start_3
    const-string/jumbo v8, "MultiWindowForceResizePkgsForM"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private getTaskThumbnailInfo(Landroid/app/ActivityManager$TaskThumbnail;)Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    new-instance v0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    invoke-direct {v0}, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;-><init>()V

    iget-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iget v1, v1, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    iput v1, v0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    iget-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iget v1, v1, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    iput v1, v0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    iget-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iget v1, v1, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    iput v1, v0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    return-object v0
.end method

.method public static isFreeformStack(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHomeOrRecentsStack(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/SystemUICompat;->isHomeOrRecentsStack(ILandroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public awakenDreamsAsync()V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelThumbnailTransition(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-static {v1, p1}, Lcom/android/systemui/SystemUICompat;->cancelTaskThumbnailTransition(Landroid/app/IActivityManager;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelWindowTransition(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-static {v1, p1}, Lcom/android/systemui/SystemUICompat;->cancelTaskWindowTransition(Landroid/app/IActivityManager;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public changeAlphaScaleForFsGesture(Ljava/lang/String;FF)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FFII)V

    return-void
.end method

.method public changeAlphaScaleForFsGesture(Ljava/lang/String;FFII)V
    .locals 9

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FFIIIIZ)V

    return-void
.end method

.method public changeAlphaScaleForFsGesture(Ljava/lang/String;FFIIIIZ)V
    .locals 9

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIFsGestureCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fsgesture/IFsGestureCallback;

    if-eqz v0, :cond_0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    :try_start_0
    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->changeAlphaScale(FFIIIIZ)V

    sget-boolean v1, Lcom/android/systemui/recents/misc/SystemServicesProxy;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SystemServicesProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeAlphaScaleForFsGesture callbackKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " alpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " scale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public endProlongedAnimations()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->endProlongedAnimations()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v3
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x80

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v3
.end method

.method public getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWebAppDAO:Lcom/miui/browser/webapps/WebAppDAO;

    invoke-virtual {v2, p1}, Lcom/miui/browser/webapps/WebAppDAO;->get(Landroid/content/pm/ActivityInfo;)Lcom/miui/browser/webapps/WebAppInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/miui/browser/webapps/WebAppInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    const-wide/32 v4, 0x2932e00

    invoke-static {v2, p1, v3, v4, v5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWebAppDAO:Lcom/miui/browser/webapps/WebAppDAO;

    invoke-virtual {v2, p1}, Lcom/miui/browser/webapps/WebAppDAO;->get(Landroid/content/pm/ActivityInfo;)Lcom/miui/browser/webapps/WebAppInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/miui/browser/webapps/WebAppInfo;->mLabel:Ljava/lang/String;

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const v4, 0x7f1100e7

    invoke-virtual {p3, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/app/ActivityManagerCompat;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_1
    return-object v2
.end method

.method public getCurrentUser()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method public getDeviceSmallestWidth()I
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1, v0}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    return v2
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public getDockedDividerSize(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0700a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v1, v3

    return v3
.end method

.method public getProcessUser()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    return v0
.end method

.method public getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v9, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v9, :cond_0

    const/4 v9, 0x0

    return-object v9

    :cond_0
    const/16 v5, 0xa

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v1, 0x3e

    if-eqz p3, :cond_1

    const/16 v1, 0x3f

    :cond_1
    const/4 v8, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v9, v6, v1, p2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    if-nez v8, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    return-object v9

    :catch_0
    move-exception v0

    const-string/jumbo v9, "SystemServicesProxy"

    const-string/jumbo v10, "Failed to get recent tasks"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v7, :cond_4

    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    const/high16 v10, 0x800000

    if-ne v9, v10, :cond_7

    const/4 v2, 0x1

    :goto_2
    iget v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p4, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v2, v9

    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    xor-int/lit8 v9, p3, 0x1

    if-eqz v9, :cond_6

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    return-object v9
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v1

    :cond_0
    return-object v3
.end method

.method public getStableInsets(Landroid/graphics/Rect;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/SystemUICompat;->getStableInsets(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "force_fsg_nav_bar"

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, p1, Landroid/graphics/Rect;->right:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getTaskStackListener()Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$6;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    return-object v0
.end method

.method public getTaskThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;)Lcom/android/systemui/recents/model/ThumbnailData;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    new-instance v6, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-direct {v6}, Lcom/android/systemui/recents/model/ThumbnailData;-><init>()V

    invoke-virtual {p0, p1, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/ThumbnailData;)V

    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const-string/jumbo v0, "SystemServicesProxy"

    const-string/jumbo v1, "Invalid screenshot detected from getTaskThumbnail()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v6
.end method

.method public getThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/ThumbnailData;)V
    .locals 23

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isAccessLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getRotation()I

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getRotation()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAccessLockedFakeScreenshot(Z)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    new-instance v17, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    invoke-direct/range {v17 .. v17}, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;-><init>()V

    if-eqz v14, :cond_2

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    return-void

    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    const/16 v19, 0x2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    return-void

    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    if-nez v16, :cond_5

    return-void

    :catch_0
    move-exception v11

    const-string/jumbo v19, "SystemServicesProxy"

    const-string/jumbo v20, "Failed to get task thumbnail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_5
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v18, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v19

    sget-object v20, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    :cond_6
    if-eqz v6, :cond_7

    :try_start_1
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v0, v9

    move/from16 v19, v0

    const v20, 0x3f19999a    # 0.6f

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v13, v0

    int-to-float v0, v7

    move/from16 v19, v0

    const v20, 0x3f19999a    # 0.6f

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mStatusBarHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f19999a    # 0.6f

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v15, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v13, :cond_8

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v20, v20, v15

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    :cond_8
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnailInfo(Landroid/app/ActivityManager$TaskThumbnail;)Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    return-void

    :catch_1
    move-exception v10

    goto/16 :goto_2
.end method

.method public getWindowModeFromRecentTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWindowRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-static {v0}, Lcom/android/systemui/SystemUICompat;->getRecentsWindowRect(Landroid/app/IActivityManager;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public hasDockedTask()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-static {v0}, Lcom/android/systemui/SystemUICompat;->hasDockedTask(Landroid/app/IActivityManager;)Z

    move-result v0

    return v0
.end method

.method public hasFreeformWorkspaceSupport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHasFreeformWorkspaceSupport:Z

    return v0
.end method

.method public hasSoftNavigationBar()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public isAccessLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "security"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->isAccessControlActived(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1, v2}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessControlLockMode:I

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1, v2}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public isDreaming()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Failed to query dream manager."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isFsGestureAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsFsGestureAnimating:Z

    return v0
.end method

.method public isInSafeMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsSafeMode:Z

    return v0
.end method

.method public isRecentsActivityVisible()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;)Z

    move-result v0

    return v0
.end method

.method public isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p1, v0, v1}, Lcom/android/systemui/SystemUICompat;->isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;Landroid/app/IActivityManager;Landroid/content/pm/PackageManager;)Z

    move-result v0

    return v0
.end method

.method public isScreenPinningActive()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v2
.end method

.method public isSystemUser(I)Z
    .locals 1

    sget-object v0, Landroid/os/UserHandleCompat;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public killProcess(Lcom/android/systemui/recents/model/Task;)V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public moveTaskToDockedStack(IILandroid/graphics/Rect;)Z
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    return v8

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManagerCompat;->moveTaskToDockedStack(Landroid/app/IActivityManager;IIZZLandroid/graphics/Rect;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    return v8
.end method

.method public moveTaskToStack(II)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, p2, v3}, Landroid/app/IActivityManager;->positionTaskInStack(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/view/IWindowManager;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemServicesProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to override transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerFsGestureCall(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIFsGestureCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerMiuiTaskResizeList(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListener:Lcom/android/systemui/recents/misc/TaskStackListener;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Failed to call registerTaskStackListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeTask(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAccessControlLockMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccessControlLockMode:I

    return-void
.end method

.method public setIsFsGestureAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsFsGestureAnimating:Z

    return-void
.end method

.method public setPipVisibility(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    invoke-static {v1, p1}, Landroid/view/IWindowManagerCompat;->setPipVisibility(Landroid/view/IWindowManager;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Unable to reach window manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRecentsVisibility(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/systemui/SystemUICompat;->setRecentsVisibility(Landroid/content/Context;Z)V

    return-void
.end method

.method public startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-eqz v2, :cond_3

    :try_start_0
    iget v2, p2, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    if-nez p4, :cond_0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p4

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    iget v3, p2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-nez p4, :cond_2

    :goto_0
    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    return v4

    :cond_2
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemServicesProxy"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v5

    const v3, 0x7f110547

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return v5
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-static {v1, p1}, Landroid/app/ActivityManagerCompat;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/IActivityManager;Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startTaskInDockedMode(II)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v2, :cond_0

    return v5

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/app/ActivityOptionsCompat;->setDockCreateMode(Landroid/app/ActivityOptions;I)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SystemServicesProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to dock task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with createMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method public startTaskInDockedMode(Lcom/android/systemui/recents/model/Task;ILandroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-static {p1, p2, v0, p3}, Lcom/android/systemui/SystemUICompat;->startTaskInDockedMode(Lcom/android/systemui/recents/model/Task;ILandroid/app/IActivityManager;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public unRegisterFsGestureCall(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIFsGestureCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIFsGestureCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
