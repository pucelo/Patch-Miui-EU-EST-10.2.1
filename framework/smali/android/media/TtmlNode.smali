.class Landroid/media/TtmlNode;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# instance fields
.field public final mAttributes:Ljava/lang/String;

.field public final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TtmlNode;",
            ">;"
        }
    .end annotation
.end field

.field public final mEndTimeMs:J

.field public final mName:Ljava/lang/String;

.field public final mParent:Landroid/media/TtmlNode;

.field public final mRunId:J

.field public final mStartTimeMs:J

.field public final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    iput-object p1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/TtmlNode;->mAttributes:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    iput-wide p4, p0, Landroid/media/TtmlNode;->mStartTimeMs:J

    iput-wide p6, p0, Landroid/media/TtmlNode;->mEndTimeMs:J

    iput-object p8, p0, Landroid/media/TtmlNode;->mParent:Landroid/media/TtmlNode;

    iput-wide p9, p0, Landroid/media/TtmlNode;->mRunId:J

    return-void
.end method


# virtual methods
.method public isActive(JJ)Z
    .registers 10

    const/4 v0, 0x0

    iget-wide v2, p0, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long v1, v2, p1

    if-lez v1, :cond_e

    iget-wide v2, p0, Landroid/media/TtmlNode;->mStartTimeMs:J

    cmp-long v1, v2, p3

    if-gez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method
