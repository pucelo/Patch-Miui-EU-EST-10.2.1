.class Landroid/widget/TranslationManager$1;
.super Landroid/os/AsyncTask;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationManager;->doInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TranslationManager;


# direct methods
.method constructor <init>(Landroid/widget/TranslationManager;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TranslationManager$1;->this$0:Landroid/widget/TranslationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.miui.translationservice"

    const-string/jumbo v3, "com.miui.translationservice.TranslationService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TranslationManager$1;->this$0:Landroid/widget/TranslationManager;

    invoke-static {v1}, Landroid/widget/TranslationManager;->-get1(Landroid/widget/TranslationManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TranslationManager$1;->this$0:Landroid/widget/TranslationManager;

    invoke-static {v2}, Landroid/widget/TranslationManager;->-get0(Landroid/widget/TranslationManager;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/widget/TranslationManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    :cond_b
    iget-object v0, p0, Landroid/widget/TranslationManager$1;->this$0:Landroid/widget/TranslationManager;

    invoke-static {v0, v1}, Landroid/widget/TranslationManager;->-wrap2(Landroid/widget/TranslationManager;Lcom/miui/translationservice/ITranslation;)V

    :cond_10
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroid/widget/TranslationManager$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
