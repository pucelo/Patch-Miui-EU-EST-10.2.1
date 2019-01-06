.class Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->onDeviceAttributesChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "BluetoothController"

    const-string/jumbo v1, "onDeviceAttributesChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method
