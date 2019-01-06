.class final synthetic Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/TriggerEventListener;

    iget-object v2, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/AsyncSensorManager;->lambda$-com_android_keyguard_util_AsyncSensorManager_4596(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/SensorManager$DynamicSensorCallback;

    iget-object v2, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/AsyncSensorManager;->lambda$-com_android_keyguard_util_AsyncSensorManager_3751(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/TriggerEventListener;

    iget-object v2, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/AsyncSensorManager;->lambda$-com_android_keyguard_util_AsyncSensorManager_4142(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method private final synthetic $m$3()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/AsyncSensorManager;->lambda$-com_android_keyguard_util_AsyncSensorManager_5516(Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->$id:B

    iput-object p2, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-byte v0, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->$m$2()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE$1;->$m$3()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
