.class Lcom/android/keyguard/settings/MiuiFaceDataInput$8;
.super Ljava/lang/Object;
.source "MiuiFaceDataInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/settings/MiuiFaceDataInput;->onPreviewFrame([BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

.field final synthetic val$finalString:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$8;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    iput p2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$8;->val$finalString:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$8;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get4(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$8;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get3(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$8;->val$finalString:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$8;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get3(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$8;->val$finalString:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
