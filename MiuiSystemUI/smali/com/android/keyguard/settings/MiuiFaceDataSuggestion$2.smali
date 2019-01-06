.class Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$2;
.super Landroid/os/CountDownTimer;
.source "MiuiFaceDataSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;

.field final synthetic val$next:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;JJLandroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;

    iput-object p6, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$2;->val$next:Landroid/widget/Button;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$2;->val$next:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$2;->val$next:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;

    invoke-virtual {v1}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110278

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTick(J)V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$2;->val$next:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;

    invoke-virtual {v1}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f110279

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
