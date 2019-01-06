.class Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "OLEDScreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->-get3(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->stop(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    const-string/jumbo v1, "interval"

    const v2, 0x1d4c0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->-set1(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    const-string/jumbo v1, "pixels"

    const/4 v2, 0x3

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->-set2(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->-get3(Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OLEDScreenHelper;->start(Z)V

    return-void
.end method
