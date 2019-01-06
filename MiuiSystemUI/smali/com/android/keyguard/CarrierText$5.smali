.class Lcom/android/keyguard/CarrierText$5;
.super Ljava/lang/Object;
.source "CarrierText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/CarrierText;->updateCarrier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CarrierText;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v6}, Lcom/android/keyguard/CarrierText;->-get4(Lcom/android/keyguard/CarrierText;)I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v6}, Lcom/android/keyguard/CarrierText;->-get3(Lcom/android/keyguard/CarrierText;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v6}, Lcom/android/keyguard/CarrierText;->-get4(Lcom/android/keyguard/CarrierText;)I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v6}, Lcom/android/keyguard/CarrierText;->-get8(Lcom/android/keyguard/CarrierText;)[Z

    move-result-object v6

    aget-boolean v6, v6, v1

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v6}, Lcom/android/keyguard/CarrierText;->-get1(Lcom/android/keyguard/CarrierText;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v6}, Lcom/android/keyguard/CarrierText;->-get1(Lcom/android/keyguard/CarrierText;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    aput-object v6, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v6}, Lcom/android/keyguard/CarrierText;->-get7(Lcom/android/keyguard/CarrierText;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    aput-object v6, v0, v1

    goto :goto_1

    :cond_1
    const-string/jumbo v6, ""

    aput-object v6, v0, v1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v6, v0}, Lcom/android/keyguard/CarrierText;->-wrap1(Lcom/android/keyguard/CarrierText;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v6}, Lcom/android/keyguard/CarrierText;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v6, v3}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v6}, Lcom/android/keyguard/CarrierText;->-get2(Lcom/android/keyguard/CarrierText;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v6}, Lcom/android/keyguard/CarrierText;->-get6(Lcom/android/keyguard/CarrierText;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    iget-object v4, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v6}, Lcom/android/keyguard/CarrierText;->-get6(Lcom/android/keyguard/CarrierText;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    iget-object v5, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v6}, Lcom/android/keyguard/CarrierText;->-get6(Lcom/android/keyguard/CarrierText;)I

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    iget-object v7, p0, Lcom/android/keyguard/CarrierText$5;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v7}, Lcom/android/keyguard/CarrierText;->-get5(Lcom/android/keyguard/CarrierText;)Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_3
    invoke-virtual {v6, v4}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move v4, v5

    goto :goto_3
.end method
