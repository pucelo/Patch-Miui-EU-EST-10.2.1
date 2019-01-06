.class Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;
.super Ljava/lang/Object;
.source "BitmapProvider.java"

# interfaces
.implements Lmiui/maml/ResourceManager$AsyncLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;


# direct methods
.method constructor <init>(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Ljava/lang/String;Lmiui/maml/ResourceManager$BitmapInfo;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v1, v1, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v2, v2, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string/jumbo v2, "BitmapProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "load image async complete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " last cached "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-static {v4}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->-get0(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v2, v2, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    if-nez p2, :cond_57

    :goto_41
    invoke-virtual {v2, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-static {v0, p1}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->-set0(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    const/4 v2, 0x0

    iput-object v2, v0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_6 .. :try_end_4e} :catchall_84

    :goto_4e
    monitor-exit v1

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v0, v0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    return-void

    :cond_57
    :try_start_57
    iget-object v0, p2, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_41

    :cond_5a
    const-string/jumbo v0, "BitmapProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load image async complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not equals "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$1:Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v3, v3, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_57 .. :try_end_83} :catchall_84

    goto :goto_4e

    :catchall_84
    move-exception v0

    monitor-exit v1

    throw v0
.end method
