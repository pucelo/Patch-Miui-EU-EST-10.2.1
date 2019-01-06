.class Landroid/app/Notification$StandardTemplateParams;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardTemplateParams"
.end annotation


# instance fields
.field ambient:Z

.field hasProgress:Z

.field text:Ljava/lang/CharSequence;

.field title:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Notification$StandardTemplateParams;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$StandardTemplateParams;-><init>()V

    return-void
.end method


# virtual methods
.method final ambient(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_a

    iget-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    const-string/jumbo v1, "must set ambient before text"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    return-object p0
.end method

.method final fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;
    .registers 6

    invoke-static {p1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v0, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    invoke-static {p1, v2, v3}, Landroid/app/Notification$Builder;->-wrap15(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    const-string/jumbo v2, "android.bigText"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-eqz v2, :cond_26

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_26
    const-string/jumbo v2, "android.text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_2d
    iget-boolean v2, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    invoke-static {p1, v1, v2}, Landroid/app/Notification$Builder;->-wrap15(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2

    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    return-object p0
.end method

.method final reset()Landroid/app/Notification$StandardTemplateParams;
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2

    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2

    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    return-object p0
.end method
