.class Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;
.super Landroid/os/Handler;
.source "MiuiKeyguardChargingContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "lastChargedTime"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v14, 0x0

    cmp-long v11, v8, v14

    if-gtz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v11}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get11(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;

    move-result-object v11

    const-string/jumbo v14, "-"

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string/jumbo v11, "drainedTime"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v14, 0x0

    cmp-long v11, v4, v14

    if-gtz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v11}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get14(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;

    move-result-object v11

    const-string/jumbo v14, "-"

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const-string/jumbo v11, "drainedPercent"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v11}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get9(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v14}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get13(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const v16, 0x7f110347

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    const v14, 0x7f0a014a

    invoke-static {v11, v14}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-wrap2(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    const v14, 0x7f0a014c

    invoke-static {v11, v14}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-wrap2(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    const v14, 0x7f0a0142

    invoke-static {v11, v14}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-wrap2(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;I)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v11}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get11(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v14, v8, v9}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-wrap0(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {v4, v5}, Lcom/android/keyguard/charge/ChargeUtils;->getMins(J)J

    move-result-wide v12

    invoke-static {v4, v5}, Lcom/android/keyguard/charge/ChargeUtils;->getHours(J)J

    move-result-wide v6

    const-string/jumbo v3, "-"

    const-wide/16 v14, 0x0

    cmp-long v11, v6, v14

    if-lez v11, :cond_3

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v11}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get13(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/content/res/Resources;

    move-result-object v11

    long-to-int v14, v6

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    const v16, 0x7f0f000e

    move/from16 v0, v16

    invoke-virtual {v11, v0, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v11}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get14(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    const-wide/16 v14, 0x0

    cmp-long v11, v6, v14

    if-lez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v11}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get13(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/content/res/Resources;

    move-result-object v11

    long-to-int v14, v6

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const v16, 0x7f0f000c

    move/from16 v0, v16

    invoke-virtual {v11, v0, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v11}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get13(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/content/res/Resources;

    move-result-object v11

    long-to-int v14, v12

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const v16, 0x7f0f000d

    move/from16 v0, v16

    invoke-virtual {v11, v0, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method
