.class public Lmiui/util/CustomizeUtil;
.super Ljava/lang/Object;
.source "CustomizeUtil.java"


# static fields
.field public static final ADJUST:Ljava/lang/String; = "adjust"

.field public static final ANDROID_MAX_ASPECT:Ljava/lang/String; = "android.max_aspect"

.field private static final CUST_VARIANT:Ljava/lang/String; = "cust_variant"

.field private static final CUST_VARIANT_FILE:Ljava/io/File;

.field private static final DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field public static final ENABLE_CONFIG:Ljava/lang/String; = "enable_config"

.field public static final EXTRA_PRIVATE_FLAG_SPECIAL_MODE:I = 0x80

.field public static final HAS_NOTCH:Z

.field public static final MAX_ASPECT_RATIO:F = 3.0f

.field private static final MIUI_APP_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

.field private static final MIUI_CUST_DIR:Ljava/io/File;

.field public static final NEED_ADJUST:Ljava/lang/String; = "need_adjust"

.field public static final NOTCH_CONFIG:Ljava/lang/String; = "notch.config"

.field public static final PACKAGE:Ljava/lang/String; = "pkg"

.field public static final RESTRICT_ASPECT_RATIO:F

.field private static final SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_METADATA:I = 0x1

.field public static final TYPE_OTHER:I = 0x5

.field public static final TYPE_RESIZEABLE:I = 0x2

.field public static final TYPE_RESTRICT:I = 0x4

.field public static final TYPE_SUGGEST:I = 0x3

.field public static final UPDATE_SPECIAL_MODE:Ljava/lang/String; = "upate_specail_mode"

.field private static sCustVariant:Ljava/lang/String;

