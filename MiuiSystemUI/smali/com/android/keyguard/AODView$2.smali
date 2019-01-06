.class Lcom/android/keyguard/AODView$2;
.super Ljava/lang/Object;
.source "AODView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/AODView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/AODView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/AODView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/AODView$2;->this$0:Lcom/android/keyguard/AODView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->setNotificationAnimate(Z)V

    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->fireAnimateState()V

    return-void
.end method
