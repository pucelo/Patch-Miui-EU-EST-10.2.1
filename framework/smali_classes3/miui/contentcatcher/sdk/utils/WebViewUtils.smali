.class public Lmiui/contentcatcher/sdk/utils/WebViewUtils;
.super Ljava/lang/Object;
.source "WebViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/utils/WebViewUtils$NativeWebViewUtils;,
        Lmiui/contentcatcher/sdk/utils/WebViewUtils$ThirdWebViewUtils;,
        Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;
    }
.end annotation


# static fields
.field private static final COMPARISON_CHAR_INDEX_FROM_TAIL:I = 0x5

.field private static final DBG:Z = false

.field private static final MATCHER_ARRAY_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "WebViewUtils"

.field public static final WEBVIEW_NAME_ANDROID:Ljava/lang/String; = "android.webkit.WebView"

.field public static final WEBVIEW_NAME_BAIDU:Ljava/lang/String; = "com.baidu.webkit.sdk.WebView"

.field public static final WEBVIEW_NAME_BAIDU1:Ljava/lang/String; = "com.baidu.blink.WebView"

.field public static final WEBVIEW_NAME_MIUI:Ljava/lang/String; = "com.miui.webkit.WebView"

.field public static final WEBVIEW_NAME_SOGOU:Ljava/lang/String; = "sogou.webkit.WebView"

.field public static final WEBVIEW_NAME_TENCENT:Ljava/lang/String; = "com.tencent.smtt.webkit.WebView"

.field public static final WEBVIEW_NAME_TENCENT2:Ljava/lang/String; = "com.tencent.mm.ui.widget.MMWebView"

.field public static final WEBVIEW_NAME_UC:Ljava/lang/String; = "com.uc.webview.export.WebView"

.field private static final mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v6, 0x1c

    const/16 v5, 0x16

    const/16 v4, 0x14

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/16 v0, 0x32

    new-array v0, v0, [Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    sput-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    aput-object v1, v0, v4

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v4

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "sogou.webkit.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    aput-object v1, v0, v5

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v5

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "android.webkit.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    aput-object v1, v0, v2

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v2

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "com.miui.webkit.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v2

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "com.baidu.blink.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    aput-object v1, v0, v6

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v6

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "com.baidu.webkit.sdk.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "com.uc.webview.export.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "com.tencent.smtt.webkit.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    const/16 v1, 0x22

    aget-object v0, v0, v1

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "com.tencent.mm.ui.widget.MMWebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addToWebViewClassMatcher(Ljava/lang/String;)V
    .registers 6

    const-class v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_31

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v2

    return-void

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_31

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_16

    const/4 v1, 0x5

    if-gt v0, v1, :cond_18

    :cond_16
    monitor-exit v2

    return-void

    :cond_18
    :try_start_18
    sget-object v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v1, v1, v0

    if-nez v1, :cond_28

    sget-object v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v3, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    aput-object v3, v1, v0

    :cond_28
    sget-object v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->-wrap0(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_31

    monitor-exit v2

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static checkViewMatchedByClassName(Landroid/view/View;Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x1

    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    return v3

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_e
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_e

    :cond_20
    const/4 v2, 0x0

    return v2
.end method

.method private static foundFromWebViewClassMatcher(Ljava/lang/String;[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)Z
    .registers 11

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x32

    if-lt v1, v6, :cond_a

    return v8

    :cond_a
    aget-object v2, p1, v1

    if-nez v2, :cond_f

    return v8

    :cond_f
    const/4 v5, 0x0

    add-int/lit8 v0, v1, -0x5

    iget-object v6, v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_18

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_18

    const/4 v5, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    return v6

    :cond_41
    return v8
.end method

.method public static initWebViewJsInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_8

    invoke-static {p0, p1, p2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$NativeWebViewUtils;->addJavascriptInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    invoke-static {p0, p1, p2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$ThirdWebViewUtils;->addJavascriptInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private static isSystemView(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "android.view"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "android.widget"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized isWebView(Landroid/view/View;)Z
    .registers 6

    const/4 v4, 0x0

    const-class v3, Lmiui/contentcatcher/sdk/utils/WebViewUtils;

    monitor-enter v3

    if-nez p0, :cond_8

    monitor-exit v3

    return v4

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-static {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->foundFromWebViewClassMatcher(Ljava/lang/String;[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)Z
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_24

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_24

    move-result-object v0

    goto :goto_c

    :cond_22
    monitor-exit v3

    return v4

    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized removeFromWebViewClassMatcher(Ljava/lang/String;)V
    .registers 4

    const-class v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_27

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v2

    return-void

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_27

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_16

    const/4 v1, 0x5

    if-gt v0, v1, :cond_18

    :cond_16
    monitor-exit v2

    return-void

    :cond_18
    :try_start_18
    sget-object v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v1, v1, v0

    if-eqz v1, :cond_25

    sget-object v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->-wrap1(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_27

    :cond_25
    monitor-exit v2

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1
.end method
