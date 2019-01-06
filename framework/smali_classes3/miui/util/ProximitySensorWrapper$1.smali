.class Lmiui/util/ProximitySensorWrapper$1;
.super Ljava/lang/Object;
.source "ProximitySensorWrapper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ProximitySensorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/ProximitySensorWrapper;


# direct methods
.method constructor <init>(Lmiui/util/ProximitySensorWrapper;)V
    .registers 2

    iput-object p1, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12

    const-wide/16 v8, 0x12c

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v6

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_62

    const/high16 v2, 0x40800000    # 4.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_62

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->-get2(Lmiui/util/ProximitySensorWrapper;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_60

    const/4 v1, 0x1

    :goto_24
    const-string/jumbo v2, "ProximitySensorWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "proximity distance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_64

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->-get1(Lmiui/util/ProximitySensorWrapper;)I

    move-result v2

    if-eq v2, v7, :cond_5f

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2, v7}, Lmiui/util/ProximitySensorWrapper;->-set0(Lmiui/util/ProximitySensorWrapper;I)I

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->-get0(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->-get0(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    const/4 v1, 0x0

    goto :goto_24

    :cond_62
    const/4 v1, 0x0

    goto :goto_24

    :cond_64
    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->-get1(Lmiui/util/ProximitySensorWrapper;)I

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2, v6}, Lmiui/util/ProximitySensorWrapper;->-set0(Lmiui/util/ProximitySensorWrapper;I)I

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->-get0(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper$1;->this$0:Lmiui/util/ProximitySensorWrapper;

    invoke-static {v2}, Lmiui/util/ProximitySensorWrapper;->-get0(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5f
.end method
