.class public Lmiui/maml/util/AppIconsHelper;
.super Ljava/lang/Object;
.source "AppIconsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/AppIconsHelper$1;
    }
.end annotation


# static fields
.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60

.field private static mAnimatingIconsResourceManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/ResourceManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mOnCreateRootCallback:Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

.field private static mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

.field private static mThemeChanged:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Ljava/util/HashMap;

    new-instance v0, Lmiui/maml/util/AppIconsHelper$1;

    invoke-direct {v0}, Lmiui/maml/util/AppIconsHelper$1;-><init>()V

    sput-object v0, Lmiui/maml/util/AppIconsHelper;->mOnCreateRootCallback:Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkVersion(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v2, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget v1, v2, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sget v2, Lmiui/maml/util/AppIconsHelper;->mThemeChanged:I

    if-le v1, v2, :cond_15

    invoke-static {}, Lmiui/maml/util/AppIconsHelper;->clearCache()V

    sput v1, Lmiui/maml/util/AppIconsHelper;->mThemeChanged:I

    :cond_15
    return-void
.end method

.method public static cleanUp()V
    .registers 0

    invoke-static {}, Lmiui/maml/RenderThread;->globalThreadStop()V

    return-void
.end method

.method public static clearCache()V
    .registers 1

    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    if-eqz v0, :cond_9

    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    invoke-virtual {v0}, Lmiui/maml/util/RendererCoreCache;->clear()V

    :cond_9
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Ljava/util/HashMap;

    if-eqz v0, :cond_12

    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_12
    return-void
.end method

.method public static getFancyIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 17

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_1b

    move-result-object v1

    :goto_f
    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v7}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :catch_1b
    move-exception v8

    goto :goto_f
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 5

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .registers 12

    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 15

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_f

    instance-of v0, p1, Landroid/content/pm/ApplicationInfo;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    :cond_f
    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :cond_11
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1c

    return-object v7

    :cond_1c
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .registers 14

    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;Z)Landroid/graphics/drawable/Drawable;
    .registers 30

    sget-object v6, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    if-nez v6, :cond_14

    new-instance v6, Lmiui/maml/util/RendererCoreCache;

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v6, v7}, Lmiui/maml/util/RendererCoreCache;-><init>(Landroid/os/Handler;)V

    sput-object v6, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    :cond_14
    :try_start_14
    invoke-static/range {p0 .. p0}, Lmiui/maml/util/AppIconsHelper;->checkVersion(Landroid/content/Context;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v15, 0x0

    invoke-static/range {p1 .. p3}, Lmiui/content/res/IconCustomizer;->getAnimatingIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a1

    xor-int/lit8 v6, p7, 0x1

    if-eqz v6, :cond_a1

    sget-object v6, Lmiui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/ref/WeakReference;

    if-nez v20, :cond_9a

    const/4 v4, 0x0

    :goto_4c
    if-nez v4, :cond_80

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "quiet/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v4, Lmiui/maml/LifecycleResourceManager;

    new-instance v5, Lmiui/maml/util/FancyIconResourceLoader;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lmiui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    const-wide/32 v6, 0x36ee80

    const-wide/32 v8, 0x57e40

    invoke-direct/range {v4 .. v9}, Lmiui/maml/LifecycleResourceManager;-><init>(Lmiui/maml/ResourceLoader;JJ)V

    sget-object v6, Lmiui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80
    if-eqz v4, :cond_fe

    new-instance v5, Lmiui/maml/AnimatingDrawable;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v9, v4

    move-object/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lmiui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;)V

    :goto_90
    if-eqz v5, :cond_99

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-static {v0, v5, v1}, Lmiui/maml/util/PortableUtils;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    :cond_99
    return-object v5

    :cond_9a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/ResourceManager;

    goto :goto_4c

    :cond_a1
    sget-object v6, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    move-object/from16 v0, v19

    move-wide/from16 v1, p4

    invoke-virtual {v6, v0, v1, v2}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v21

    if-nez v21, :cond_d8

    if-eqz v14, :cond_ea

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "fancy/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_c3
    sget-object v7, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    new-instance v12, Lmiui/maml/util/FancyIconResourceLoader;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lmiui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    sget-object v13, Lmiui/maml/util/AppIconsHelper;->mOnCreateRootCallback:Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

    move-object/from16 v8, v19

    move-object/from16 v9, p0

    move-wide/from16 v10, p4

    invoke-virtual/range {v7 .. v13}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v21

    :cond_d8
    if-eqz v21, :cond_ef

    move-object/from16 v0, v21

    iget-object v6, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    if-eqz v6, :cond_ef

    new-instance v5, Lmiui/maml/FancyDrawable;

    move-object/from16 v0, v21

    iget-object v6, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    invoke-direct {v5, v6}, Lmiui/maml/FancyDrawable;-><init>(Lmiui/maml/RendererCore;)V

    goto :goto_90

    :cond_ea
    invoke-static/range {p1 .. p3}, Lmiui/content/res/IconCustomizer;->getFancyIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_ed} :catch_f1

    move-result-object v17

    goto :goto_c3

    :cond_ef
    const/4 v5, 0x0

    goto :goto_90

    :catch_f1
    move-exception v16

    const-string/jumbo v6, "MAML AppIconsHelper"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return-object v6

    :cond_fe
    move-object v5, v15

    goto :goto_90
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 5

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .registers 8

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_b

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :goto_6
    invoke-static {p0, v0, p2, p3, p4}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_b
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_6
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .registers 12

    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 15

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_19

    move-result-object v1

    :goto_f
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :catch_19
    move-exception v7

    goto :goto_f
.end method
