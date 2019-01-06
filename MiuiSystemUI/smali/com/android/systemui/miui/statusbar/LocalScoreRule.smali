.class public Lcom/android/systemui/miui/statusbar/LocalScoreRule;
.super Ljava/lang/Object;
.source "LocalScoreRule.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public score:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;

    iget v3, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->score:I

    iget v4, v0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->score:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    :cond_4
    return v2

    :cond_5
    iget-object v3, v0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_7
    :goto_0
    return v1

    :cond_8
    iget-object v3, v0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v2, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->score:I

    add-int v0, v1, v2

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LocalScoreRule{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
