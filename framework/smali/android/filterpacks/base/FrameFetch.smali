.class public Landroid/filterpacks/base/FrameFetch;
.super Landroid/filterfw/core/Filter;
.source "FrameFetch.java"


# instance fields
.field private mFormat:Landroid/filterfw/core/FrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "format"
    .end annotation
.end field

.field private mKey:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "key"
    .end annotation
.end field

.field private mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/base/FrameFetch;->mRepeatFrame:Z

    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 4

    iget-object v1, p0, Landroid/filterpacks/base/FrameFetch;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/filterfw/core/FilterContext;->fetchFrame(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string/jumbo v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/FrameFetch;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    iget-boolean v1, p0, Landroid/filterpacks/base/FrameFetch;->mRepeatFrame:Z

    if-nez v1, :cond_18

    const-string/jumbo v1, "frame"

    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameFetch;->closeOutputPort(Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    const/16 v1, 0xfa

    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameFetch;->delayNextProcess(I)V

    goto :goto_18
.end method

.method public setupPorts()V
    .registers 3

    const-string/jumbo v1, "frame"

    iget-object v0, p0, Landroid/filterpacks/base/FrameFetch;->mFormat:Landroid/filterfw/core/FrameFormat;

    if-nez v0, :cond_f

    invoke-static {}, Landroid/filterfw/core/FrameFormat;->unspecified()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    :goto_b
    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/FrameFetch;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void

    :cond_f
    iget-object v0, p0, Landroid/filterpacks/base/FrameFetch;->mFormat:Landroid/filterfw/core/FrameFormat;

    goto :goto_b
.end method
