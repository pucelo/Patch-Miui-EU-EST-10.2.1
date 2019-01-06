.class public Lmiui/app/ToggleManagerCompatibility;
.super Ljava/lang/Object;
.source "ToggleManagerCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/ToggleManagerCompatibility$1;,
        Lmiui/app/ToggleManagerCompatibility$2;,
        Lmiui/app/ToggleManagerCompatibility$3;,
        Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;,
        Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;,
        Lmiui/app/ToggleManagerCompatibility$Point;
    }
.end annotation


# static fields
.field public static final CUSTOM_BASE_ID:I = 0x2710

.field private static final PROCESS_NAME_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field public static final TAG:Ljava/lang/String; = "ToggleManagerCompatibility"

.field private static mCustomIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCustomToggleComponentNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCustomToggleImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static mCustomToggleLabelNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCustomToggleOffColor:I

.field private static mCustomToggleOnColor:I

.field private static mCustomToggleStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static mEnableCustom:Z

.field private static mIsSystemUI:Z

.field private static mObjectLock:Ljava/lang/Object;

.field private static mToggleManager:Lmiui/app/ToggleManager;

.field private static mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;


# instance fields
.field private mBgHandler:Landroid/os/Handler;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mCustomToggleChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

.field private final mDevelopmentObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mTogglOrderObserver:Landroid/database/ContentObserver;

