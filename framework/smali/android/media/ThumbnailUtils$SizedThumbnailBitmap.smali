.class Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ThumbnailUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizedThumbnailBitmap"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mThumbnailData:[B

.field public mThumbnailHeight:I

.field public mThumbnailWidth:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>()V

    return-void
.end method
