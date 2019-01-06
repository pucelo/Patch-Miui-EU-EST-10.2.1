.class public Landroid/os/StrictModeInjector;
.super Ljava/lang/Object;
.source "StrictModeInjector.java"


# static fields
.field private static mWhiteList:Ljava/util/ArrayList;
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
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/StrictModeInjector;->mWhiteList:Ljava/util/ArrayList;

    sget-object v0, Landroid/os/StrictModeInjector;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "org.apache.http.impl.client.AbstractHttpClient"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/StrictModeInjector;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "miui.content.res.ThemeZipFile"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/StrictModeInjector;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "miui.text.ChinesePinyinConverter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/StrictModeInjector;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "miui.telephony.phonenumber.ChineseTelocationConverter.java"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/StrictModeInjector;->mWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.okhttp.internal.http.HttpURLConnectionImpl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSkipStrictModeCheck(Ljava/lang/Throwable;)Z
    .registers 5

    invoke-static {p0}, Landroid/os/StrictModeInjector;->parseStack(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Landroid/os/StrictModeInjector;->mWhiteList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    return v3

    :cond_1e
    const/4 v3, 0x0

    return v3
.end method

.method private static parseStack(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_19

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    return-object v0
.end method
