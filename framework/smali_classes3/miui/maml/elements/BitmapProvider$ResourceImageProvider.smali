.class Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceImageProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ResourceImage"


# instance fields
.field private mAsyncLoadListener:Lmiui/maml/ResourceManager$AsyncLoadListener;

.field private mCachedBitmapName:Ljava/lang/String;

.field mLoadingBitmapName:Ljava/lang/String;

.field mSrcNameLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    new-instance v0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;

    invoke-direct {v0, p0}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;-><init>(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;)V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mAsyncLoadListener:Lmiui/maml/ResourceManager$AsyncLoadListener;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/BitmapProvider;->finish()V

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_13

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 10

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v3}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_19

    :cond_f
    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_30

    :cond_19
    if-eqz p2, :cond_36

    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v3, p1}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v1

    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    if-nez v1, :cond_33

    :goto_2b
    invoke-virtual {v3, v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    :cond_30
    :goto_30
    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v2

    :cond_33
    iget-object v2, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_2b

    :cond_36
    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mAsyncLoadListener:Lmiui/maml/ResourceManager$AsyncLoadListener;

    invoke-virtual {v3, p1, v4}, Lmiui/maml/ResourceManager;->getBitmapInfoAsync(Ljava/lang/String;Lmiui/maml/ResourceManager$AsyncLoadListener;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v1

    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v1, :cond_4f

    :try_start_49
    iget-boolean v4, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mLoading:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_60

    :cond_4f
    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    if-nez v1, :cond_5d

    :goto_53
    invoke-virtual {v4, v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;
    :try_end_5b
    .catchall {:try_start_49 .. :try_end_5b} :catchall_63

    :goto_5b
    monitor-exit v3

    goto :goto_30

    :cond_5d
    :try_start_5d
    iget-object v2, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_53

    :cond_60
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_63

    goto :goto_5b

    :catchall_63
    move-exception v2

    monitor-exit v3

    throw v2
.end method
