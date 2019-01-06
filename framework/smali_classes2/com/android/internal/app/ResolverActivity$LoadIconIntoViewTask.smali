.class Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;
.super Lcom/android/internal/app/ResolverActivity$LoadIconTask;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconIntoViewTask"
.end annotation


# instance fields
.field private final mTargetView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
