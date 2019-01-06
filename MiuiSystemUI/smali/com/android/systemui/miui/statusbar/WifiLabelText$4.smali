.class Lcom/android/systemui/miui/statusbar/WifiLabelText$4;
.super Ljava/lang/Object;
.source "WifiLabelText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/statusbar/WifiLabelText;->updateCarrier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/statusbar/WifiLabelText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$4;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$4;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->-get1(Lcom/android/systemui/miui/statusbar/WifiLabelText;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$4;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->-get1(Lcom/android/systemui/miui/statusbar/WifiLabelText;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$4;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$4;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-virtual {v1, v0}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$4;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$4;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->-get2(Lcom/android/systemui/miui/statusbar/WifiLabelText;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$4;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->-get4(Lcom/android/systemui/miui/statusbar/WifiLabelText;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$4;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->-get3(Lcom/android/systemui/miui/statusbar/WifiLabelText;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method
