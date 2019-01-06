.class Lmiui/contentcatcher/InterceptorProxy$H;
.super Landroid/os/Handler;
.source "InterceptorProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/InterceptorProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CREATE:I = 0x1

.field public static final ACTIVITY_DESTROY:I = 0x6

.field public static final ACTIVITY_PAUSE:I = 0x4

.field public static final ACTIVITY_RESUME:I = 0x3

.field public static final ACTIVITY_START:I = 0x2

.field public static final ACTIVITY_STOP:I = 0x5

.field public static final CONTENT_CHANGED:I = 0x7

.field public static final CREATE_INJECTOR:I


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mInterceptorProxyRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/contentcatcher/IInterceptorContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/app/Activity;Lmiui/contentcatcher/IInterceptorContainer;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mActivityRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mInterceptorProxyRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v2, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mInterceptorProxyRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mInterceptorProxyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/contentcatcher/IInterceptorContainer;

    if-nez v1, :cond_f

    :cond_e
    return-void

    :cond_f
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_8e

    :cond_14
    :goto_14
    return-void

    :pswitch_15
    const/4 v0, 0x0

    iget-object v2, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_14

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorFactory;->createInterceptor(Landroid/app/Activity;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/contentcatcher/IInterceptorContainer;->setInterceptor(Lcom/miui/internal/contentcatcher/IInterceptor;)V

    goto :goto_14

    :pswitch_2c
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityCreate()V

    goto :goto_14

    :pswitch_3a
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityStart()V

    goto :goto_14

    :pswitch_48
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityResume()V

    goto :goto_14

    :pswitch_56
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityPause()V

    goto :goto_14

    :pswitch_64
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityStop()V

    goto :goto_14

    :pswitch_72
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityDestroy()V

    goto :goto_14

    :pswitch_80
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyContentChange()V

    goto :goto_14

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_2c
        :pswitch_3a
        :pswitch_48
        :pswitch_56
        :pswitch_64
        :pswitch_72
        :pswitch_80
    .end packed-switch
.end method
