.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field private static final EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

.field private static final EXCLLIST_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

.field private static final EXCL_REGEX:Ljava/lang/String; = "[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*"

.field public static final EXTRA_PROXY_INFO:Ljava/lang/String; = "android.intent.extra.PROXY_INFO"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final HOSTNAME_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

.field private static final NAME_IP_REGEX:Ljava/lang/String; = "[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*"

.field public static final PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"

.field public static final PROXY_EXCLLIST_INVALID:I = 0x5

.field public static final PROXY_HOSTNAME_EMPTY:I = 0x1

.field public static final PROXY_HOSTNAME_INVALID:I = 0x2

.field public static final PROXY_PORT_EMPTY:I = 0x3

.field public static final PROXY_PORT_INVALID:I = 0x4

.field public static final PROXY_VALID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Proxy"

.field private static sConnectivityManager:Landroid/net/ConnectivityManager;

.field private static final sDefaultProxySelector:Ljava/net/ProxySelector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    const-string/jumbo v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultHost()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v1, "http.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    return-object v1

    :cond_f
    return-object v0
.end method

.method public static final getDefaultPort()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, -0x1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    :try_start_8
    const-string/jumbo v1, "http.proxyPort"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_12} :catch_14

    move-result v1

    return v1

    :catch_14
    move-exception v0

    return v2
.end method

.method public static final getHost(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_a

    return-object v3

    :cond_a
    :try_start_a
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_15

    move-result-object v2

    return-object v2

    :catch_15
    move-exception v0

    return-object v3
.end method

.method public static final getPort(Landroid/content/Context;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_b

    return v3

    :cond_b
    :try_start_b
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_16

    move-result v2

    return v2

    :catch_16
    move-exception v0

    return v3
.end method

.method public static final getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;
    .registers 8

    const/4 v5, 0x0

    const-string/jumbo v0, ""

    if-eqz p1, :cond_27

    invoke-static {v0}, Landroid/net/Proxy;->isLocalHost(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_27

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_27

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Proxy;

    return-object v4

    :cond_27
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v4
.end method

.method private static final isLocalHost(Ljava/lang/String;)Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_5

    return v2

    :cond_5
    if-eqz p0, :cond_1d

    :try_start_7
    const-string/jumbo v1, "localhost"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v3

    :cond_11
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_18} :catch_1c

    move-result v1

    if-eqz v1, :cond_1d

    return v3

    :catch_1c
    move-exception v0

    :cond_1d
    return v2
.end method

.method public static final setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    :cond_1b
    invoke-static {v1, v3, v0, v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static final setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6

    if-eqz p2, :cond_c

    const-string/jumbo v0, ","

    const-string/jumbo v1, "|"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_c
    if-eqz p0, :cond_47

    const-string/jumbo v0, "http.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "https.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_1a
    if-eqz p1, :cond_54

    const-string/jumbo v0, "http.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "https.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_28
    if-eqz p2, :cond_61

    const-string/jumbo v0, "http.nonProxyHosts"

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "https.nonProxyHosts"

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_36
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    new-instance v0, Landroid/net/PacProxySelector;

    invoke-direct {v0}, Landroid/net/PacProxySelector;-><init>()V

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    :goto_46
    return-void

    :cond_47
    const-string/jumbo v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1a

    :cond_54
    const-string/jumbo v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "https.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_28

    :cond_61
    const-string/jumbo v0, "http.nonProxyHosts"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "https.nonProxyHosts"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_36

    :cond_6e
    sget-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    goto :goto_46
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    const/4 v6, 0x4

    const/4 v5, 0x0

    sget-object v4, Landroid/net/Proxy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    sget-object v4, Landroid/net/Proxy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_16

    const/4 v4, 0x2

    return v4

    :cond_16
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1e

    const/4 v4, 0x5

    return v4

    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2c

    const/4 v4, 0x3

    return v4

    :cond_2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_49

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3a

    const/4 v4, 0x1

    return v4

    :cond_3a
    const/4 v3, -0x1

    :try_start_3b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_3e} :catch_47

    move-result v3

    if-lez v3, :cond_46

    const v4, 0xffff

    if-le v3, v4, :cond_49

    :cond_46
    return v6

    :catch_47
    move-exception v0

    return v6

    :cond_49
    return v5
.end method
