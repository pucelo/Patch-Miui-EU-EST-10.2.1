.class final Lorg/apache/miui/commons/lang3/AnnotationUtils$1;
.super Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
.source "AnnotationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/miui/commons/lang3/AnnotationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setDefaultFullDetail(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setArrayContentDetail(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setUseClassName(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setUseShortClassName(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setUseIdentityHashCode(Z)V

    const-string/jumbo v0, "("

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setContentStart(Ljava/lang/String;)V

    const-string/jumbo v0, ")"

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setContentEnd(Ljava/lang/String;)V

    const-string/jumbo v0, ", "

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setFieldSeparator(Ljava/lang/String;)V

    const-string/jumbo v0, "["

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setArrayStart(Ljava/lang/String;)V

    const-string/jumbo v0, "]"

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setArrayEnd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    instance-of v0, p3, Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_a

    check-cast p3, Ljava/lang/annotation/Annotation;

    invoke-static {p3}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->toString(Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object p3

    :cond_a
    invoke-super {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const-class v4, Ljava/lang/annotation/Annotation;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v1, v2

    move-object v0, v2

    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    if-nez v0, :cond_35

    const-string/jumbo v4, ""

    :goto_26
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v6, 0x40

    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_35
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_26
.end method
