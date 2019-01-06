.class public Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;
.super Ljava/lang/Object;
.source "DefaultExceptionContext.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x132dd72L


# instance fields
.field private final contextValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;
    .registers 5

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    new-instance v1, Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/miui/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    move-result-object v0

    return-object v0
.end method

.method public getContextEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    return-object v0
.end method

.method public getContextLabels()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/miui/commons/lang3/tuple/Pair;

    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method public getContextValues(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/miui/commons/lang3/tuple/Pair;

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {p1, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2b
    return-object v2
.end method

.method public getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    iget-object v2, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/miui/commons/lang3/tuple/Pair;

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lorg/apache/miui/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_23
    const/4 v2, 0x0

    return-object v2
.end method

.method public getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v7, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_92

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1f

    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1f
    const-string/jumbo v7, "Exception Context:\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v7, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/miui/commons/lang3/tuple/Pair;

    const-string/jumbo v7, "\t["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6a

    const-string/jumbo v7, "null"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_63
    const-string/jumbo v7, "]\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_6a
    :try_start_6a
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_72

    move-result-object v6

    :goto_6e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    :catch_72
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception thrown on toString(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6e

    :cond_8c
    const-string/jumbo v7, "---------------------------------"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;
    .registers 6

    iget-object v2, p0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->contextValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/miui/commons/lang3/tuple/Pair;

    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lorg/apache/miui/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_22
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    return-object p0
.end method

.method public bridge synthetic setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    move-result-object v0

    return-object v0
.end method
