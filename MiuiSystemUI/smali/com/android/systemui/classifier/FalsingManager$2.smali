.class Lcom/android/systemui/classifier/FalsingManager$2;
.super Ljava/lang/Object;
.source "FalsingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/classifier/FalsingManager;->sessionExitpoint(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/FalsingManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManager$2;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager$2;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManager;->-get1(Lcom/android/systemui/classifier/FalsingManager;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager$2;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
