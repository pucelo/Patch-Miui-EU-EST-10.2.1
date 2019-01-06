.class public Landroid/graphics/improve/SuperResolution;
.super Ljava/lang/Object;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/improve/SuperResolution$ImproveInfo;,
        Landroid/graphics/improve/SuperResolution$MainHandler;,
        Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;,
        Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;
    }
.end annotation


# static fields
.field public static final INTENT_INIT:Ljava/lang/String; = "miui.intent.action.super_resolution_turnon"

.field private static final MODEL_TYPE:I = 0x0

.field private static final MSG_IMPROVE:I = 0x3e6

.field private static final MSG_INIT:I = 0x3e7

.field private static final MSG_UPDATE_DRAWABLE:I = 0x1

.field public static final PKG_MM:Ljava/lang/String; = "com.tencent.mm"

.field public static final PKG_NEWS:Ljava/lang/String; = "com.ss.android.article.news"

.field public static final TAG:Ljava/lang/String; = "SuperResolution"

.field private static volatile instance:Landroid/graphics/improve/SuperResolution; = null

.field private static final mLimitMaxHeight:I = 0x320

.field private static final mLimitMaxWidth:I = 0x320

.field private static final mLimitMinHeight:I = 0x64

.field private static final mLimitMinWidth:I = 0x64

.field private static final mLimitTime:I = 0xfa0


# instance fields
.field private mBitmapRecord:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurPkg:Ljava/lang/String;

.field private mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

.field private mImproveHook:Landroid/graphics/improve/ImproveHookAble;

.field private mInitComplete:Z

.field private mReceiver:Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;

.field private mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

.field private mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;