.field private static sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/miui/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/cust/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "cust"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/miui/app/noncustomized"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/data-app/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "app"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_APP_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiAppDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "customized"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantFile()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    const-string/jumbo v0, ""

    sput-object v0, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    const-string/jumbo v0, "lithium"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    const v0, 0x3fe38e39

    :goto_6b
    sput v0, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.miui.notch"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_a0
    const v0, 0x3fea9fbe    # 1.833f

    goto :goto_6b
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDisplay(Landroid/view/DisplayInfo;ILjava/lang/String;)Landroid/view/DisplayInfo;
    .registers 14

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, p0

    const/16 v8, 0x3e8

    if-eq p1, v8, :cond_3c

    if-eqz p1, :cond_3c

    move-object v6, p2

    :try_start_a
    invoke-static {p2}, Lmiui/os/MiuiInit;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3c

    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3, p0}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_5f

    :try_start_15
    iget v7, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ge v7, v1, :cond_3d

    iget v8, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v8, v8

    sget v9, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    float-to-int v4, v8

    iget v8, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v8, v3, Landroid/view/DisplayInfo;->appWidth:I

    int-to-float v8, v8

    sget v9, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    float-to-int v4, v8

    iget v8, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v3, Landroid/view/DisplayInfo;->appHeight:I

    move-object v2, v3

    :cond_3c
    :goto_3c
    return-object v2

    :cond_3d
    iget v8, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v8, v8

    sget v9, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    float-to-int v5, v8

    iget v8, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v3, Landroid/view/DisplayInfo;->appHeight:I

    int-to-float v8, v8

    sget v9, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    float-to-int v5, v8

    iget v8, v3, Landroid/view/DisplayInfo;->appWidth:I

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v3, Landroid/view/DisplayInfo;->appWidth:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_5d} :catch_6a

    move-object v2, v3

    goto :goto_3c

    :catch_5f
    move-exception v0

    :goto_60
    const-string/jumbo v8, "CustomizeUtil"

    const-string/jumbo v9, "ajsustDisplay failed."

    invoke-static {v8, v9, v0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3c

    :catch_6a
    move-exception v0

    move-object v2, v3

    goto :goto_60
.end method

.method public static forceLayoutHideNavigation(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getCallingUidPackage(I)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    if-lez p0, :cond_1e

    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    array-length v2, v1

    if-lez v2, :cond_1e

    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    return-object v2

    :catch_14
    move-exception v0

    const-string/jumbo v2, "CustomizeUtil"

    const-string/jumbo v3, "getCallingUidPackage failed."

    invoke-static {v2, v3, v0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    return-object v4
.end method

.method public static getMiuiAppDir()Ljava/io/File;
    .registers 1

    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustDir()Ljava/io/File;
    .registers 1

    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustVariantDir()Ljava/io/File;
    .registers 12

    const/4 v11, 0x0

    sget-boolean v8, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v8, :cond_1b

    sget-object v8, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1b

    new-instance v8, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v9

    sget-object v10, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v8

    :cond_1b
    sget-object v8, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_b2

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_25
    new-instance v7, Ljava/io/FileReader;

    sget-object v8, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2c} :catch_d3
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_a4
    .catchall {:try_start_25 .. :try_end_2c} :catchall_102

    :try_start_2c
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_31} :catch_135
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_13c
    .catchall {:try_start_2c .. :try_end_31} :catchall_12e

    :try_start_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_79

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\n"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_4e} :catch_138
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4e} :catch_140
    .catchall {:try_start_31 .. :try_end_4e} :catchall_131

    if-eqz v7, :cond_53

    :try_start_50
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    :cond_53
    if-eqz v1, :cond_58

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_58} :catch_59

    :cond_58
    :goto_58
    return-object v8

    :catch_59
    move-exception v5

    const-string/jumbo v9, "CustomizeUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :cond_79
    if-eqz v7, :cond_7e

    :try_start_7b
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    :cond_7e
    if-eqz v1, :cond_83

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_83} :catch_84

    :cond_83
    :goto_83
    return-object v11

    :catch_84
    move-exception v5

    const-string/jumbo v8, "CustomizeUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :catch_a4
    move-exception v4

    :goto_a5
    :try_start_a5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_102

    if-eqz v6, :cond_ad

    :try_start_aa
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    :cond_ad
    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b2} :catch_b3

    :cond_b2
    :goto_b2
    return-object v11

    :catch_b3
    move-exception v5

    const-string/jumbo v8, "CustomizeUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2

    :catch_d3
    move-exception v3

    :goto_d4
    :try_start_d4
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_102

    if-eqz v6, :cond_dc

    :try_start_d9
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    :cond_dc
    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_e1} :catch_e2

    goto :goto_b2

    :catch_e2
    move-exception v5

    const-string/jumbo v8, "CustomizeUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2

    :catchall_102
    move-exception v8

    :goto_103
    if-eqz v6, :cond_108

    :try_start_105
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    :cond_108
    if-eqz v0, :cond_10d

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_10d} :catch_10e

    :cond_10d
    :goto_10d
    throw v8

    :catch_10e
    move-exception v5

    const-string/jumbo v9, "CustomizeUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10d

    :catchall_12e
    move-exception v8

    move-object v6, v7

    goto :goto_103

    :catchall_131
    move-exception v8

    move-object v0, v1

    move-object v6, v7

    goto :goto_103

    :catch_135
    move-exception v3

    move-object v6, v7

    goto :goto_d4

    :catch_138
    move-exception v3

    move-object v0, v1

    move-object v6, v7

    goto :goto_d4

    :catch_13c
    move-exception v4

    move-object v6, v7

    goto/16 :goto_a5

    :catch_140
    move-exception v4

    move-object v0, v1

    move-object v6, v7

    goto/16 :goto_a5
.end method

.method public static getMiuiCustVariantFile()Ljava/io/File;
    .registers 3

    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_13

    :cond_8
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    const-string/jumbo v2, "cust_variant"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_13
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    const-string/jumbo v2, "cust_variant"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMiuiCustomizedAppDir()Ljava/io/File;
    .registers 1

    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustomizedDir()Ljava/io/File;
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    return-object v0

    :cond_7
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiNoCustomizedAppDir()Ljava/io/File;
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/util/CustomizeUtil;->SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0

    :cond_7
    sget-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 9

    :try_start_0
    const-class v2, Landroid/view/Display;

    const-string/jumbo v3, "getRealSize"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Point;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    :goto_27
    return-void

    :catch_28
    move-exception v0

    const-string/jumbo v2, "CustomizeUtil"

    const-string/jumbo v3, "no getRealSize hack method"

    invoke-static {v2, v3}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_27
.end method

.method public static isRestrict(F)Z
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_d

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public static needChangeSize()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static setMiuiCustVariatDir(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    return-void
.end method
