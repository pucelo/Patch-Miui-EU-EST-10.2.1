.class Lcom/android/systemui/miui/statusbar/WifiLabelText$2;
.super Landroid/database/ContentObserver;
.source "WifiLabelText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/statusbar/WifiLabelText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/statusbar/WifiLabelText;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$2;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$2;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$2;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-static {v2}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->-get0(Lcom/android/systemui/miui/statusbar/WifiLabelText;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "status_bar_show_carrier_under_keyguard"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->-set1(Lcom/android/systemui/miui/statusbar/WifiLabelText;Z)Z

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$2;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->updateCarrier()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
