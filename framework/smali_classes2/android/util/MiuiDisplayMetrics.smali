.class public final Landroid/util/MiuiDisplayMetrics;
.super Ljava/lang/Object;
.source "MiuiDisplayMetrics.java"


# static fields
.field public static DENSITY_DEVICE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DENSITY_NXHGITH:I = 0x1b8

.field public static final PROP_MIUI_DENSITY:Ljava/lang/String; = "persist.miui.density_v2"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/util/MiuiDisplayMetrics;->getMiuiDeviceDensity()I

    move-result v0

    sput v0, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactoryDeviceDensity()I
    .registers 2

    const-string/jumbo v0, "ro.sf.lcd_density"

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getMiuiDeviceDensity()I
    .registers 2

    const-string/jumbo v0, "persist.miui.density_v2"

    invoke-static {}, Landroid/util/MiuiDisplayMetrics;->getFactoryDeviceDensity()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final getNxhdpiDensity()I
    .registers 1

    const/16 v0, 0x1b8

    return v0
.end method

.method public static setOverlayDensity(I)Z
    .registers 11

    const/4 v2, 0x0

    invoke-static {}, Landroid/util/MiuiDisplayMetrics;->getFactoryDeviceDensity()I

    move-result v1

    int-to-float v3, v1

    const/high16 v4, 0x3fc00000    # 1.5f

    div-float/2addr v3, v4

    int-to-float v4, p0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_39

    int-to-double v4, p0

    int-to-double v6, v1

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_39

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v0, p0, :cond_39

    const-string/jumbo v3, "persist.miui.density_v2"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "persist.miui.density_v2"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne p0, v3, :cond_38

    const/4 v2, 0x1

    :cond_38
    return v2

    :cond_39
    return v2
.end method
