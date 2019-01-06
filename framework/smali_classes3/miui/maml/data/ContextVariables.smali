.class public Lmiui/maml/data/ContextVariables;
.super Ljava/lang/Object;
.source "ContextVariables.java"


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v2

    :cond_a
    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-nez v1, :cond_f

    return-object v2

    :cond_f
    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v2

    :cond_a
    instance-of v1, v0, Ljava/lang/Double;

    if-nez v1, :cond_f

    return-object v2

    :cond_f
    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v2

    :cond_a
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_f

    return-object v2

    :cond_f
    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v2

    :cond_a
    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_f

    return-object v2

    :cond_f
    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v2

    :cond_a
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_13

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_13
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVar(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setVar(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
