.class public Landroid/graphics/improve/KingSoftBitmapImprove;
.super Ljava/lang/Object;
.source "KingSoftBitmapImprove.java"

# interfaces
.implements Landroid/graphics/improve/BitmapImproveAble;


# static fields
.field private static final CLASS_AIKIT:Ljava/lang/String; = "com.ksyun.ai.sr.ImageAIKit"

.field private static final CLASS_CONST:Ljava/lang/String; = "com.ksyun.ai.sr.Constants"


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
    iget-object v2, p0, Landroid/graphics/improve/KingSoftBitmapImprove;->processImage:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget v4, p0, Landroid/graphics/improve/KingSoftBitmapImprove;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1a} :catch_1f
    .catchall {:try_start_2 .. :try_end_1a} :catchall_28

    :try_start_1a
    invoke-virtual {p0}, Landroid/graphics/improve/KingSoftBitmapImprove;->release()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2d

    monitor-exit p0

    return-object v1

    :catch_1f
    move-exception v0

    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_28

    :try_start_23
    invoke-virtual {p0}, Landroid/graphics/improve/KingSoftBitmapImprove;->release()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2d

    monitor-exit p0

    return-object v6

    :catchall_28
    move-exception v2

    :try_start_29
    invoke-virtual {p0}, Landroid/graphics/improve/KingSoftBitmapImprove;->release()V

    throw v2
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public init(Landroid/content/Context;I)Z
    .registers 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_2
    const-string/jumbo v3, "com.ksyun.ai.sr.Constants"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "com.ksyun.ai.sr.ImageAIKit"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "MODEL_TYPE_2X"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/graphics/improve/KingSoftBitmapImprove;->mType:I

    const-string/jumbo v3, "processImage"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/improve/KingSoftBitmapImprove;->processImage:Ljava/lang/reflect/Method;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3a} :catch_3b

    return v8

    :catch_3b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v7
.end method

.method public release()V
    .registers 1

    return-void
.end method
