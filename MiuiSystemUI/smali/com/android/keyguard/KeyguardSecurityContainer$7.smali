.class Lcom/android/keyguard/KeyguardSecurityContainer$7;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;->loadLockoutView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$7;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$7;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->-get2(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$7;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v3, v4}, Lcom/android/keyguard/KeyguardSecurityContainer;->-wrap1(Lcom/android/keyguard/KeyguardSecurityContainer;I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$7;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->-get3(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$7;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11048d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$7$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$7$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer$7;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$7;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->-get3(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a00e6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$7;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11048e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$7;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->-get3(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a00e7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
