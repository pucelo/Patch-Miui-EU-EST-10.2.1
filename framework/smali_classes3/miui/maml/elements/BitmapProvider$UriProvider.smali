.class Lmiui/maml/elements/BitmapProvider$UriProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Uri"


# instance fields
.field private mCachedBitmapUri:Ljava/lang/String;

.field private mCurLoadingBitmapUri:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/BitmapProvider;->finish()V

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

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
    .registers 9

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v1

    :cond_f
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_27

    :cond_1d
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_48

    :cond_27
    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2a
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;

    new-instance v1, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;

    invoke-direct {v1, p0, p1, p3, p4}, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;-><init>(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;II)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_47
    .catchall {:try_start_2a .. :try_end_47} :catchall_50

    :cond_47
    monitor-exit v2

    :cond_48
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v1

    :catchall_50
    move-exception v1

    monitor-exit v2

    throw v1
.end method
