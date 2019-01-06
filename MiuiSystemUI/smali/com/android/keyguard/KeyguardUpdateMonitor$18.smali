.class Lcom/android/keyguard/KeyguardUpdateMonitor$18;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set7(Lcom/android/keyguard/KeyguardUpdateMonitor;F)F

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get10(Lcom/android/keyguard/KeyguardUpdateMonitor;)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get12(Lcom/android/keyguard/KeyguardUpdateMonitor;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set5(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get14(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get14(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;->onChange(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$18;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set8(Lcom/android/keyguard/KeyguardUpdateMonitor;F)F

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
