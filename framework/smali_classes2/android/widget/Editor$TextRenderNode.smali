.class Landroid/widget/Editor$TextRenderNode;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextRenderNode"
.end annotation


# instance fields
.field isDirty:Z

.field renderNode:Landroid/view/RenderNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    return-void
.end method


# virtual methods
.method needsRecord()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method
