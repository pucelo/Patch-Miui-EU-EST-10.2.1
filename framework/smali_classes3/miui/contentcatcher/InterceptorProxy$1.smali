.class final Lmiui/contentcatcher/InterceptorProxy$1;
.super Ljava/lang/Object;
.source "InterceptorProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/contentcatcher/InterceptorProxy;->checkAndInitWebView(Landroid/view/View;Landroid/os/Looper;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lmiui/contentcatcher/InterceptorProxy$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/contentcatcher/InterceptorProxy$1;->val$view:Landroid/view/View;

    invoke-static {}, Lmiui/contentcatcher/sdk/WebViewDetector;->getInstance()Lmiui/contentcatcher/sdk/WebViewDetector;

    move-result-object v2

    const-string/jumbo v3, "MiWebViewDetector"

    invoke-static {v1, v2, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->initWebViewJsInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "ContentCatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAndInitWebView-Runnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method
