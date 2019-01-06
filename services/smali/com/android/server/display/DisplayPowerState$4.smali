.class Lcom/android/server/display/DisplayPowerState$4;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->-set0(Lcom/android/server/display/DisplayPowerState;Z)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-get5(Lcom/android/server/display/DisplayPowerState;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-get3(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/ColorFade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-get4(Lcom/android/server/display/DisplayPowerState;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/ColorFade;->draw(F)Z

    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-get0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-get4(Lcom/android/server/display/DisplayPowerState;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    :cond_34
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->-set1(Lcom/android/server/display/DisplayPowerState;Z)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-wrap0(Lcom/android/server/display/DisplayPowerState;)V

    return-void
.end method
