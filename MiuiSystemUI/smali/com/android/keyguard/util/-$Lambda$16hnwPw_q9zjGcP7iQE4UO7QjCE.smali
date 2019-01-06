.class final synthetic Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/SensorAdditionalInfo;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/AsyncSensorManager;->lambda$-com_android_keyguard_util_AsyncSensorManager_5315(Landroid/hardware/SensorAdditionalInfo;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/SensorManager$DynamicSensorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/AsyncSensorManager;->lambda$-com_android_keyguard_util_AsyncSensorManager_3947(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE;->$id:B

    iput-object p2, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-byte v0, p0, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/util/-$Lambda$16hnwPw_q9zjGcP7iQE4UO7QjCE;->$m$1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
