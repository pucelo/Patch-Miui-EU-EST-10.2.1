.class Landroid/widget/TranslationManager$TranslateTask;
.super Ljava/lang/Object;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslateTask"
.end annotation


# instance fields
.field mSource:Ljava/lang/String;

.field mTarget:Ljava/lang/String;

.field mWord:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    iput-object p2, p0, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    iput-object p3, p0, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    return-void
.end method

.method static equals(Landroid/widget/TranslationManager$TranslateTask;Landroid/widget/TranslationManager$TranslateTask;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    if-eqz p1, :cond_22

    iget-object v1, p0, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    iget-object v2, p1, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    iget-object v2, p1, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v0, p0, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    iget-object v1, p1, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_21
    return v0

    :cond_22
    if-nez p0, :cond_28

    if-nez p1, :cond_28

    const/4 v0, 0x1

    return v0

    :cond_28
    return v0
.end method
