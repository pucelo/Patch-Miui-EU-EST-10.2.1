.class final Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;
.super Landroid/util/FloatProperty;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)Ljava/lang/Float;
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;->get(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;F)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setAlpha(F)Z

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;->setValue(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;F)V

    return-void
.end method
