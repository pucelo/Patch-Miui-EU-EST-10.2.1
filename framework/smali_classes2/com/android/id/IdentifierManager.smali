.class public Lcom/android/id/IdentifierManager;
.super Ljava/lang/Object;
.source "IdentifierManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IdentifierManager"

.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sGetAAID:Ljava/lang/reflect/Method;

.field private static sGetOAID:Ljava/lang/reflect/Method;

.field private static sGetUDID:Ljava/lang/reflect/Method;

.field private static sGetVAID:Ljava/lang/reflect/Method;

.field private static sIdProivderImpl:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v1, 0x0

    sput-object v1, Lcom/android/id/IdentifierManager;->sGetUDID:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/android/id/IdentifierManager;->sGetOAID:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/android/id/IdentifierManager;->sGetVAID:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/android/id/IdentifierManager;->sGetAAID:Ljava/lang/reflect/Method;

    :try_start_9
    const-string/jumbo v1, "com.android.id.impl.IdProviderImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/id/IdentifierManager;->sClass:Ljava/lang/Class;

    sget-object v1, Lcom/android/id/IdentifierManager;->sClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/android/id/IdentifierManager;->sIdProivderImpl:Ljava/lang/Object;

    sget-object v1, Lcom/android/id/IdentifierManager;->sClass:Ljava/lang/Class;

    const-string/jumbo v2, "getUDID"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/id/IdentifierManager;->sGetUDID:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/android/id/IdentifierManager;->sClass:Ljava/lang/Class;

    const-string/jumbo v2, "getOAID"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/id/IdentifierManager;->sGetOAID:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/android/id/IdentifierManager;->sClass:Ljava/lang/Class;

    const-string/jumbo v2, "getVAID"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/id/IdentifierManager;->sGetVAID:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/android/id/IdentifierManager;->sClass:Ljava/lang/Class;

    const-string/jumbo v2, "getAAID"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/id/IdentifierManager;->sGetAAID:Ljava/lang/reflect/Method;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_66} :catch_67

    :goto_66
    return-void

    :catch_67
    move-exception v0

    const-string/jumbo v1, "IdentifierManager"

    const-string/jumbo v2, "reflect exception!"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_66
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/id/IdentifierManager;->sGetAAID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lcom/android/id/IdentifierManager;->invokeMethod(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/id/IdentifierManager;->sGetOAID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lcom/android/id/IdentifierManager;->invokeMethod(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUDID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/id/IdentifierManager;->sGetUDID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lcom/android/id/IdentifierManager;->invokeMethod(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/id/IdentifierManager;->sGetVAID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lcom/android/id/IdentifierManager;->invokeMethod(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static invokeMethod(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    sget-object v2, Lcom/android/id/IdentifierManager;->sIdProivderImpl:Ljava/lang/Object;

    if-eqz v2, :cond_22

    if-eqz p1, :cond_22

    :try_start_7
    sget-object v2, Lcom/android/id/IdentifierManager;->sIdProivderImpl:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    check-cast v1, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    return-object v1

    :catch_18
    move-exception v0

    const-string/jumbo v2, "IdentifierManager"

    const-string/jumbo v3, "invoke exception!"

    invoke-static {v2, v3, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    return-object v5
.end method

.method public static isSupported()Z
    .registers 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/id/IdentifierManager;->sClass:Ljava/lang/Class;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/id/IdentifierManager;->sIdProivderImpl:Ljava/lang/Object;

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method
