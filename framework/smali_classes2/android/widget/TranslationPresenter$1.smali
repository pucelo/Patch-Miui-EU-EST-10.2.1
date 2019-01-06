.class Landroid/widget/TranslationPresenter$1;
.super Ljava/lang/Object;
.source "TranslationPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationPresenter;->updatePanel(Lcom/miui/translationservice/provider/TranslationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TranslationPresenter;

.field final synthetic val$detailLink:Ljava/lang/String;

.field final synthetic val$result:Lcom/miui/translationservice/provider/TranslationResult;


# direct methods
.method constructor <init>(Landroid/widget/TranslationPresenter;Ljava/lang/String;Lcom/miui/translationservice/provider/TranslationResult;)V
    .registers 4

    iput-object p1, p0, Landroid/widget/TranslationPresenter$1;->this$0:Landroid/widget/TranslationPresenter;

    iput-object p2, p0, Landroid/widget/TranslationPresenter$1;->val$detailLink:Ljava/lang/String;

    iput-object p3, p0, Landroid/widget/TranslationPresenter$1;->val$result:Lcom/miui/translationservice/provider/TranslationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v2, p0, Landroid/widget/TranslationPresenter$1;->val$detailLink:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/widget/TranslationPresenter$1;->val$result:Lcom/miui/translationservice/provider/TranslationResult;

    invoke-virtual {v4}, Lcom/miui/translationservice/provider/TranslationResult;->getWordName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Landroid/widget/TranslationPresenter$1;->this$0:Landroid/widget/TranslationPresenter;

    invoke-static {v2}, Landroid/widget/TranslationPresenter;->-get0(Landroid/widget/TranslationPresenter;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_2d

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2d
    iget-object v2, p0, Landroid/widget/TranslationPresenter$1;->this$0:Landroid/widget/TranslationPresenter;

    invoke-static {v2}, Landroid/widget/TranslationPresenter;->-get0(Landroid/widget/TranslationPresenter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
