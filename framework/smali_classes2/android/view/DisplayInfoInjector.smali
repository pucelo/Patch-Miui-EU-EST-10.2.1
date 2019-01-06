.class public Landroid/view/DisplayInfoInjector;
.super Ljava/lang/Object;
.source "DisplayInfoInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayInfoInjector$1;
    }
.end annotation


# static fields
.field private static final NOTCH_BLACK_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAppName:Ljava/lang/String;

.field private static mNotchConfig:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/DisplayInfoInjector$1;

    invoke-direct {v0}, Landroid/view/DisplayInfoInjector$1;-><init>()V

    sput-object v0, Landroid/view/DisplayInfoInjector;->NOTCH_BLACK_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustHeightIfNeeded(Landroid/content/res/Configuration;IIILjava/lang/String;)I
    .registers 9

    if-eqz p0, :cond_2f

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    :cond_7
    if-ne p1, p3, :cond_31

    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v1, :cond_31

    const-string/jumbo v1, "persist.sys.miui_optimization"

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "ro.miui.cts"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_32

    return p1

    :cond_2f
    if-lt p2, p3, :cond_7

    :cond_31
    :goto_31
    return p1

    :cond_32
    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    if-nez v1, :cond_44

    invoke-static {v0}, Landroid/view/DisplayInfoInjector;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/MiuiInit;->getNotchConfig(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    :cond_44
    sget v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_31

    sget-object v1, Landroid/view/DisplayInfoInjector;->NOTCH_BLACK_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_31
.end method

.method static adjustWidthIfNeeded(Landroid/content/res/Configuration;IIILjava/lang/String;)I
    .registers 9

    if-eqz p0, :cond_2f

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    :cond_7
    if-ne p1, p2, :cond_31

    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v1, :cond_31

    const-string/jumbo v1, "persist.sys.miui_optimization"

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "ro.miui.cts"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_32

    return p1

    :cond_2f
    if-gt p2, p3, :cond_7

    :cond_31
    :goto_31
    return p1

    :cond_32
    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    if-nez v1, :cond_44

    invoke-static {v0}, Landroid/view/DisplayInfoInjector;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/MiuiInit;->getNotchConfig(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    :cond_44
    sget v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_31

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_31
.end method

.method static getAppName(I)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    const-string/jumbo v0, ""

    const/16 v3, 0x2710

    if-ge p0, v3, :cond_9

    return-object v0

    :cond_9
    const/4 v2, 0x0

    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_1a

    move-result-object v2

    :goto_12
    if-eqz v2, :cond_19

    array-length v3, v2

    if-lez v3, :cond_19

    aget-object v0, v2, v4

    :cond_19
    return-object v0

    :catch_1a
    move-exception v1

    goto :goto_12
.end method
