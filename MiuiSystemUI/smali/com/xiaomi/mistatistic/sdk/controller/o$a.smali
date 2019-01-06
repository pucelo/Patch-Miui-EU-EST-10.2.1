.class Lcom/xiaomi/mistatistic/sdk/controller/o$a;
.super Ljava/lang/Object;
.source "ThermoManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/o;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/o;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public b()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->b:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "clearActivity exception: "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v8, 0x41980000    # 19.0f

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v6

    aget v2, v0, v5

    const/4 v7, 0x2

    aget v3, v0, v7

    const/16 v4, 0x13

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    move v7, v5

    :goto_0
    if-nez v7, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    :goto_1
    if-nez v5, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-static {v5}, Lcom/xiaomi/mistatistic/sdk/controller/o;->b(Lcom/xiaomi/mistatistic/sdk/controller/o;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v5, "shaking..."

    invoke-static {v5}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move v7, v6

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1
.end method
