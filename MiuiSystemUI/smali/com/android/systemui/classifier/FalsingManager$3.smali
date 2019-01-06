.class Lcom/android/systemui/classifier/FalsingManager$3;
.super Ljava/lang/Object;
.source "FalsingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/classifier/FalsingManager;->registerSensors([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/FalsingManager;

.field final synthetic val$s:Landroid/hardware/Sensor;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingManager;Landroid/hardware/Sensor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManager$3;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/classifier/FalsingManager$3;->val$s:Landroid/hardware/Sensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager$3;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManager;->-get1(Lcom/android/systemui/classifier/FalsingManager;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager$3;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingManager$3;->val$s:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method
