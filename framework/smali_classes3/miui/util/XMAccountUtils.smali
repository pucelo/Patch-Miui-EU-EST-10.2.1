.class public Lmiui/util/XMAccountUtils;
.super Ljava/lang/Object;
.source "XMAccountUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v1, "[0-9]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isXiaomiAccount(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const-string/jumbo v0, "@xiaomi.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isXiaomiJID(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lmiui/util/XMAccountUtils;->isXiaomiAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-static {p0}, Lmiui/util/XMAccountUtils;->trimDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/XMAccountUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static trimDomainSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    return-object v1

    :cond_9
    const-string/jumbo v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_17
    return-object p0
.end method
