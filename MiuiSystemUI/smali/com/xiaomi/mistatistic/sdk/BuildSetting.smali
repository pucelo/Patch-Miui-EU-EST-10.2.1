.class public Lcom/xiaomi/mistatistic/sdk/BuildSetting;
.super Ljava/lang/Object;
.source "BuildSetting.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Ljava/lang/Boolean;

.field private static d:Z

.field private static e:J

.field private static f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->a:Z

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->d:Z

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->e:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->f:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "miui.os.Build"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "IS_ALPHA_BUILD"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    :goto_0
    return v4

    :cond_0
    return v4

    :cond_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b()Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "miui.os.Build"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "IS_DEVELOPMENT_VERSION"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    :goto_0
    return v4

    :cond_0
    return v4

    :cond_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c()Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "miui.os.Build"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "IS_STABLE_VERSION"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    :goto_0
    return v4

    :cond_0
    return v4

    :cond_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getMiuiBuildCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    const-string/jumbo v0, "S"

    return-object v0

    :cond_1
    const-string/jumbo v0, "D"

    return-object v0

    :cond_2
    const-string/jumbo v0, "A"

    return-object v0
.end method

.method public static isCTABuild()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v3, "miui.os.Build"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "IS_CTA_BUILD"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isDisabled(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    sget-boolean v1, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->d:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    const-string/jumbo v0, "isDisabled false, not miui app or OS "

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->f:J

    :goto_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDisabled false, sRespectUEP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;)V

    return v0

    :cond_3
    sget-wide v2, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->f:J

    sget-wide v4, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->e:J

    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isUserExperienceProgramEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public static isInternationalBuild()Z
    .locals 3

    :try_start_0
    const-string/jumbo v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "IS_INTERNATIONAL_BUILD"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public static isSelfStats()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->b:Z

    return v0
.end method

.method public static isTest()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->a:Z

    return v0
.end method

.method public static isUploadDebugLogEnable(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v3, "android.provider.MiuiSettings$Secure"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "isUploadDebugLogEnable"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUploadDebugLogEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v3, "MI_STAT"

    const-string/jumbo v4, "The statistics is disabled."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v3, "BS"

    const-string/jumbo v4, "isUploadDebugLogEnable exception:"

    invoke-static {v3, v4, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isUserExperienceProgramEnabled(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v3, "android.provider.MiuiSettings$Secure"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "isUserExperienceProgramEnable"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UEP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "BS"

    const-string/jumbo v4, "isUserExperienceProgramEnable exception:"

    invoke-static {v3, v4, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
