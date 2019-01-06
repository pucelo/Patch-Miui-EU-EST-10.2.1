.class public Landroid/app/MiuiThemeHelper;
.super Ljava/lang/Object;
.source "MiuiThemeHelper.java"


# static fields
.field private static final ICON_THEME:Ljava/lang/String; = "/data/system/theme/icons"

.field public static final MIUI_RES_PATH:Ljava/lang/String; = "/system/framework/framework-miui-res.apk"

.field private static final MIUI_SCREENSHOT_MODE_RES_PATH:Ljava/lang/String; = "/data/system/themeScreenshotMode"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .registers 2

    const-string/jumbo v0, "/system/framework/framework-miui-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    return-void
.end method

.method public static canKeepActivityAlive(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 8

    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_19

    iget-object v1, p2, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-object v0, p3, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget v2, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v3, v1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    iget-wide v2, v0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-static {p0, v2, v3}, Landroid/content/res/MiuiConfiguration;->needRestartActivity(Ljava/lang/String;J)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :cond_19
    const/4 v2, 0x0

    return v2
.end method

.method public static copyExtraConfigurations(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget v1, v1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iput v1, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 15

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_8
    const/4 v7, 0x0

    :try_start_9
    move-object v0, p0

    check-cast v0, Landroid/app/ApplicationPackageManager;

    move-object v7, v0
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_d} :catch_31

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-gt v1, v2, :cond_3b

    if-nez p2, :cond_39

    const/4 v6, 0x1

    :goto_16
    if-nez v6, :cond_4a

    move-object v3, p2

    :goto_19
    invoke-static {p1, v3}, Lmiui/content/res/IconCustomizer;->getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    if-nez v8, :cond_30

    instance-of v1, p0, Landroid/app/ApplicationPackageManager;

    if-eqz v1, :cond_30

    check-cast p0, Landroid/app/ApplicationPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getContext()Landroid/app/ContextImpl;

    move-result-object v1

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    :cond_30
    return-object v8

    :catch_31
    move-exception v9

    if-eqz p3, :cond_38

    invoke-virtual {p0, p1, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_38
    return-object v1

    :cond_39
    const/4 v6, 0x0

    goto :goto_16

    :cond_3b
    if-eqz p2, :cond_46

    if-eqz p4, :cond_48

    iget-object v1, p4, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_16

    :cond_46
    const/4 v6, 0x1

    goto :goto_16

    :cond_48
    const/4 v6, 0x0

    goto :goto_16

    :cond_4a
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V
    .registers 8

    const-wide/16 v4, 0x0

    const/high16 v2, -0x80000000

    and-int/2addr v2, p0

    if-eqz v2, :cond_28

    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-wide v0, v2, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e

    invoke-static {p1}, Lmiui/content/res/ThemeFontChangeHelper;->quitProcessIfNeed(Landroid/content/res/Configuration;)V

    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    invoke-static {}, Landroid/view/ExtraGLES20Canvas;->freeCaches()V

    :cond_1e
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_28

    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    :cond_28
    return-void
.end method

.method public static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .registers 3

    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_8

    invoke-static {p0, p1}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    :cond_8
    return-void
.end method

.method public static isInternationalBuildWithDefaultTheme()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isScreenshotMode()Z
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 27

    const/4 v15, -0x4

    const/4 v6, -0x3

    const/4 v13, -0x2

    const/16 v19, -0x1

    const/4 v14, 0x0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_55

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v21, -0x4

    move/from16 v0, v21

    if-ne v15, v0, :cond_27

    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v4, v0, :cond_27

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v4, v0, :cond_27

    move v15, v14

    :cond_27
    const/16 v21, -0x3

    move/from16 v0, v21

    if-ne v6, v0, :cond_34

    const/16 v21, 0x2e

    move/from16 v0, v21

    if-ne v4, v0, :cond_34

    move v6, v14

    :cond_34
    const/16 v21, -0x3

    move/from16 v0, v21

    if-eq v6, v0, :cond_47

    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v4, v0, :cond_47

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v4, v0, :cond_47

    move v13, v14

    :cond_47
    const/16 v21, 0x61

    move/from16 v0, v21

    if-lt v4, v0, :cond_bf

    const/16 v21, 0x7a

    move/from16 v0, v21

    if-gt v4, v0, :cond_bf

    move/from16 v19, v14

    :cond_55
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_1ae

    if-ge v6, v13, :cond_1ae

    move/from16 v0, v19

    if-ge v13, v0, :cond_1ae

    const/16 v21, 0x0

    :try_start_6b
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_78
    .catch Ljava/lang/NumberFormatException; {:try_start_6b .. :try_end_78} :catch_c3

    move-result v8

    const/16 v21, -0x3

    move/from16 v0, v21

    if-eq v6, v0, :cond_cf

    const/16 v21, -0x2

    move/from16 v0, v21

    if-eq v13, v0, :cond_cf

    const/4 v10, 0x4

    add-int/lit8 v11, v6, 0x1

    sub-int v21, v13, v6

    const/16 v22, 0x4

    :try_start_8c
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    add-int v9, v11, v21

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_a5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c7

    const/16 v21, 0x30

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a5

    :catch_bb
    move-exception v7

    const/16 v21, 0x0

    return-object v21

    :cond_bf
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    :catch_c3
    move-exception v7

    const/16 v21, 0x0

    return-object v21

    :cond_c7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ce
    .catch Ljava/lang/NumberFormatException; {:try_start_8c .. :try_end_ce} :catch_bb

    move-result v12

    :cond_cf
    const/16 v21, 0x100

    move/from16 v0, v21

    if-ge v12, v0, :cond_11c

    const/high16 v21, 0x43800000    # 256.0f

    mul-float v8, v8, v21

    :cond_d9
    :goto_d9
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v21, "px"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14a

    const/16 v20, 0x0

    :goto_f0
    float-to-int v0, v8

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, -0x100

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v21

    shl-int/lit8 v22, v16, 0x4

    or-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v21

    or-int v21, v21, v20

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    :cond_11c
    const v21, 0x8000

    move/from16 v0, v21

    if-ge v12, v0, :cond_12a

    const/high16 v21, 0x47000000    # 32768.0f

    mul-float v8, v8, v21

    const/16 v16, 0x1

    goto :goto_d9

    :cond_12a
    const/high16 v21, 0x800000

    move/from16 v0, v21

    if-ge v12, v0, :cond_137

    const/high16 v21, 0x4b000000    # 8388608.0f

    mul-float v8, v8, v21

    const/16 v16, 0x2

    goto :goto_d9

    :cond_137
    int-to-long v0, v12

    move-wide/from16 v22, v0

    const-wide v24, 0x80000000L

    cmp-long v21, v22, v24

    if-gez v21, :cond_d9

    const/high16 v21, 0x4f000000

    mul-float v8, v8, v21

    const/16 v16, 0x3

    goto :goto_d9

    :cond_14a
    const-string/jumbo v21, "dp"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_164

    const-string/jumbo v21, "dip"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_167

    :cond_164
    const/16 v20, 0x1

    goto :goto_f0

    :cond_167
    const-string/jumbo v21, "sp"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_178

    const/16 v20, 0x2

    goto/16 :goto_f0

    :cond_178
    const-string/jumbo v21, "pt"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_189

    const/16 v20, 0x3

    goto/16 :goto_f0

    :cond_189
    const-string/jumbo v21, "in"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19a

    const/16 v20, 0x4

    goto/16 :goto_f0

    :cond_19a
    const-string/jumbo v21, "mm"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1ab

    const/16 v20, 0x5

    goto/16 :goto_f0

    :cond_1ab
    const/16 v21, 0x0

    return-object v21

    :cond_1ae
    const/16 v21, 0x0

    return-object v21
.end method
