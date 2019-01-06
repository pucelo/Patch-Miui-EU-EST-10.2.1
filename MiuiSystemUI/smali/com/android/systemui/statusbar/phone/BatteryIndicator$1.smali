.class Lcom/android/systemui/statusbar/phone/BatteryIndicator$1;
.super Ljava/lang/Object;
.source "BatteryIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/BatteryIndicator;->postUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/BatteryIndicator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/BatteryIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryIndicator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    return-void
.end method
