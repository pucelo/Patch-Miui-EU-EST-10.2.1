.class final Landroid/view/textclassifier/EntityConfidence;
.super Ljava/lang/Object;
.source "EntityConfidence.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mEntityComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mEntityConfidence:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    new-instance v0, Landroid/view/textclassifier/-$Lambda$YdZbAd6a5x_pMw8WtGLtYRkzJSM;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/view/textclassifier/-$Lambda$YdZbAd6a5x_pMw8WtGLtYRkzJSM;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/view/textclassifier/EntityConfidence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/EntityConfidence",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    new-instance v0, Landroid/view/textclassifier/-$Lambda$YdZbAd6a5x_pMw8WtGLtYRkzJSM;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/view/textclassifier/-$Lambda$YdZbAd6a5x_pMw8WtGLtYRkzJSM;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityComparator:Ljava/util/Comparator;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    iget-object v1, p1, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getConfidenceScore(Ljava/lang/Object;)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public getEntities()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityComparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$-android_view_textclassifier_EntityConfidence_1225(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    iget-object v2, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1e

    const/4 v2, -0x1

    return v2

    :cond_1e
    cmpg-float v2, v0, v1

    if-gez v2, :cond_24

    const/4 v2, 0x1

    return v2

    :cond_24
    const/4 v2, 0x0

    return v2
.end method

.method public setEntityType(Ljava/lang/Object;F)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_18

    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
