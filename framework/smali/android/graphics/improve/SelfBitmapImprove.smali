.class public Landroid/graphics/improve/SelfBitmapImprove;
.super Ljava/lang/Object;
.source "SelfBitmapImprove.java"

# interfaces
.implements Landroid/graphics/improve/BitmapImproveAble;


# static fields
.field private static final CLASS_MODELS:Ljava/lang/String; = "com.xiaomi.sr.models.MaceSRModel"


# instance fields
.field private mType:I

.field private processImage:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public improveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/graphics/improve/SelfBitmapImprove;->processImage:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget v4, p0, Landroid/graphics/improve/SelfBitmapImprove;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1f
    .catchall {:try_start_2 .. :try_end_1a} :catchall_28

    :try_start_1a
    invoke-virtual {p0}, Landroid/graphics/improve/SelfBitmapImprove;->release()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2d

    monitor-exit p0

    return-object v1

    :catch_1f
    move-exception v0

    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_28

    :try_start_23
    invoke-virtual {p0}, Landroid/graphics/improve/SelfBitmapImprove;->release()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2d

    monitor-exit p0

    return-object v6

    :catchall_28
    move-exception v2

    :try_start_29
    invoke-virtual {p0}, Landroid/graphics/improve/SelfBitmapImprove;->release()V

    throw v2
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public init(Landroid/content/Context;I)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_2
    const-string/jumbo v2, "com.xiaomi.sr.models.MaceSRModel"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput p2, p0, Landroid/graphics/improve/SelfBitmapImprove;->mType:I

    const-string/jumbo v2, "processImage"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/improve/SelfBitmapImprove;->processImage:Ljava/lang/reflect/Method;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_22

    return v7

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v6
.end method

.method public release()V
    .registers 1

    return-void
.end method