# direct methods
.method static synthetic -get0(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/BitmapImproveAble;
    .registers 2

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    return-object v0
.end method

.method static synthetic -get1(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/ImproveHookAble;
    .registers 2

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mImproveHook:Landroid/graphics/improve/ImproveHookAble;

    return-object v0
.end method

.method static synthetic -get2(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/SuperResolution$MainHandler;
    .registers 2

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    return-object v0
.end method

.method static synthetic -set0(Landroid/graphics/improve/SuperResolution;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/improve/SuperResolution;->mInitComplete:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->checkViewIsAvailable(Landroid/widget/ImageView;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;Landroid/graphics/improve/SuperResolution$ImproveInfo;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/improve/SuperResolution;->drawableHasChanged(Landroid/widget/ImageView;Landroid/graphics/improve/SuperResolution$ImproveInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->isAllowInitAsync(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/graphics/improve/SuperResolution;J)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/improve/SuperResolution;->isTimeOutOfLimit(J)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/graphics/improve/SuperResolution;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->getBitmapInfo(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/graphics/improve/SuperResolution;->add2Record(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/graphics/improve/SuperResolution;JLjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/improve/SuperResolution;->checkTime(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->initAsync(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/graphics/improve/SuperResolution;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/improve/SuperResolution;->initImproveInSRThread()V

    return-void
.end method

.method static synthetic -wrap9(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->initInChildThread(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mBitmapRecord:Ljava/util/HashSet;

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    return-void
.end method

.method private add2Record(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 5

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mBitmapRecord:Ljava/util/HashSet;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkTime(JLjava/lang/String;)V
    .registers 11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "checkTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "consuming:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkViewIsAvailable(Landroid/widget/ImageView;)Z
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method private drawableHasChanged(Landroid/widget/ImageView;Landroid/graphics/improve/SuperResolution$ImproveInfo;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->drawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    const/4 v1, 0x1

    return v1
.end method

.method private getBitmapInfo(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, ", bitmap hashCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " H:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " W:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getImproveHook(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/improve/ImproveHookAble;
    .registers 5

    :try_start_0
    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Landroid/graphics/improve/MMImproveHook;

    invoke-direct {v1, p1}, Landroid/graphics/improve/MMImproveHook;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_f
    const-string/jumbo v1, "com.ss.android.article.news"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Landroid/graphics/improve/NewsImproveHook;

    invoke-direct {v1, p1}, Landroid/graphics/improve/NewsImproveHook;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v1

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "hook error"

    invoke-static {p1, v1}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    :cond_28
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/graphics/improve/SuperResolution;
    .registers 4

    sget-object v1, Landroid/graphics/improve/SuperResolution;->instance:Landroid/graphics/improve/SuperResolution;

    if-nez v1, :cond_16

    const-class v2, Landroid/graphics/improve/SuperResolution;

    monitor-enter v2

    :try_start_7
    sget-object v1, Landroid/graphics/improve/SuperResolution;->instance:Landroid/graphics/improve/SuperResolution;

    if-nez v1, :cond_15

    new-instance v0, Landroid/graphics/improve/SuperResolution;

    invoke-direct {v0}, Landroid/graphics/improve/SuperResolution;-><init>()V

    invoke-direct {v0, p0}, Landroid/graphics/improve/SuperResolution;->init(Landroid/content/Context;)V

    sput-object v0, Landroid/graphics/improve/SuperResolution;->instance:Landroid/graphics/improve/SuperResolution;
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    :cond_15
    monitor-exit v2

    :cond_16
    sget-object v1, Landroid/graphics/improve/SuperResolution;->instance:Landroid/graphics/improve/SuperResolution;

    return-object v1

    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getMainHandler()Landroid/graphics/improve/SuperResolution$MainHandler;
    .registers 3

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/graphics/improve/SuperResolution$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/graphics/improve/SuperResolution$MainHandler;-><init>(Landroid/graphics/improve/SuperResolution;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    :cond_f
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    new-instance v0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;

    invoke-direct {v0, p0}, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;-><init>(Landroid/graphics/improve/SuperResolution;)V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mReceiver:Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;

    invoke-direct {p0}, Landroid/graphics/improve/SuperResolution;->isAllowInitSync()Z

    move-result v0

    if-nez v0, :cond_24

    return-void

    :cond_24
    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->registerReceiver(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->initAsync(Landroid/content/Context;)V

    return-void
.end method

.method private initAsync(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/graphics/improve/SuperResolution$1;

    invoke-direct {v0, p0, p1}, Landroid/graphics/improve/SuperResolution$1;-><init>(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/graphics/improve/SuperResolution$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initImproveInSRThread()V
    .registers 4

    invoke-static {}, Landroid/graphics/improve/SRUtils;->isSupportSelfArithmetic()Z

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Landroid/graphics/improve/SelfBitmapImprove;

    invoke-direct {v0}, Landroid/graphics/improve/SelfBitmapImprove;-><init>()V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    :goto_d
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/graphics/improve/BitmapImproveAble;->init(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/improve/SuperResolution;->mInitComplete:Z

    iget-boolean v0, p0, Landroid/graphics/improve/SuperResolution;->mInitComplete:Z

    if-eqz v0, :cond_56

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mBitmapRecord:Ljava/util/HashSet;

    invoke-direct {p0}, Landroid/graphics/improve/SuperResolution;->getMainHandler()Landroid/graphics/improve/SuperResolution$MainHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mainHandler:Landroid/graphics/improve/SuperResolution$MainHandler;

    const-string/jumbo v0, "init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-- init successful, Supplier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4d
    return-void

    :cond_4e
    new-instance v0, Landroid/graphics/improve/KingSoftBitmapImprove;

    invoke-direct {v0}, Landroid/graphics/improve/KingSoftBitmapImprove;-><init>()V

    iput-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    goto :goto_d

    :cond_56
    const-string/jumbo v0, "init"

    const-string/jumbo v1, "-- init error!!!"

    invoke-static {v0, v1}, Landroid/graphics/improve/SRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "init error"

    invoke-static {v0, v1}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4d
.end method

.method private initInChildThread(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->isAllowInitAsync(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    const-class v2, Landroid/graphics/improve/SuperResolution;

    monitor-enter v2

    :try_start_a
    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/improve/SuperResolution;->mInitComplete:Z
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_46

    monitor-exit v2

    return-void

    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/graphics/improve/SuperResolution;->getImproveHook(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/improve/ImproveHookAble;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/improve/SuperResolution;->mImproveHook:Landroid/graphics/improve/ImproveHookAble;

    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mImproveHook:Landroid/graphics/improve/ImproveHookAble;
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_46

    if-nez v1, :cond_23

    monitor-exit v2

    return-void

    :cond_23
    :try_start_23
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SuperResolution"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;-><init>(Landroid/graphics/improve/SuperResolution;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    const/16 v3, 0x3e7

    invoke-virtual {v1, v3}, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_46

    monitor-exit v2

    return-void

    :catchall_46
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isAllowInitAsync(Landroid/content/Context;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/improve/SRUtils;->isAppAccessSR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "SuperResolution"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "show_already"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v4

    :cond_20
    const-string/jumbo v1, "SuperResolution"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "show_already"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/improve/SRUtils;->isCloundAccessSR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/improve/SRUtils;->isLocalAccessSR(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5a

    :cond_42
    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->showToast(Landroid/content/Context;)V

    const-string/jumbo v1, "SuperResolution"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "show_already"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5a
    return v3
.end method

.method private isAllowInitSync()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/improve/SRUtils;->isInAppAccessList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mCurPkg:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return v2

    :cond_17
    invoke-static {}, Landroid/graphics/improve/SRUtils;->isProductAccessSR()Z

    move-result v0

    if-nez v0, :cond_1e

    return v2

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method private isAlreadyImprove(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
    .registers 5

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mBitmapRecord:Ljava/util/HashSet;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSizeOutOfLimit(Landroid/graphics/Bitmap;)Z
    .registers 7

    const/16 v3, 0x320

    const/16 v2, 0x64

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v3, :cond_10

    if-ge v0, v2, :cond_30

    :cond_10
    const-string/jumbo v2, "SizeOutOfLimit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bitmap out of limit,current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/graphics/improve/SuperResolution;->getBitmapInfo(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_30
    if-gt v1, v3, :cond_10

    if-lt v1, v2, :cond_10

    const/4 v2, 0x0

    return v2
.end method

.method private isTimeOutOfLimit(J)Z
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    const-string/jumbo v0, "isTimeOutOfLimit"

    const-string/jumbo v1, "process time out of limit,limit:4000"

    invoke-static {v0, v1}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "miui.intent.action.super_resolution_turnon"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/graphics/improve/SuperResolution;->mReceiver:Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showToast(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/improve/SuperResolution;->getMainHandler()Landroid/graphics/improve/SuperResolution$MainHandler;

    move-result-object v0

    new-instance v1, Landroid/graphics/improve/SuperResolution$2;

    invoke-direct {v1, p0, p1}, Landroid/graphics/improve/SuperResolution$2;-><init>(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/graphics/improve/SuperResolution$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public improveBitmapIfNeeded(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .registers 11

    const/16 v6, 0x3e6

    iget-boolean v4, p0, Landroid/graphics/improve/SuperResolution;->mInitComplete:Z

    if-nez v4, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_10
    iget-object v4, p0, Landroid/graphics/improve/SuperResolution;->mImproveHook:Landroid/graphics/improve/ImproveHookAble;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, p2, v5}, Landroid/graphics/improve/ImproveHookAble;->getBitmap(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1d} :catch_21

    move-result-object v3

    if-nez v3, :cond_2c

    return-void

    :catch_21
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v4, "get bitmap error"

    invoke-static {p1, v4}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2c
    invoke-direct {p0, p3, v3}, Landroid/graphics/improve/SuperResolution;->isAlreadyImprove(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz v4, :cond_33

    return-void

    :cond_33
    invoke-direct {p0, v3}, Landroid/graphics/improve/SuperResolution;->isSizeOutOfLimit(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz v4, :cond_3a

    return-void

    :cond_3a
    new-instance v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;

    invoke-direct {v2}, Landroid/graphics/improve/SuperResolution$ImproveInfo;-><init>()V

    iput-object v3, v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    iput-object v0, v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->clsName:Ljava/lang/String;

    iput-object p2, v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p3}, Landroid/graphics/improve/SuperResolution$ImproveInfo;->setImageView(Landroid/widget/ImageView;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    iget-object v4, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    invoke-virtual {v4, v6}, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->removeMessages(I)V

    iget-object v4, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    iget-object v5, p0, Landroid/graphics/improve/SuperResolution;->mSRHandler:Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;

    invoke-virtual {v5, v6, v2}, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Landroid/graphics/improve/SuperResolution;->mDrawableImprove:Landroid/graphics/improve/BitmapImproveAble;

    invoke-interface {v0}, Landroid/graphics/improve/BitmapImproveAble;->release()V

    return-void
.end method
