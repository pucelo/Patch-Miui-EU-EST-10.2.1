.class public abstract Lmiui/maml/elements/BitmapProvider;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/BitmapProvider$AppIconProvider;,
        Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;,
        Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;,
        Lmiui/maml/elements/BitmapProvider$FileSystemProvider;,
        Lmiui/maml/elements/BitmapProvider$IBitmapHolder;,
        Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;,
        Lmiui/maml/elements/BitmapProvider$UriProvider;,
        Lmiui/maml/elements/BitmapProvider$VersionedBitmap;,
        Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BitmapProvider"


# instance fields
.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field protected mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-void
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .registers 10

    const/4 v0, 0x1

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v1

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v6, v1

    mul-double/2addr v4, v6

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    :goto_e
    mul-int/lit8 v1, v0, 0x2

    int-to-double v4, v1

    cmpg-double v1, v4, v2

    if-gtz v1, :cond_18

    mul-int/lit8 v0, v0, 0x2

    goto :goto_e

    :cond_18
    return v0
.end method

.method public static create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;
    .registers 6

    const-string/jumbo v2, "ResourceImage"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_f
    const-string/jumbo v2, "VirtualScreen"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    new-instance v2, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_1e
    const-string/jumbo v2, "ApplicationIcon"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v2, Lmiui/maml/elements/BitmapProvider$AppIconProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$AppIconProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_2d
    const-string/jumbo v2, "FileSystem"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    new-instance v2, Lmiui/maml/elements/BitmapProvider$FileSystemProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$FileSystemProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_3c
    const-string/jumbo v2, "Uri"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    new-instance v2, Lmiui/maml/elements/BitmapProvider$UriProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$UriProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_4b
    const-string/jumbo v2, "BitmapHolder"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5a

    new-instance v2, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_5a
    const-string/jumbo v2, "BitmapVar"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_69

    new-instance v2, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2

    :cond_69
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    const-string/jumbo v3, "BitmapProvider"

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lmiui/maml/ObjectFactory;

    move-result-object v0

    check-cast v0, Lmiui/maml/ObjectFactory$BitmapProviderFactory;

    if-eqz v0, :cond_7f

    invoke-virtual {v0, p0, p1}, Lmiui/maml/ObjectFactory$BitmapProviderFactory;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v1

    if-eqz v1, :cond_7f

    return-object v1

    :cond_7f
    new-instance v2, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v2, p0}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-object v2
.end method


# virtual methods
.method public finish()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    return-void
.end method

.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v0
.end method

.method protected getBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .registers 12

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    iget-object v5, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-lez p2, :cond_4f

    if-lez p3, :cond_4f

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_5b
    .catchall {:try_start_4 .. :try_end_1d} :catchall_6c

    const/4 v5, 0x1

    :try_start_1e
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    mul-int v5, p2, p3

    invoke-static {v4, v5}, Lmiui/maml/elements/BitmapProvider;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput p3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v5, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_47} :catch_77
    .catchall {:try_start_1e .. :try_end_47} :catchall_74

    move-result-object v5

    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v5

    :cond_4f
    const/4 v5, 0x0

    :try_start_50
    invoke-static {v1, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_5b
    .catchall {:try_start_50 .. :try_end_53} :catchall_6c

    move-result-object v5

    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v5

    :catch_5b
    move-exception v0

    :goto_5c
    :try_start_5c
    const-string/jumbo v5, "BitmapProvider"

    const-string/jumbo v6, "getBitmapFromUri Exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_6c

    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v7

    :catchall_6c
    move-exception v5

    :goto_6d
    invoke-static {v1}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v5

    :catchall_74
    move-exception v5

    move-object v3, v4

    goto :goto_6d

    :catch_77
    move-exception v0

    move-object v3, v4

    goto :goto_5c
.end method

.method public init(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0}, Lmiui/maml/elements/BitmapProvider;->reset()V

    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method