.field private mToggleChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/app/ToggleManager$OnToggleChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToggleOrderChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/app/ToggleManager$OnToggleOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get10(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get4()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get6()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get7(Lmiui/app/ToggleManagerCompatibility;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8()Z
    .registers 1

    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    return v0
.end method

.method static synthetic -get9()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 3

    invoke-static {p0, p1}, Lmiui/app/ToggleManagerCompatibility;->isSystemApp(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getMd5Num(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mEnableCustom:Z

    sput-object v1, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    sput-object v1, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    invoke-direct {v0, p0}, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;-><init>(Lmiui/app/ToggleManagerCompatibility;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    new-instance v0, Lmiui/app/ToggleManagerCompatibility$1;

    invoke-direct {v0, p0}, Lmiui/app/ToggleManagerCompatibility$1;-><init>(Lmiui/app/ToggleManagerCompatibility;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lmiui/app/ToggleManagerCompatibility$2;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lmiui/app/ToggleManagerCompatibility$2;-><init>(Lmiui/app/ToggleManagerCompatibility;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mDevelopmentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lmiui/app/ToggleManagerCompatibility$3;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lmiui/app/ToggleManagerCompatibility$3;-><init>(Lmiui/app/ToggleManagerCompatibility;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-nez v0, :cond_36

    invoke-static {p1}, Lmiui/app/ToggleManager;->createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;

    move-result-object v0

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    :cond_36
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ToggleManagerCompatibility"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "com.android.systemui"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOnColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x11070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOffColor:I

    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    invoke-direct {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->registerListener(Z)V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lmiui/app/ToggleManagerCompatibility;
    .registers 3

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    if-nez v0, :cond_f

    new-instance v0, Lmiui/app/ToggleManagerCompatibility;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ToggleManagerCompatibility;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    :cond_f
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    return-object v0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v7, 0x0

    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_c

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eqz v4, :cond_18

    if-nez v3, :cond_1a

    :cond_18
    const/4 v5, 0x0

    return-object v5

    :cond_1a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_33

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_23
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_33
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_23
.end method

.method public static getCustomToggleIds(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getToggleList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_39

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    :goto_17
    array-length v6, v5

    if-ge v2, v6, :cond_39

    :try_start_1a
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x2710

    if-lt v3, v6, :cond_2f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2f} :catch_32

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :catch_32
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_39
    return-object v0
.end method

.method public static getCustomToggleTileSpecById(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCustomToggleTileSpecs(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v5, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v4, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    goto :goto_e

    :catchall_26
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_29
    monitor-exit v5

    return-object v2
.end method

.method public static getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(ILandroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImageDrawable(ILandroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 9

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getStatus(I)Z

    move-result v1

    sget v4, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOnColor:I

    sget v5, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOffColor:I

    move v0, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(IZLandroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 9

    sget v4, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOnColor:I

    sget v5, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOffColor:I

    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(IZLandroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImageDrawable(IZLandroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .registers 22

    sget-object v10, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v5, 0x0

    const/16 v9, 0x2710

    move/from16 v0, p0

    if-lt v0, v9, :cond_b3

    :try_start_a
    sget-object v9, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b0

    sget-object v9, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    :goto_24
    if-nez p1, :cond_bb

    const/16 v9, 0x2710

    move/from16 v0, p0

    if-lt v0, v9, :cond_ae

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x110200b9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v8, Lmiui/app/ToggleManagerCompatibility$Point;

    invoke-direct {v8}, Lmiui/app/ToggleManagerCompatibility$Point;-><init>()V

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lmiui/app/ToggleManagerCompatibility;->getTargetDrawableSize(Landroid/content/Context;Lmiui/app/ToggleManagerCompatibility$Point;)V

    iget v9, v8, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    int-to-double v12, v9

    const-wide/high16 v14, 0x4004000000000000L    # 2.5

    div-double/2addr v12, v14

    double-to-int v9, v12

    iget v11, v8, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    int-to-double v12, v11

    const-wide/high16 v14, 0x4004000000000000L    # 2.5

    div-double/2addr v12, v14

    double-to-int v11, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v9, v11}, Lmiui/app/ToggleManagerCompatibility;->zoomDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_ae

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    sub-int/2addr v9, v11

    div-int/lit8 v7, v9, 0x2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-virtual {v5, v7, v7, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v5, :cond_a1

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-nez v9, :cond_a1

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p5

    invoke-virtual {v5, v0, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_a1
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v6, v9, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_ad
    .catchall {:try_start_a .. :try_end_ad} :catchall_14c

    move-object v5, v6

    :cond_ae
    :goto_ae
    monitor-exit v10

    return-object v5

    :cond_b0
    const/4 v9, 0x0

    monitor-exit v10

    return-object v9

    :cond_b3
    :try_start_b3
    sget-object v9, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static/range {p0 .. p2}, Lmiui/app/ToggleManager;->getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_24

    :cond_bb
    const/16 v9, 0x2710

    move/from16 v0, p0

    if-lt v0, v9, :cond_ae

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x110200ba

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v2, :cond_fb

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-eqz v9, :cond_fb

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p3

    invoke-virtual {v2, v0, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_fb
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v8, Lmiui/app/ToggleManagerCompatibility$Point;

    invoke-direct {v8}, Lmiui/app/ToggleManagerCompatibility$Point;-><init>()V

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lmiui/app/ToggleManagerCompatibility;->getTargetDrawableSize(Landroid/content/Context;Lmiui/app/ToggleManagerCompatibility$Point;)V

    iget v9, v8, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    int-to-double v12, v9

    const-wide/high16 v14, 0x4004000000000000L    # 2.5

    div-double/2addr v12, v14

    double-to-int v9, v12

    iget v11, v8, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    int-to-double v12, v11

    const-wide/high16 v14, 0x4004000000000000L    # 2.5

    div-double/2addr v12, v14

    double-to-int v11, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v9, v11}, Lmiui/app/ToggleManagerCompatibility;->zoomDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_ae

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    sub-int/2addr v9, v11

    div-int/lit8 v7, v9, 0x2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-virtual {v5, v7, v7, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p4

    invoke-virtual {v5, v0, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v6, v9, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_149
    .catchall {:try_start_b3 .. :try_end_149} :catchall_14c

    move-object v5, v6

    goto/16 :goto_ae

    :catchall_14c
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method private static getMd5Num(Ljava/lang/String;)I
    .registers 6

    :try_start_0
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1f} :catch_21

    move-result v3

    return v3

    :catch_21
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getStatus(I)Z
    .registers 5

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    const/16 v1, 0x2710

    if-lt p0, v1, :cond_1d

    :try_start_7
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_19
    .catchall {:try_start_7 .. :try_end_16} :catchall_25

    move-result v1

    monitor-exit v2

    return v1

    :catch_19
    move-exception v0

    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :cond_1d
    :try_start_1d
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0}, Lmiui/app/ToggleManager;->getStatus(I)Z
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_25

    move-result v1

    monitor-exit v2

    return v1

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;
    .registers 6

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    const-string/jumbo v0, ""

    const/16 v1, 0x2710

    if-lt p0, v1, :cond_18

    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1f

    :goto_16
    monitor-exit v2

    return-object v0

    :cond_18
    :try_start_18
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1f

    move-result-object v0

    goto :goto_16

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getTargetDrawableSize(Landroid/content/Context;Lmiui/app/ToggleManagerCompatibility$Point;)V
    .registers 8

    const/16 v5, 0x96

    const/16 v4, 0x5e

    const/16 v3, 0x82

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v0, :sswitch_data_28

    iput v3, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    iput v3, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    :goto_17
    return-void

    :sswitch_18
    iput v4, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    iput v4, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    goto :goto_17

    :sswitch_1d
    iput v3, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    iput v3, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    goto :goto_17

    :sswitch_22
    iput v5, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    iput v5, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    goto :goto_17

    nop

    :sswitch_data_28
    .sparse-switch
        0x140 -> :sswitch_18
        0x1e0 -> :sswitch_1d
        0x280 -> :sswitch_22
    .end sparse-switch
.end method

.method public static getToggleList(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0, v3}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v1, "status_bar_toggle_list_order_new"

    :goto_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_16
    const-string/jumbo v1, "status_bar_toggle_page_order"

    goto :goto_d
.end method

.method private static getUserId(Landroid/content/Context;)I
    .registers 4

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    :goto_13
    return v1

    :cond_14
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    goto :goto_13
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v8, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4a

    const-string/jumbo v4, "status_bar_toggle_list_order_new"

    :goto_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v4, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_63

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    :goto_23
    array-length v7, v6
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_76

    if-ge v1, v7, :cond_63

    :try_start_26
    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v7, 0x2710

    if-lt v2, v7, :cond_4e

    sget-object v7, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_47} :catch_5c
    .catchall {:try_start_26 .. :try_end_47} :catchall_76

    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_4a
    :try_start_4a
    const-string/jumbo v4, "status_bar_toggle_page_order"
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_76

    goto :goto_d

    :cond_4e
    :try_start_4e
    invoke-static {v2}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v7

    if-eqz v7, :cond_47

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5b} :catch_5c
    .catchall {:try_start_4e .. :try_end_5b} :catchall_76

    goto :goto_47

    :catch_5c
    move-exception v0

    :try_start_5d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_63
    sget-object v7, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v7

    invoke-static {p0, v7}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v7

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v9

    invoke-static {p0, v3, v7, v9}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V
    :try_end_74
    .catchall {:try_start_5d .. :try_end_74} :catchall_76

    monitor-exit v8

    return-object v3

    :catchall_76
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static initDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public static isDisabled(I)Z
    .registers 2

    const/16 v0, 0x2710

    if-lt p0, v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v0

    return v0
.end method

.method public static isInternationalBuilder()Z
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v0
.end method

.method public static isListStyle(Landroid/content/Context;I)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_style_type"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private static isSystemApp(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 6

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    return v1

    :catch_f
    move-exception v0

    return v3
.end method

.method public static isValid(Landroid/content/Context;I)Z
    .registers 5

    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_13

    :try_start_7
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1b

    move-result v0

    monitor-exit v1

    return v0

    :cond_13
    :try_start_13
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->isValid(Landroid/content/Context;I)Z
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onCustomTileChanged(Ljava/lang/String;ZLandroid/content/Context;)V
    .registers 7

    sget-object v3, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz p1, :cond_7

    :cond_5
    :goto_5
    monitor-exit v3

    return-void

    :cond_7
    :try_start_7
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lmiui/app/ToggleManagerCompatibility;->updateUserSelectedToggleOrder(Landroid/content/Context;)V
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_4b

    goto :goto_5

    :catchall_4b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private queryCustomToggles(Z)V
    .registers 6

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_13

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_12
.end method

.method private registerListener(Z)V
    .registers 10

    const/4 v4, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_55

    const/4 v6, -0x1

    :goto_5
    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    if-eqz v0, :cond_5a

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    :goto_b
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "development_settings_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mDevelopmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "status_bar_toggle_page_order"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "status_bar_toggle_list_order_new"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void

    :cond_55
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    goto :goto_5

    :cond_5a
    new-instance v2, Landroid/os/UserHandle;

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_b
.end method

.method public static resetInstance()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    return-void
.end method

.method public static toSpec(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "custom("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateImageView(ILandroid/widget/ImageView;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManagerCompatibility;->updateImageView(ILandroid/widget/ImageView;I)V

    return-void
.end method

.method public static updateImageView(ILandroid/widget/ImageView;I)V
    .registers 6

    const/16 v2, 0x2710

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(ILandroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ge p0, v2, :cond_1f

    if-eqz v0, :cond_1f

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1b
    :goto_1b
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1e
    return-void

    :cond_1f
    if-lt p0, v2, :cond_1b

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getStatus(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1b
.end method

.method public static updateTextView(ILandroid/widget/TextView;)V
    .registers 3

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method protected static updateToggleStatus(IZ)V
    .registers 6

    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    const/16 v0, 0x2710

    if-lt p0, v0, :cond_16

    :try_start_7
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1c

    :goto_14
    monitor-exit v1

    return-void

    :cond_16
    :try_start_16
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p0, p1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_14

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static updateUserSelectedToggleOrder(Landroid/content/Context;)V
    .registers 15

    const/4 v10, 0x0

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v11

    invoke-static {p0, v11}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_40

    const-string/jumbo v7, "status_bar_toggle_list_order_new"

    :goto_e
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getToggleList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4b

    const-string/jumbo v12, " "

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    :goto_25
    array-length v12, v9

    if-ge v1, v12, :cond_4b

    :try_start_28
    aget-object v12, v9, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v12, 0x2710

    if-lt v2, v12, :cond_3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_44

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_40
    const-string/jumbo v7, "status_bar_toggle_page_order"

    goto :goto_e

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_4b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4f
    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_80

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v12, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4f

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, ""

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    goto :goto_4f

    :cond_80
    if-nez v10, :cond_83

    return-void

    :cond_83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v13

    invoke-static {v12, v7, v8, v13}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public static zoomDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .registers 14

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {p1}, Lmiui/app/ToggleManagerCompatibility;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_11

    return-object v2

    :cond_11
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, p2

    int-to-float v6, v3

    div-float v9, v2, v6

    int-to-float v2, p3

    int-to-float v6, v4

    div-float v8, v2, v6

    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method public onDestroy()V
    .registers 5

    :try_start_0
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/app/ToggleManagerCompatibility;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lmiui/app/ToggleManagerCompatibility;->mDevelopmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v2, :cond_35

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v2}, Lmiui/app/ToggleManager;->onDestroy()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_9d

    :try_start_1e
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v2}, Lmiui/app/ToggleManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "sToggleManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_35} :catch_98

    :cond_35
    :goto_35
    :try_start_35
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3e
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    if-eqz v2, :cond_47

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_47
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_50
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    if-eqz v2, :cond_59

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_59
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    if-eqz v2, :cond_62

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_62
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    if-eqz v2, :cond_6b

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_6b
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    if-eqz v2, :cond_74

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_74
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    :cond_7d
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    if-eqz v2, :cond_87

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_87
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_91

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_91
    const/4 v2, 0x0

    sput-object v2, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->resetInstance()V

    :goto_97
    return-void

    :catch_98
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_9c} :catch_9d

    goto :goto_35

    :catch_9d
    move-exception v0

    goto :goto_97
.end method

.method public performToggle(I)Z
    .registers 3

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->performToggle(I)Z

    move-result v0

    return v0
.end method

.method public queryCustomToggles()V
    .registers 2

    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mEnableCustom:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->queryCustomToggles(Z)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->queryCustomToggles(Z)V

    goto :goto_c
.end method

.method public removeCustomToggleChangeListener(Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_16

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V

    :cond_16
    return-void
.end method

.method public removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_16

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V

    :cond_16
    return-void
.end method

.method public setOnCustomToggleChangeListener(Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .registers 4

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_13

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V

    :cond_13
    return-void
.end method

.method public setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_16

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V

    :cond_16
    return-void
.end method

.method public setUserSelectedToggleOrder(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateCustomToggleImageAndText(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    sget-object v7, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    invoke-static {p1}, Lmiui/app/ToggleManagerCompatibility;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    sget-object v6, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v6, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    if-eqz p4, :cond_39

    invoke-interface {p4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_7e

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3b

    :cond_39
    monitor-exit v7

    return-void

    :cond_3b
    :try_start_3b
    sget-object v6, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-virtual {v6, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-virtual {v6, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, p5}, Lmiui/app/ToggleManagerCompatibility;->updateToggleStatus(IZ)V

    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_39

    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_5c
    if-ltz v1, :cond_39

    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/app/ToggleManager$OnToggleChangedListener;

    if-nez v5, :cond_76

    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_73
    add-int/lit8 v1, v1, -0x1

    goto :goto_5c

    :cond_76
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Lmiui/app/ToggleManager$OnToggleChangedListener;->OnToggleChanged(I)V
    :try_end_7d
    .catchall {:try_start_3b .. :try_end_7d} :catchall_7e

    goto :goto_73

    :catchall_7e
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method protected updateToggleDisabled(IZ)V
    .registers 4

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1, p2}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    return-void
.end method
