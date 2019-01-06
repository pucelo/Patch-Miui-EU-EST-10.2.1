.class public Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
.super Ljava/lang/Object;
.source "DividerSnapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapTarget"
.end annotation


# instance fields
.field private final distanceMultiplier:F

.field public final flag:I

.field public position:I

.field public taskPosition:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->distanceMultiplier:F

    return v0
.end method

.method public constructor <init>(III)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    iput p2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->taskPosition:I

    iput p3, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->flag:I

    iput p4, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->distanceMultiplier:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " taskPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->taskPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " distanceMultiplier "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->distanceMultiplier:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
