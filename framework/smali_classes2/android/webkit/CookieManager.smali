.class public abstract Landroid/webkit/CookieManager;
.super Ljava/lang/Object;
.source "CookieManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowFileSchemeCookies()Z
    .registers 1

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->allowFileSchemeCookiesImpl()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Landroid/webkit/CookieManager;
    .registers 1

    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    return-object v0
.end method

.method public static setAcceptFileSchemeCookies(Z)V
    .registers 2

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookiesImpl(Z)V

    return-void
.end method


# virtual methods
.method public abstract acceptCookie()Z
.end method

.method public abstract acceptThirdPartyCookies(Landroid/webkit/WebView;)Z
.end method

.method protected abstract allowFileSchemeCookiesImpl()Z
.end method

.method protected clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string/jumbo v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract flush()V
.end method

.method public declared-synchronized getCookie(Landroid/net/WebAddress;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getCookie(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCookie(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract hasCookies()Z
.end method

.method public abstract hasCookies(Z)Z
.end method

.method public abstract removeAllCookie()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeAllCookies(Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeExpiredCookie()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeSessionCookie()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeSessionCookies(Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAcceptCookie(Z)V
.end method

.method protected abstract setAcceptFileSchemeCookiesImpl(Z)V
.end method

.method public abstract setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
.end method

.method public abstract setCookie(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
