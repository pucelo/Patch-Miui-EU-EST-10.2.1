.class Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

.field final synthetic val$records:Ljava/util/ArrayList;

.field final synthetic val$windowManager:Landroid/view/IWindowManager;


# direct methods
.method constructor <init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V
    .registers 4

    iput-object p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->this$1:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    iput-object p2, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$windowManager:Landroid/view/IWindowManager;

    iput-object p3, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$windowManager:Landroid/view/IWindowManager;

    if-eqz v5, :cond_e

    :try_start_8
    iget-object v5, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$windowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_38

    :cond_e
    :goto_e
    const/4 v2, 0x0

    :goto_f
    iget-object v5, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_32

    iget-object v5, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StrictMode$ViolationInfo;

    add-int/lit8 v5, v2, 0x1

    iput v5, v4, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    iget-wide v6, v4, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    sub-long v6, v0, v6

    long-to-int v5, v6

    iput v5, v4, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    iget-object v5, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->this$1:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v5, v4}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolation(Landroid/os/StrictMode$ViolationInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_32
    iget-object v5, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    return-void

    :catch_38
    move-exception v3

    goto :goto_e
.end method
