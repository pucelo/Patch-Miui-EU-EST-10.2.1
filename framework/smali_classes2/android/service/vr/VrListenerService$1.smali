.class Landroid/service/vr/VrListenerService$1;
.super Landroid/service/vr/IVrListener$Stub;
.source "VrListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/vr/VrListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/vr/VrListenerService;


# direct methods
.method constructor <init>(Landroid/service/vr/VrListenerService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/vr/VrListenerService$1;->this$0:Landroid/service/vr/VrListenerService;

    invoke-direct {p0}, Landroid/service/vr/IVrListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public focusedActivityChanged(Landroid/content/ComponentName;ZI)V
    .registers 7

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/service/vr/VrListenerService$1;->this$0:Landroid/service/vr/VrListenerService;

    invoke-static {v0}, Landroid/service/vr/VrListenerService;->-get0(Landroid/service/vr/VrListenerService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p2, :cond_12

    move v0, v1

    :goto_a
    invoke-virtual {v2, v1, v0, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_a
.end method
