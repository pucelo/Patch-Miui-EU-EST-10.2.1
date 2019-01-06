.class Lcom/android/internal/app/PlatLogoActivity$2$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/PlatLogoActivity$2;

.field final synthetic val$im:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity$2;Landroid/widget/ImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$2;

    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$2$1;->val$im:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 8

    const-wide/16 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$2$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$2;

    iget-object v2, v2, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v2, v2, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_d

    const/4 v2, 0x0

    return v2

    :cond_d
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$2$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$2;

    iget-object v2, v2, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "egg_mode"

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2a

    :try_start_20
    const-string/jumbo v2, "egg_mode"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_2a} :catch_36

    :cond_2a
    :goto_2a
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$2$1;->val$im:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/internal/app/PlatLogoActivity$2$1$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/PlatLogoActivity$2$1$1;-><init>(Lcom/android/internal/app/PlatLogoActivity$2$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x1

    return v2

    :catch_36
    move-exception v1

    const-string/jumbo v2, "PlatLogoActivity"

    const-string/jumbo v3, "Can\'t write settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method
