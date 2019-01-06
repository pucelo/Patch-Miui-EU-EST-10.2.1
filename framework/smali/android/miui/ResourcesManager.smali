.class public Landroid/miui/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field public static final FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

.field public static final FRAMEWORK_RES_PATH:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field public static final MIUI_FRAMEWORK_RES_DATA_PATH_1:Ljava/lang/String; = "/data/app/com.miui.system-1.apk"

.field public static final MIUI_FRAMEWORK_RES_DATA_PATH_2:Ljava/lang/String; = "/data/app/com.miui.system-2.apk"

.field public static final MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

.field public static final MIUI_SDK_RES_DATA_PATH_1:Ljava/lang/String; = "/data/app/com.miui.core-1.apk"

.field public static final MIUI_SDK_RES_DATA_PATH_2:Ljava/lang/String; = "/data/app/com.miui.core-2.apk"

.field public static final MIUI_SDK_RES_PATH:Ljava/lang/String;

.field private static final VERSION_ABOVE_5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_25

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    sget-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_27

    const-string/jumbo v0, "/system/app/miui/miui.apk"

    :goto_10
    sput-object v0, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    sget-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "/system/app/miuisystem/miuisystem.apk"

    :goto_19
    sput-object v0, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    sget-boolean v0, Landroid/miui/ResourcesManager;->VERSION_ABOVE_5:Z

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "/system/framework/framework-ext-res/framework-ext-res.apk"

    :goto_22
    sput-object v0, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_7

    :cond_27
    const-string/jumbo v0, "/system/app/miui.apk"

    goto :goto_10

    :cond_2b
    const-string/jumbo v0, "/system/app/miuisystem.apk"

    goto :goto_19

    :cond_2f
    const-string/jumbo v0, "/system/framework/framework-ext-res.apk"

    goto :goto_22
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSystemAssets(Landroid/content/res/AssetManager;)V
    .registers 8

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    :cond_c
    const-string/jumbo v2, "getResourceName"

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p0, v2, v3, v4}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/app/com.miui.core-1.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_50

    const-string/jumbo v2, "/data/app/com.miui.core-1.apk"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    :goto_31
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/app/com.miui.system-1.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string/jumbo v2, "/data/app/com.miui.system-1.apk"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    :goto_45
    sget-object v2, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    if-eqz v0, :cond_4f

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_4f
    return-void

    :cond_50
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/app/com.miui.core-2.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_65

    const-string/jumbo v2, "/data/app/com.miui.core-2.apk"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_31

    :cond_65
    sget-object v2, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_31

    :cond_6b
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/app/com.miui.system-2.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_80

    const-string/jumbo v2, "/data/app/com.miui.system-2.apk"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_45

    :cond_80
    sget-object v2, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    goto :goto_45
.end method

.method public static belongToMiuiFrameworkThemePath(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiExtFrameworkPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiSystemSdkPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p0}, Landroid/miui/ResourcesManager;->isMiuiSdkPath(Ljava/lang/String;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static initMiuiResource(Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 3

    instance-of v0, p0, Landroid/content/res/MiuiResources;

    if-eqz v0, :cond_9

    check-cast p0, Landroid/content/res/MiuiResources;

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static isMiuiExtFrameworkPath(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMiuiSdkPath(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "/data/app/com.miui.core-1.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "/data/app/com.miui.core-2.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public static isMiuiSystemSdkPath(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "/data/app/com.miui.system-1.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "/data/app/com.miui.system-2.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18
.end method
